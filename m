Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8AF8026
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 23:48:46 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 74D651FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 23:48:45 +0000 (UTC)
Date: Thu, 22 May 2014 09:48:35 +1000
From: NeilBrown <neilb@suse.de>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140522094835.3bf5ba5a@notabene.brown>
In-Reply-To: <CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521182552.2ed57ad7@notabene.brown>
	<CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/5WWdRfoPCv=X4eRG4fOkbKx";
	protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/5WWdRfoPCv=X4eRG4fOkbKx
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 21 May 2014 08:35:55 -0700 Dan Williams <dan.j.williams@intel.com>
wrote:

> On Wed, May 21, 2014 at 3:11 AM, NeilBrown <neilb@suse.de> wrote:
> > On Wed, 21 May 2014 01:36:55 -0700 Dan Williams <dan.j.williams@intel.c=
om>
> > wrote:
> >
> >> On Wed, May 21, 2014 at 1:25 AM, NeilBrown <neilb@suse.de> wrote:
> >> > On Wed, 21 May 2014 00:48:48 -0700 Dan Williams <dan.j.williams@inte=
l.com>
> >> > wrote:
> >> >
> >> >> On Fri, May 16, 2014 at 8:04 AM, Chris Mason <clm@fb.com> wrote:
> >> >> > -----BEGIN PGP SIGNED MESSAGE-----
> >> >> > Hash: SHA1
> >> >> >
> >> >> > On 05/15/2014 10:56 PM, NeilBrown wrote:
> >> >> >> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams
> >> >> >> <dan.j.williams@gmail.com> wrote:
> >> >> >>
> >> >> >>> What would it take and would we even consider moving 2x faster
> >> >> >>> than we are now?
> >> >> >>
> >> >> >> Hi Dan, you seem to be suggesting that there is some limit other
> >> >> >> than "competent engineering time" which is slowing Linux "progre=
ss"
> >> >> >> down.
> >> >> >>
> >> >> >> Are you really suggesting that?  What might these other limits b=
e?
> >> >> >>
> >> >> >> Certainly there are limits to minimum gap between conceptualisat=
ion
> >> >> >> and release (at least one release cycle), but is there really a
> >> >> >> limit to the parallelism that can be achieved?
> >> >> >
> >> >> > I haven't compared the FB commit rates with the kernel, but I'll
> >> >> > pretend Dan's basic thesis is right and talk about which parts of=
 the
> >> >> > facebook model may move faster than the kernel.
> >> >> >
> >> >> > The facebook is pretty similar to the way the kernel works.  The =
merge
> >> >> > window lasts a few days and the major releases are every week, but
> >> >> > overall it isn't too far away.
> >> >> >
> >> >> > The biggest difference is that we have a centralized tool for
> >> >> > reviewing the patches, and once it has been reviewed by a specific
> >> >> > number of people, you push it in.
> >> >> >
> >> >> > The patch submission tool runs the patch through lint and various
> >> >> > static analysis to make sure it follows proper coding style and
> >> >> > doesn't include patterns of known bugs.  This cuts down on the re=
view
> >> >> > work because the silly coding style mistakes are gone before it g=
ets
> >> >> > to the tool.
> >> >> >
> >> >> > When you put in a patch, you have to put in reviewers, and they g=
et a
> >> >> > little notification that your patch needs review.  Once the revie=
wers
> >> >> > are happy, you push the patch in.
> >> >> >
> >> >> > The biggest difference: there are no maintainers.  If I want to go
> >> >> > change the calendar tool to fix a bug, I patch it, get someone el=
se to
> >> >> > sign off and push.
> >> >> >
> >> >> > All of which is my way of saying the maintainers (me included) ar=
e the
> >> >> > biggest bottleneck.  There are a lot of reasons I think the maint=
ainer
> >> >> > model fits the kernel better, but at least for btrfs I'm trying to
> >> >> > speed up the patch review process and use patchwork more effectiv=
ely.
> >> >>
> >> >> To be clear, I'm not arguing for a maintainer-less model.  We don't
> >> >> have the tooling or operational-data to support that.  We need
> >> >> maintainers to say "no".  But, what I think we can do is give
> >> >> maintainers more varied ways to say it.  The goal, de-escalate the
> >> >> merge event as a declaration that the code quality/architecture
> >> >> conversation is over.
> >> >>
> >> >> Release early, release often, and with care merge often.
> >> >
> >> > I think this falls foul of the "no regressions" rule.
> >> >
> >> > The kernel policy is that once the functionality gets to users, it c=
annot be
> >> > taken away.  Individual drivers in 'staging' manage to avoid this ru=
le
> >> > because that are clearly separate things.
> >> > New system calls and attributes in sysfs etc seem to be much harder =
to
> >> > "partially" release.
> >>
> >> My straw man is something like the following for driver "foo"
> >>
> >> if (gatekeeper_foo_new_awesome_sauce)
> >>    do_new_thing();
> >>
> >> Where setting gatekeeper_foo_new_awesome_sauce taints the kernel and
> >> warns that there is no guarantee of this functionality being present
> >> in the same form or at all going forward.
> >
> > Interesting idea.
> > Trying to imagine how this might play out in practice....
> >
> > You talk about "value delivered to users".   But users tend to use
> > applications, and applications are the users of kernel features.
> >
> > Will anyone bother writing or adapting an application to use a feature =
which
> > is not guaranteed to hang around?
> > Maybe they will, but will the users of the application know that it mig=
ht
> > stop working after a kernel upgrade?  Maybe...
> >
> > Maybe if we had some concrete examples of features that could have been
> > delayed using a gatekeeper.
> >
> > The one that springs to my mind is cgroups.  Clearly useful, but clearly
> > controversial.  It appears that the original implementation was serious=
ly
> > flawed and Tejun is doing a massive amount of work to "fix" it, and this
> > apparently will lead to API changes.  And this is happening without any
> > gatekeepers.  Would it have been easier in some way with gatekeepers?
> > ... I don't see how it would be, except that fewer people would have us=
ed
> > cgroups, and then maybe we wouldn't have as much collective experience =
to
> > know what the real problems were(?).
> >
> > I think that is the key.  With a user-facing option, people will try it=
 and
