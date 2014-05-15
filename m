Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 891044D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:42:35 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 524F0200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:42:35 +0000 (UTC)
Message-ID: <53751887.1040809@zytor.com>
Date: Thu, 15 May 2014 12:41:59 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Li Zefan <lizefan@huawei.com>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<5372D6E4.2080009@huawei.com>
In-Reply-To: <5372D6E4.2080009@huawei.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/13/2014 07:37 PM, Li Zefan wrote:
> 
> Mel has recently working on a patchset for mm optimization, and I
> just noticed one particular patch adds static_key to eliminate cpuset
> overhead in mm code path. We sure can use static_key more in cgroup.
> 
> New features tend to add new stuff to structures like task_struct, which
> static_key or any other mechanisms can't help.
> 

Not to mention that static_key does nothing in a ROM-size-limited
application.

I think kernel tinification and what should be acceptable goals and
non-goals for the mainline kernel would make an excellent KS topic.
Personally, I am for stretching Linux as far across the compute spectrum
as it can possibly go.

	-hpa
