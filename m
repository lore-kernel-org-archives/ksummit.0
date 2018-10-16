Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 681A52C0A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 18:57:42 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A611AFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 18:57:41 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id q12-v6so14821198qkl.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 11:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <20181016021254.GA21220@thunk.org>
	<CAKMK7uHxdmJVAtUDWG-=0-qw9RxaW4bONscmbH4PjDZrgYnBqw@mail.gmail.com>
	<1539702797.2805.19.camel@HansenPartnership.com>
	<20181016180010.GC4367@localhost>
	<1539713962.2805.41.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF80523D65@USCULXMSG01.am.sony.com>
	<20181016184604.GB4121@localhost>
In-Reply-To: <20181016184604.GB4121@localhost>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 16 Oct 2018 20:57:29 +0200
Message-ID: <CAKMK7uEFgzeGwsp5HFDEzZTXdsvp2SvLBGNLeBiZdEDmE24Btw@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Tim.Bird@sony.com,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft Maintainer's Summit Agenda and Attendees
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 16, 2018 at 8:48 PM Josh Triplett <josh@joshtriplett.org> wrote:
>
> On Tue, Oct 16, 2018 at 06:38:10PM +0000, Tim.Bird@sony.com wrote:
> > > -----Original Message-----
> > > From: James Bottomley
> > >
> > > On Tue, 2018-10-16 at 11:00 -0700, Josh Triplett wrote:
> > > > On Tue, Oct 16, 2018 at 08:13:17AM -0700, James Bottomley wrote:
> > > > > On Tue, 2018-10-16 at 10:11 +0200, Daniel Vetter wrote:
> > > > > >  And I don't see anyone else from an external community with real
> > > > > > experience (or someone who does consulting in this area) invited
> > > > > > to fill that gap either.
> > > > >
> > > > > I don't buy the narrative that you must be a CoC consultant or
> > > > > implementor to make a difference.
> > > >
> > > > We typically don't make major changes in a specialized domain without
> > > > consulting domain experts, to avoid building a solution that won't
> > > > work or ignores well-known issues in that domain. We wouldn't go off
> > > > and build a virtualization subsystem without consulting
> > > > virtualization experts; we wouldn't build a storage subsystem without
> > > > consulting storage experts; we wouldn't hack on a license without
> > > > consulting legal experts; the same applies here.
> > >
> > > I notice you carefully cut the part about people who've been active in
> > > helping the kernel in this regard already being present;
> >
> > I think that characterizing Joshes response as having "carefully cut" a section
> > has a little more implication of mal intent that I'd prefer.  I think you can reiterate
> > your point about having people there that you consider to be domain experts
> > present, without this.
> >
> > > so we do have
> > > some domain experts ... plus no external ones have actually been
> > > proposed at this point.
> >
> > It seemed pretty obvious to me that Daniel was referring to himself
> > or someone else from the subsystem (DRM?) that's already adopted
> > the CoC.  But a more explicit recommendation (like a candidate name)
> > would add clarity to the discussion.
> >
> > > We also don't usually listen deferentially to domain experts ...
> > > spectre and meltdown would be a case in point here.
> >
> > You don't have to be deferential to domain experts to benefit
> > from their experience.
> >
> > Having said that, I don't think a short face-to-face session is going
> > to yield much in the way changes, and the list of invitees was worked
> > out already over a long period of time.   And as you stated previously
> > there will be other venues (both face-to-face and online) to add input
> > to the process.
> >
> > Personally I don't see much benefit in changing the invitee list at this
> > point, and some dangers.  Not everyone who wants to be there can.
> > That's OK with me.  I'm not invited either.
>
> Thank you, Tim.
>
> I would agree with Tim's point here: I'm not suggesting changing the
> invitee list (other than that I'd hoped to see Daniel going as well),
> I'm suggesting that that invitee list is conducive to discussion but not
> decision, and that those who are there should treat it accordingly (as a
> discussion forum and not a decision forum).

Just to clarify: This ain't about me (I'm booked out already anyway),
but there are a bunch of drm people there already anyway for elc. So
it's definitely not a travel logistics issue, and last year there was
a discussion about whom we're going to volunteer instead of Dave.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