> > probably cope if it disappears (though they might complain loudly and s=
ign
> > petitions declaring facebook to be the anti-$DEITY).  However  with ker=
nel
> > internal options, applications are unlikely to use them without some
> > expectation of stability.  So finding the problems would be a lot harde=
r.
> >
> > Which doesn't mean that it can't work, but it would be nice if create s=
ome
> > real life examples to see how it plays out in practice.
> >
>=20
> Biased by my background of course, but I think driver development is
> more amenable to this sort of approach.  For drivers the kernel is in
> many instances the application.  For example, I currently have in my
> review queue a patch set to add sata port multiplier support to
> libsas.  I hope I get the review done in time for merging it in 3.16.
> But, what if I also had the option of saying "let's gatekeeper this
> for a cycle".  Users that care could start using it and reporting
> bugs, and it would be clear that the implementation is provisional.
> My opinion is that bug reports would attract deeper code review that
> otherwise would not occur if the feature was simply delayed for a
> cycle.

I can certainly see how this could work for driver features.  We sometimes =
do
that sort of incremental release with CONFIG options, but those are clumsy =
to
work with.  Having run-time enablement is appealing.

What might the control interface look like
I imagine something like dynamic_debug, which a file that lists all the
dynamic_config options.  Writing some message to the file would enable the
selected options, and so the dynamic code editing required to enable it.

I think it is probably worth trying - see what sort of take-up it gets.

NeilBrown


>=20
> I think I also would have liked to use a gatekeeper to stage the
> deletion of NET_DMA from the kernel.  Mark it for removal, see who
> screams, but still make it straightforward for such people to make
> their case with data why the value should stay.
>=20
> For the core kernel, which I admittedly have not touched much, are
> there cases where an application wants to make a value argument to
> users, but needs some kernel infrastructure to stand on?  Do we
> inadvertently stifle otherwise promising experiments by forcing
> upstream acceptance before the experiment gets the exposure it needs?


--Sig_/5WWdRfoPCv=X4eRG4fOkbKx
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU307Uznsnt1WYoG5AQIGZw/8DcoPyRGgy36chqWyUC4weCId7rMxOSgn
hmeBOGn/DqkD9/L5B9Ge1MVgMSQphWIIapFm8jUZxekhO/Qj3X3O5htfP4PFvRi3
/nYp8jQ4D9Ci/wQ8tn7DZoAEsiBUQKcsXTBfmS0G9nNBBERCfmOWQ6zkbKs7NlK9
1tXvYfXg8cPLDx5W3CHGPtGnBQrWip/nKMMrUM/6TBNm6wHhNsm1Pu2jWp2KYMxI
4hJNcgAh20qIcyzDSxwDHdpyPiHD/ssWZCNutqx8xi2gKQLZLdnvLI5BGTyxnVoR
/LU2pVBx/DnPqOH68N/AxFEXboaHdkuS7fs2RvZeP4X/cLFWgE6lY3N9+RvMeZaq
RICZOtzLhvRFdtpjmEei/S0zDqFwKAwihlQoTUEAOrCleiuUxkuR6vmO3+svuIlO
OSMZPQDcASvVcwLzf0VxK0ZTfMHEUprOWw+Odr1EbtATeORuAjsp+9PGrJmaJpB0
Z5rKSlVB8EzT6aQGTavWuaoOrWd7+xj1qo2/5qGRTqKoBPPaUi2NE6n4Zk9MssEQ
Ihw4beAFqHquWC5+UJCPMhgkNzXLMgb3LO8p1Dl1Eo4PUd2mfSd4noeZAGaofqdB
I6E+XLOoU88DnFdIRo/uCOa7GLJTb2zLHYd8g0UfMgSJu2cyyi5KhmLrCso5PURn
3o8CQ6MVv9s=
=4MZb
-----END PGP SIGNATURE-----

--Sig_/5WWdRfoPCv=X4eRG4fOkbKx--
