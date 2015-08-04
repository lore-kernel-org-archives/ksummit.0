Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 855197AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:03:20 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5788210A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:03:19 +0000 (UTC)
Date: Tue, 4 Aug 2015 20:03:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <CAKdAkRTcHXjb+R=AkmzxRgn14FkPEi2B3ePAK2W4_yQnrrNnxQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1508042000430.2327@hadrien>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
	<alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
	<20150804125556.GA5180@mwanda>
	<CAKdAkRTcHXjb+R=AkmzxRgn14FkPEi2B3ePAK2W4_yQnrrNnxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-951857531-1438711392=:2327"
Cc: Shuah Khan <shuah.kh@samsung.com>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-951857531-1438711392=:2327
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 4 Aug 2015, Dmitry Torokhov wrote:

>
>
> On Tue, Aug 4, 2015 at 5:55 AM, Dan Carpenter <dan.carpenter@oracle.com>
> wrote:
>       On Sat, Aug 01, 2015 at 01:21:09PM +0200, Julia Lawall wrote:
>       > Currently, is there any documentation about when these
>       functions can be
>       > used?  All I remember seeing is a discussion of what the
>       functions do and
>       > what functions are available.  But nothing about when they
>       should and
>       > should not be used.
>       >
>
>       The documentation for devm_kmalloc() doesn't list common
>       pitfalls.  The
>       other big one which should be obvious, but happens often is
>       freeing
>       devm_ memory with kfree().
>
>       /**
>        * devm_kmalloc - Resource-managed kmalloc
>        * @dev: Device to allocate memory for
>        * @size: Allocation size
>        * @gfp: Allocation gfp flags
>        *
>        * Managed kmalloc.  Memory allocated with this function is
>        * automatically freed on driver detach.  Like all other devres
>        * resources, guaranteed alignment is unsigned long long.
>        *
>        * RETURNS:
>        * Pointer to allocated memory on success, NULL on failure.
>        */
>
>  
> I wonder if it would be possible to note that the current thread is going
> through probe() or remove() code path in driver core and scream if we
> encounter devm* call outside of such path. That will give false positives in
> cases when there is a legitimate mix of automatic and manual resource
> management (i.e. you rely on automatic cleanup in probe()/remove() but need
> to free/reallocate object somewhere else), but we can create another call
> for that.

This seems easy to do with Coccinelle, at least with respect to the
functions in a single file.  I guess it doesn't solve the file operations
problem, though?

julia
--8323329-951857531-1438711392=:2327--
