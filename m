Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3616B927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:04:00 +0000 (UTC)
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC34A1FD44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:03:59 +0000 (UTC)
Received: by mail-qc0-f173.google.com with SMTP id r5so5276425qcx.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 12:03:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5363E8E1.9030806@zytor.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike> <20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date: Fri, 2 May 2014 21:03:38 +0200
Message-ID: <CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
Reply-To: mtk.manpages@gmail.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 2, 2014 at 8:50 PM, H. Peter Anvin <hpa@zytor.com> wrote:
> On 05/02/2014 10:46 AM, Josh Boyer wrote:
>>
>> To mitigate that some, new syscalls could be added with CONFIG
>> wrappers that default to disabled.  The userbases can't use something
>> that isn't explicitly turned on, and people would likely need to
>> request those syscalls.  It would give the distros at least a measure
>> of how frequently that new syscall would be used, and in what
>> situations.
>>
>
> In practice that is equivalent to not having the syscall at all.

Amen!

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
