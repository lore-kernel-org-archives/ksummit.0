Return-Path: <urezki@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7089927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jun 2019 12:05:22 +0000 (UTC)
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E62B082B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jun 2019 12:05:21 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y198so916424lfa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 02 Jun 2019 05:05:21 -0700 (PDT)
From: Uladzislau Rezki <urezki@gmail.com>
Date: Sun, 2 Jun 2019 14:05:10 +0200
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20190602120510.sivqftjj6fg7s5q3@pc636>
References: <20190530060552.GA30920@mit.edu>
	<CAFhKne9xf-_QbVOkF_qhOBwDX=mn+6BxLBeSTcbxpYUNZERkmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFhKne9xf-_QbVOkF_qhOBwDX=mn+6BxLBeSTcbxpYUNZERkmQ@mail.gmail.com>
Cc: Uladzislau Rezki <urezki@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Reworking of KVA allocator in
 Linux kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello, Matthew.

>
> Vlad, I was under the impression this work was complete.
>
Thank you. Actually there was a discussion once upon a time:

<snip>
I think our real problem is that we have no data structure that stores
free VA space.  We have the vmap_area which stores allocated space, but no
data structure to store free space.
<snip>

and it was a good argument to start to examine the KVA and its problems :)

>
> Are there any remaining issues to discuss?
>
If we have a look at it from issues point of view, then i do not see them.
Though, there are some small things i would like to refactor. For instance
see below:

https://lkml.org/lkml/2019/5/28/1040

Apart from that, there is still a window for improvements. As an example
i would like to reduce a lock contention. In general it means making of
the entire logic faster or/+ reworking of locking. Below the perf output
in case of stressing my box(Intel Xeon 6 physical CPUs, ~3,8Ghz) by running
6 simultaneous pinned jobs which do random allocations:

<snip>
  49.55%  [kernel]               [k] native_queued_spin_lock_slowpath
   7.49%  [kernel]               [k] get_page_from_freelist
   4.65%  [kernel]               [k] alloc_vmap_area
   4.15%  [kernel]               [k] _raw_spin_lock
   4.15%  [kernel]               [k] free_unref_page
   2.80%  [kernel]               [k] __alloc_pages_nodemask
   2.53%  [kernel]               [k] insert_vmap_area.constprop.48
   2.47%  [kernel]               [k] vunmap_page_range
   2.10%  [kernel]               [k] __free_pages
   1.79%  [kernel]               [k] find_vmap_area
   1.66%  [kernel]               [k] vmap_page_range_noflush
   1.29%  [kernel]               [k] alloc_pages_current
   1.28%  [kernel]               [k] __free_vmap_area
   1.25%  [kernel]               [k] prep_new_page
   0.91%  [kernel]               [k] llist_add_batch
   0.87%  [kernel]               [k] free_vmap_area_noflush
   0.79%  [kernel]               [k] __vunmap
   0.67%  [kernel]               [k] free_unref_page_prepare.part.69
   0.60%  [kernel]               [k] _cond_resched
<snip>

See below some proposals:

1) we can maintain the pointer to last area we allocate from to have possibility
of O(1) access to the block if permissive parameters allow that. Something
like this:

<snip>
	if (last_free_area.va && vstart == last_free_area.vstart &&
		align >= last_free_area.align &&
		size >= last_free_area.size)

	/* Use last cached node and do not lookup from the root of the tree */
<snip>

2) Get rid of "busy" tree that stores allocated spaces or replaced it by something
faster. We need it only for mapping va->va_start to vmap_area object when we release it.

3) We can remove vmap_area node from busy tree as soon as an object gets released.
It becomes possible now, because we allocate from another tree. It will improve
insertion time into "busy tree", otherwise it stays there until "lazy" logic removes
it: 

<snip>
@@ -1754,8 +1754,12 @@ void vm_unmap_ram(const void *mem, unsigned int count)
                return;
        }
 
-       va = find_vmap_area(addr);
+       spin_lock(&vmap_area_lock);
+       va = __find_vmap_area(addr);
        BUG_ON(!va);
+       unlink_va(va, &vmap_area_root);
+       spin_unlock(&vmap_area_lock);
+
        debug_check_no_locks_freed((void *)va->va_start,
                                    (va->va_end - va->va_start));
        free_unmap_vmap_area(va);
@@ -2162,6 +2166,7 @@ struct vm_struct *remove_vm_area(const void *addr)
                va->vm = NULL;
                va->flags &= ~VM_VM_AREA;
                va->flags |= VM_LAZY_FREE;
+               unlink_va(va, &vmap_area_root);
                spin_unlock(&vmap_area_lock);
 
                kasan_free_shadow(vm); 
<snip>

All those things could be discussed over lkml. If there are some higher priority
topics to discuss i do not want to waste the time and we can drop my proposal topic
on the Kernel Summit.

--
Vlad Rezki
