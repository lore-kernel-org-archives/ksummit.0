Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 87FCB323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 15:23:40 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86ADE22C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 15:23:39 +0000 (UTC)
To: Alan Stern <stern@rowland.harvard.edu>
References: <Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <f7c305f7-939a-b66c-4d6b-333e41c23017@suse.com>
Date: Tue, 26 Jul 2016 17:23:36 +0200
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Cc: jakub@redhat.com, parri.andrea@gmail.com, j.alglave@ucl.ac.uk,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	ramana.radhakrishnan@arm.com, luc.maranget@inria.fr
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory model,
 using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/26/2016 03:10 PM, Alan Stern wrote:
> On Tue, 26 Jul 2016, Hannes Reinecke wrote:
>
>> I have been playing around with RCUs and memory barriers quite a lot
>> recently, and found some really 'odd' use-cases in the kernel which
>> would benefit from improvements here.
>
> Could you post one or two examples?  It would be interesting to see
> what they involve.
>
I have been working on a performance regression when calling 
'dm_suspend/dm_resume' repeatedly for several (hundreds) devices.
That boiled down to the patch introducing srcu in the device mapper core
with commit 83d5e5b0af907 (dm: optimize use SRCU and RCU).
Looking at it the code they do things like:

	set_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
	if (map)
		synchronize_srcu(&md->io_barrier);

where the srcu is used to ensure the code has left the critical 
sections. However, if the memory pointed to by the srcu isn't actually 
freed why we could easily drop the 'synchronize_srcu' call.
But that would require that
a) the set_bit() above is indeed atomic
and
b) there's no need to call 'synchronize_rcu' if you're not actually 
freeing memory but rather fiddle pointers.
Both are somewhat shady areas where the documentation nor usage reveals 
some obvious insights.

On another example I've been doing performance patches to the lpfc 
driver (cf my talk at VAULT this year), where I've replaced most 
spinlocks with atomics and bitops.
Which should work as well, only that it's still a bit unclear to me
if an when you need barriers in addition to atomic resp bitops.
And if you need barriers, which variant would be most appropriate?
The __before or the __after variant?
Also, what happens to bitops on bitfields longer than an unsigned long?
Are they still atomic?

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
