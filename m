Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 00FFB8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:26:03 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3CD531F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:26:02 +0000 (UTC)
Date: Wed, 21 May 2014 18:25:52 +1000
From: NeilBrown <neilb@suse.de>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140521182552.2ed57ad7@notabene.brown>
In-Reply-To: <CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/92qpLBjPCf/zOKAZoR.xvzt";
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

--Sig_/92qpLBjPCf/zOKAZoR.xvzt
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 21 May 2014 00:48:48 -0700 Dan Williams <dan.j.williams@intel.com>
wrote:

> On Fri, May 16, 2014 at 8:04 AM, Chris Mason <clm@fb.com> wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA1
> >
> > On 05/15/2014 10:56 PM, NeilBrown wrote:
> >> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams
> >> <dan.j.williams@gmail.com> wrote:
> >>
> >>> What would it take and would we even consider moving 2x faster
> >>> than we are now?
> >>
> >> Hi Dan, you seem to be suggesting that there is some limit other
> >> than "competent engineering time" which is slowing Linux "progress"
> >> down.
> >>
> >> Are you really suggesting that?  What might these other limits be?
> >>
> >> Certainly there are limits to minimum gap between conceptualisation
> >> and release (at least one release cycle), but is there really a
> >> limit to the parallelism that can be achieved?
> >
> > I haven't compared the FB commit rates with the kernel, but I'll
> > pretend Dan's basic thesis is right and talk about which parts of the
> > facebook model may move faster than the kernel.
> >
> > The facebook is pretty similar to the way the kernel works.  The merge
> > window lasts a few days and the major releases are every week, but
> > overall it isn't too far away.
> >
> > The biggest difference is that we have a centralized tool for
> > reviewing the patches, and once it has been reviewed by a specific
> > number of people, you push it in.
> >
> > The patch submission tool runs the patch through lint and various
> > static analysis to make sure it follows proper coding style and
> > doesn't include patterns of known bugs.  This cuts down on the review
> > work because the silly coding style mistakes are gone before it gets
> > to the tool.
> >
> > When you put in a patch, you have to put in reviewers, and they get a
> > little notification that your patch needs review.  Once the reviewers
> > are happy, you push the patch in.
> >
> > The biggest difference: there are no maintainers.  If I want to go
> > change the calendar tool to fix a bug, I patch it, get someone else to
> > sign off and push.
> >
> > All of which is my way of saying the maintainers (me included) are the
> > biggest bottleneck.  There are a lot of reasons I think the maintainer
> > model fits the kernel better, but at least for btrfs I'm trying to
> > speed up the patch review process and use patchwork more effectively.
>=20
> To be clear, I'm not arguing for a maintainer-less model.  We don't
> have the tooling or operational-data to support that.  We need
> maintainers to say "no".  But, what I think we can do is give
> maintainers more varied ways to say it.  The goal, de-escalate the
> merge event as a declaration that the code quality/architecture
> conversation is over.
>=20
> Release early, release often, and with care merge often.

I think this falls foul of the "no regressions" rule.

The kernel policy is that once the functionality gets to users, it cannot be
taken away.  Individual drivers in 'staging' manage to avoid this rule
because that are clearly separate things.
New system calls and attributes in sysfs etc seem to be much harder to
"partially" release.

To quote from Linus in a recent interview:

"I personally think the stable development model is not one of
continual incremental improvements, but a succession of overshooting and cr=
ashing."=20

Yet Linux is stuck in "incremental improvement" mode and is not in a positi=
on
to "overshoot and crash" much.

I agree there is a problem.  I can't see a solution.

NeilBrown

--Sig_/92qpLBjPCf/zOKAZoR.xvzt
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU3xjEDnsnt1WYoG5AQLS2A/+KCiSHEVne/aprWSLtDz4H7qRDMWTTfP/
Xo3Xv21U1qR6SZZM5our7dQtpDp+8cTYS5n1tnRmcJnGR4/xcpRWOwI/XjusAnOd
MwzW35ug+r61E0hC9EDwRVpGtabZo4yNzr9tI0J9IYVmegi2AS9AqIpLjfVec18q
gTDCBXs3ZOCLy3M3GsLZQXjWmYokfJCrjCH8Z5hk4hhBZaI3cKLxLCfj1FKnLjxL
KUbXbVhBT9FOiGc8d4LLl3SBOwuxcUHYGQDnMkw2wj8wDB8LCzEUTWRlufArPcPW
6Wa3idePJfVJ0I4QF4PUaTIKgqtMyXeBzYrJ0743EGFdrw2PzXA/SuEYgP9Tipn9
D7jlnhEXVhZDNafxJVlRlrDNh7QbxKvcqed/P2dSTNjSI/xqzN8DQmKEajpSl5Bb
LYXFUwLpu6r8F26i6Dsy9VGezsUsNyCtBzxgJKbJe6rzaaQ7f36v38f/e/Bj254Y
LRZNcXL5ftu4uvZtdYEvg6iSfD3BfwM5STTcKxNtUwTzw6LyYSz0/m/3pnzsp8Ww
Uqb5ulR2FEmBNwlzBFE6uZ2Qexjly2a13sXaetkEyA7wmbqdYrq3UuLsJS8aQLMl
mTFakvUP51fkPuQElDwcrKU535oaynD0wkcVoAHIfJD6WRxH4SxAv5Ep/vPqXA1b
rzn4MqRLwG0=
=qY2S
-----END PGP SIGNATURE-----

--Sig_/92qpLBjPCf/zOKAZoR.xvzt--
