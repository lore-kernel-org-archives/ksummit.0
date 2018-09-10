Return-Path: <seanpaul@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF0D21399
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:09:43 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 210FC766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:09:43 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id u1-v6so17636724eds.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 14:09:42 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
	[209.85.221.45]) by smtp.gmail.com with ESMTPSA id
	b58-v6sm14423376ede.37.2018.09.10.14.09.40
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Sep 2018 14:09:40 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id e1-v6so14367089wrt.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 14:09:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
	<2620504.doLR7ekjFm@avalon>
In-Reply-To: <2620504.doLR7ekjFm@avalon>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 10 Sep 2018 17:09:02 -0400
Message-ID: <CAOw6vbJq=aHrwgCKDACEm01Wz_4zs-Trpb1U8SXzmLkyH2PtRQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James.Bottomley@hansenpartnership.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 4:15 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Monday, 10 September 2018 18:13:05 EEST Jiri Kosina wrote:
> > On Mon, 10 Sep 2018, James Bottomley wrote:
> > >    1. How do reviews happen?  Non email projects tend to have only one
> > >       review mechanism (gerrit, github, gitlab, etc.) and stick to it.  Do
> > >       we want to pick a technology or allow multiple?  I don't think this
> > >       is kernel wide, it could be a sybsystem choice.
> >
> > Yeah, but OTOH even now I've heard a lot of feedback about the irregular
> > contributors / newcomers being confused by different subsystems having
> > different processess and requirements; and those are basically just rather
> > "minor" things currently (bugzilla usage, patchwork usage, subscriber-only
> > mailinglists, etc), but it's still enough to confuse the hell out of
> > people.
>
> That's also one of my concerns. The differences between subsystems that all
> use an email-based review process can already be confusing, or just annoying
> to handle, especially when specific tools are mandated (the DRM dim tool or
> the ARM patch system come to mind). I dread to think about how painful it
> would be if one subsystem adopted gitlab, another one gerrit, ...

The other way to look at this is as a feature, not a bug. As mentioned
upthread, each subsystem is essentially its own oss project at this
point, so why keep pretending they're all the same thing? At least in
the gitlab/gerrit/github nightmare, the differing contributing rules
would be obvious as opposed to implicit as they are today.


> That would
> also make changes that cross subsystem boundaries a nightmare to handle. Let's
> not forget that many developers are not confined within a single subsystem.

Well, yeah, this kind of blows a hole in what I said above. I'm
imagining Kees crying out in pain thinking about tree-wide changes in
this new world :-).

That said, there's probably a pretty good middle ground between what
we have now and the gitlab utopia.

Sean

>
> On the other hand, I don't really see how switching the whole kernel to gitlab
> (or another system) could happen without frustrating a very large number of
> developers. We all know how conservative the community tend to be.
>
> One possible course of action would be to make the new tools optional and keep
> email as a common denominator. That way the old dinosaurs who won't adopt any
> tool introducing even the slightest disturbance in their work flow (it's not
> pleasant to realize that I may well be one of them) will still be able to work
> undisturbed, and all the other developers would be able to enjoy the myriad of
> amazing features offered by their tooling of choice. This would however put an
> extra burden on the new tools that would need to have first-class email
> compatibility. I don't know whether that would be feasible.
>
> --
> Regards,
>
> Laurent Pinchart
>
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
