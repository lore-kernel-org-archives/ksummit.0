Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1E641875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:02:57 +0000 (UTC)
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 863211FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:02:56 +0000 (UTC)
Received: by mail-oa0-f48.google.com with SMTP id i4so4899435oah.21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 12:02:55 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <5363E8E1.9030806@zytor.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
Date: Fri, 2 May 2014 15:02:55 -0400
Message-ID: <CA+5PVA4YM_oVw3QvoAR7EMZjrJg42Sopu3MsfUpkz=fFBdtYAQ@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset=ISO-8859-1
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

On Fri, May 2, 2014 at 2:50 PM, H. Peter Anvin <hpa@zytor.com> wrote:
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

Possibly.  Typical case is that end users won't have those syscalls
enabled and they won't care because nothing is using them.  In the
event that someone introduces something into the distro that does use
it, you'd enable it, etc.  That doesn't help the "one binary doesn't
work on multiple distros" problem though, I guess.

My concern with CONFIG_ROUTER and other target profile variants is
that it seems like an attempt at a system-wide seccomp of sorts, only
via Kconfig options.  You could accomplish similar things with SELinux
or other security modules, so why would we go through the hassle of
bugging people about syscall configs?  I'm also skeptical that a
general purpose distro would actually use anything but the broadest
profile, but I'm not saying they wouldn't be useful.

josh
