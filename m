Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A630FBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:41:43 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A70E87CD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:41:42 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id r196-v6so4289091iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 10:41:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180911173143.GE10123@sirena.org.uk>
References: <20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net> <87k1nsdkl6.fsf@intel.com>
	<20180911173143.GE10123@sirena.org.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 11 Sep 2018 19:41:40 +0200
Message-ID: <CAKMK7uH+TeXzi7GrashWPpop3TQznHbdoPWZHFEyLxASisGk3g@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
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

On Tue, Sep 11, 2018 at 7:31 PM, Mark Brown <broonie@kernel.org> wrote:
> On Tue, Sep 11, 2018 at 08:12:37PM +0300, Jani Nikula wrote:
>> On Tue, 11 Sep 2018, Guenter Roeck <linux@roeck-us.net> wrote:
>
>> > FWIW, for the most part I stopped reporting issues with -next after some people
>> > yelled at me for the 'noise' I was creating. Along the line of "This has been
>> > fixed in branch xxx; why don't you do your homework and check there", with
>> > branch xxx not even being in -next.
>
>> What would be the reason for *not* having all the branches, including
>> fixes, of a subsystem/driver in linux-next? Baffled.
>
> Some people only put things into -next after they've passed QA (like
> Steven's thing about 0day) so you'll see branches that are undergoing QA
> in git before they get merged into the -next branch.

This is why we have a pre-merge CI SLA of mean latency < 6h for the
full pre-merge run. This is from the time your patch hits the m-l to
when the most extensive runs have completed (representing about 1 week
of machine). Early smoke-test results show up much earlier. In
practice this means you're almost always limited by review
turn-around, and not by CI. Exactly to avoid the "the regression fix
is ready except not yet fully tested" issues.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
