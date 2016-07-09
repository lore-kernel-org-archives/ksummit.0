Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 109DC8D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 00:06:52 +0000 (UTC)
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 91353A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 00:06:51 +0000 (UTC)
Received: by mail-pa0-f68.google.com with SMTP id us13so8979498pab.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 08 Jul 2016 17:06:51 -0700 (PDT)
Date: Fri, 8 Jul 2016 17:06:48 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20160709000648.GG28589@dtor-ws>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <2544945.WExZRG40u7@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2544945.WExZRG40u7@vostro.rjw.lan>
Cc: ksummit-discuss@lists.linux-foundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 09, 2016 at 01:52:19AM +0200, Rafael J. Wysocki wrote:
> On Friday, July 08, 2016 04:12:14 PM Guenter Roeck wrote:
> > On 07/08/2016 03:35 PM, Jiri Kosina wrote:
> > > Yeah, this topic again. It'd be a sad year on ksummit-discuss@ without it,
> > > wouldn't it? :)
> > >
> > > As a SUSE Enterprise Linux kernel maintainer, stable kernel is one of the
> > > crucial elements I rely on (and I also try to make sure that SUSE
> > > contributes back as much as possible).
> > >
> > > Hence any planned changes in the workflow / releases are rather essential
> > > for me, and I'd like to participate, should any such discussion take
> > > place.
> > >
> > 
> > Same here. New employer, lots of unhappiness with stable releases, to the point
> > where stable trees are not used as basis for shipping releases.
> > That kind of defeats the purpose. So, instead of "let's ignore stable",
> > maybe we can get to a point where people feel comfortable with the quality
> > of stable releases, and where stable can actually be used as basis for production
> > releases.
> > 
> > > In addition to that, I'd again (like during the past 5+ years, but it
> > > never really happened) like to propose a stable tree discussion topic: I'd
> > > like to see an attempt to make the stable workflow more oriented towards
> > > "maintainers sending pull requests" rather than "random people pointing to
> > > patches that should go to stable". This has been much of an issue in the
> > 
> > Sounds like an excellent idea.

I am not sure if that will work well for everyone. I can not keep track
and prepare pull requests for all stable releases out there. Everyone
and their dog has a stable release nowadays. If they copy me on a patch
they want to include and I see an issue with it I'll drop them a note,
but that is it.

> 
> I'm wondering if anyone can tell what fraction of stable regressions come
> from commits marked with the "Cc: stable" tag by the maintainers in the first
> place.

Also, do we have many changes that go to stable without maintainers
actually adding cc: stable annotation in mainline?

> 
> If that fraction is significant, then I'm afraid it won't help to ask
> maintainers to send pull requests to stable and it will affect their
> bandwidth (sort of limited already).
> 
> To me, the source of the problem is that sometimes it really is hard to see
> the "regression potential" upfront, so to speak, and when the commit gets into
> stable, it's already too late.
> 
> And honestly, the "we don't revert things from stable if the mainline hasn't
> reverted them yet" policy doesn't really help, because the mainline may choose
> to fix the problem instead of reverting and that may take time and while the
> mainline fix is happily being worked on, the users of stable are sort of left
> in the cold with code that doesn't work.  And it may go like that for weeks
> in extreme cases.

This is especially true if such regression introduced in latest mainline
stays in older stable tree. It would be better to revert such
regressions right away and then, if mainline adopts a fix rather than
revert, re-cherry-pick along with the fix.

Thanks.

-- 
Dmitry
