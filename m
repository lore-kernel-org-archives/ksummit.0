Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B11ECA01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:46:07 +0000 (UTC)
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 255A7201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:46:07 +0000 (UTC)
Received: by mail-ob0-f173.google.com with SMTP id wm4so2305862obc.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 10:46:06 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20140502173309.GB725@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
Date: Fri, 2 May 2014 13:46:06 -0400
Message-ID: <CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Dave Jones <davej@redhat.com>
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

On Fri, May 2, 2014 at 1:33 PM, Dave Jones <davej@redhat.com> wrote:
> On Fri, May 02, 2014 at 10:20:29AM -0700, James Bottomley wrote:
>
>  > > Something that's partially related here: Making stuff optional
>  > > reduces attack surface the kernel presents. We're starting to grow
>  > > more and more CONFIG options to disable syscalls. I'd like to hear
>  > > peoples reactions on introducing even more optionality in this area.
>  >
>  > My first reaction is reducing the attack surface sounds a reasonable
>  > idea.  My second reaction is that the plural in options makes me want to
>  > run for the hills.  Having a sea of options for enabling and disabling
>  > syscalls gives us the potential for having a set of kernels all with a
>  > slightly differing ABI as people choose what to enable and disable.
>
> Absolutely.  Deciding where the line is between 'core' syscalls, and
> optional ones is the tricky part.
>
>  > If we do this, I think we should have a small number of options related
>  > to use case ... say something like a secure router kernel
>  > CONFIG_SECURE_ROUTER which disables anything a secure router wouldn't
>  > need.
>
> That might be one option.  And have these 'profiles' do select
> WANT_SYS_WHATEVER to reduce #ifdef complexity in the code..
>
>  > For the distros we could have an ordinary and a reduced attack surface
>  > kernel CONFIG_REDUCED_ATTACK_SURFACE.
>
> Speaking from experience, when you have two flavors of something, over
> time things tend to creep.  After a few "I want the reduced kernel but with xyz"
> requests, we're back to where we started, but I can certainly see people
> who do specialized kernels like tails wanting something like this.
>
>  > The thing I really want to avoid is binaries compiled for one distro not
>  > running on another because of syscall differences.
>
> This is one reason I think at least for general purpose distributions,
> this isn't really an option.  Red Hat, SuSE etc _have_ to ship
> remap_file_pages because some tiny percentage of their userbase wants it.

To mitigate that some, new syscalls could be added with CONFIG
wrappers that default to disabled.  The userbases can't use something
that isn't explicitly turned on, and people would likely need to
request those syscalls.  It would give the distros at least a measure
of how frequently that new syscall would be used, and in what
situations.

josh
