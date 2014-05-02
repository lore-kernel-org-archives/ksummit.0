Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8FA38875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 18:51:06 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7C7E61FD44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 18:51:05 +0000 (UTC)
Message-ID: <5363E8E1.9030806@zytor.com>
Date: Fri, 02 May 2014 11:50:09 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>, Dave Jones <davej@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>	<20140502171103.GA725@redhat.com>	<1399051229.2202.49.camel@dabdike>	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
In-Reply-To: <CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
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

On 05/02/2014 10:46 AM, Josh Boyer wrote:
> 
> To mitigate that some, new syscalls could be added with CONFIG
> wrappers that default to disabled.  The userbases can't use something
> that isn't explicitly turned on, and people would likely need to
> request those syscalls.  It would give the distros at least a measure
> of how frequently that new syscall would be used, and in what
> situations.
> 

In practice that is equivalent to not having the syscall at all.

	-hpa
