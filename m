Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2EEDC1457
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:57:33 +0000 (UTC)
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6B43102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:57:32 +0000 (UTC)
Received: by mail-io0-f194.google.com with SMTP id q5-v6so4470659iop.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:57:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180911144538.3ceecd8d@vmware.local.home>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<20180911144538.3ceecd8d@vmware.local.home>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 11 Sep 2018 20:57:30 +0200
Message-ID: <CAKMK7uEhoQ_bq9u3fJu-9PrpEH1iJWqBHbDDS9_LJ0tg8mmA_g@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 8:45 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Tue, 11 Sep 2018 10:02:12 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
>
>> FWIW, for the most part I stopped reporting issues with -next after some people
>> yelled at me for the 'noise' I was creating. Along the line of "This has been
>> fixed in branch xxx; why don't you do your homework and check there", with
>> branch xxx not even being in -next. I don't mind "this has already been
>> reported/fixed", quite the contrary, but the "why don't you do your homework"
>> got me over the edge.
>
> A bug reporter should never be yelled at. The correct response should
> be "Thank you for the report, but we have already fixed that bug in XYZ
> branch, would you mind testing that?"
>
> That's how I respond to such reports.
>
> I've been told that yelling is never appropriate (although I may not
> totally agree with that statement), but nasty messages to people
> reporting bugs to your code (regardless if it's fixed or not someplace
> else) is totally uncalled for.

I don't report bugs if there's any yelling involved, period.

It's not fun, and me not being the direct target doesn't make it
better really. The other bit is also that the risk of yelling sends at
least some people into panic mode, and that's the last you need when
trying to get some tricky bug fixed. A maintainer who's brain is busy
freaking out about Linus jumping at them, when you need 100% of their
brain to understand the bug, is just plain not much use. E.g. I
stopped calling regressions regressions, exactly to avoid the panic
reaction and yelling. And for some subsystems I outright stopped
reporting issues, because stuffing a small fixup patch into our local
tree and maintaining it forever is less headaches than the shouting
and yelling the report will cause. Note: There's also other reasons we
have patches in our local fixup tree, so don't go looking there now
and shredding the involved subsystem maintainers, pls.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
