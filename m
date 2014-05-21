Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8D5F08AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 10:11:18 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F2791F80A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 10:11:17 +0000 (UTC)
Date: Wed, 21 May 2014 20:11:08 +1000
From: NeilBrown <neilb@suse.de>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140521201108.76ab84af@notabene.brown>
In-Reply-To: <CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521182552.2ed57ad7@notabene.brown>
	<CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/iT3xtdLK8WXK=464qlBfMdd";
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

--Sig_/iT3xtdLK8WXK=464qlBfMdd
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 21 May 2014 01:36:55 -0700 Dan Williams <dan.j.williams@intel.com>
wrote:

> On Wed, May 21, 2014 at 1:25 AM, NeilBrown <neilb@suse.de> wrote:
> > On Wed, 21 May 2014 00:48:48 -0700 Dan Williams <dan.j.williams@intel.c=
om>
> > wrote:
> >
> >> On Fri, May 16, 2014 at 8:04 AM, Chris Mason <clm@fb.com> wrote:
> >> > -----BEGIN PGP SIGNED MESSAGE-----
> >> > Hash: SHA1
> >> >
> >> > On 05/15/2014 10:56 PM, NeilBrown wrote:
> >> >> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams
> >> >> <dan.j.williams@gmail.com> wrote:
> >> >>
> >> >>> What would it take and would we even consider moving 2x faster
> >> >>> than we are now?
> >> >>
> >> >> Hi Dan, you seem to be suggesting that there is some limit other
> >> >> than "competent engineering time" which is slowing Linux "progress"
> >> >> down.
> >> >>
> >> >> Are you really suggesting that?  What might these other limits be?
> >> >>
> >> >> Certainly there are limits to minimum gap between conceptualisation
> >> >> and release (at least one release cycle), but is there really a
> >> >> limit to the parallelism that can be achieved?
> >> >
> >> > I haven't compared the FB commit rates with the kernel, but I'll
> >> > pretend Dan's basic thesis is right and talk about which parts of the
> >> > facebook model may move faster than the kernel.
> >> >
> >> > The facebook is pretty similar to the way the kernel works.  The mer=
ge
> >> > window lasts a few days and the major releases are every week, but
> >> > overall it isn't too far away.
> >> >
> >> > The biggest difference is that we have a centralized tool for
> >> > reviewing the patches, and once it has been reviewed by a specific
> >> > number of people, you push it in.
> >> >
> >> > The patch submission tool runs the patch through lint and various
> >> > static analysis to make sure it follows proper coding style and
> >> > doesn't include patterns of known bugs.  This cuts down on the review
> >> > work because the silly coding style mistakes are gone before it gets
> >> > to the tool.
> >> >
> >> > When you put in a patch, you have to put in reviewers, and they get a
> >> > little notification that your patch needs review.  Once the reviewers
> >> > are happy, you push the patch in.
> >> >
> >> > The biggest difference: there are no maintainers.  If I want to go
> >> > change the calendar tool to fix a bug, I patch it, get someone else =
to
> >> > sign off and push.
> >> >
> >> > All of which is my way of saying the maintainers (me included) are t=
he
> >> > biggest bottleneck.  There are a lot of reasons I think the maintain=
er
> >> > model fits the kernel better, but at least for btrfs I'm trying to
> >> > speed up the patch review process and use patchwork more effectively.
> >>
> >> To be clear, I'm not arguing for a maintainer-less model.  We don't
> >> have the tooling or operational-data to support that.  We need
> >> maintainers to say "no".  But, what I think we can do is give
> >> maintainers more varied ways to say it.  The goal, de-escalate the
> >> merge event as a declaration that the code quality/architecture
> >> conversation is over.
> >>
> >> Release early, release often, and with care merge often.
> >
> > I think this falls foul of the "no regressions" rule.
> >
> > The kernel policy is that once the functionality gets to users, it cann=
ot be
> > taken away.  Individual drivers in 'staging' manage to avoid this rule
> > because that are clearly separate things.
> > New system calls and attributes in sysfs etc seem to be much harder to
> > "partially" release.
>=20
> My straw man is something like the following for driver "foo"
>=20
> if (gatekeeper_foo_new_awesome_sauce)
>    do_new_thing();
>=20
> Where setting gatekeeper_foo_new_awesome_sauce taints the kernel and
> warns that there is no guarantee of this functionality being present
> in the same form or at all going forward.

Interesting idea.
Trying to imagine how this might play out in practice....

You talk about "value delivered to users".   But users tend to use
applications, and applications are the users of kernel features.

Will anyone bother writing or adapting an application to use a feature which
is not guaranteed to hang around?
Maybe they will, but will the users of the application know that it might
stop working after a kernel upgrade?  Maybe...

Maybe if we had some concrete examples of features that could have been
delayed using a gatekeeper.

The one that springs to my mind is cgroups.  Clearly useful, but clearly
controversial.  It appears that the original implementation was seriously
flawed and Tejun is doing a massive amount of work to "fix" it, and this
apparently will lead to API changes.  And this is happening without any
gatekeepers.  Would it have been easier in some way with gatekeepers?
... I don't see how it would be, except that fewer people would have used
cgroups, and then maybe we wouldn't have as much collective experience to
know what the real problems were(?).

I think that is the key.  With a user-facing option, people will try it and
probably cope if it disappears (though they might complain loudly and sign
petitions declaring facebook to be the anti-$DEITY).  However  with kernel
internal options, applications are unlikely to use them without some
expectation of stability.  So finding the problems would be a lot harder.

Which doesn't mean that it can't work, but it would be nice if create some
real life examples to see how it plays out in practice.

NeilBrown


--Sig_/iT3xtdLK8WXK=464qlBfMdd
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU3x7vDnsnt1WYoG5AQKCsA/8DABXQqf/Vervk/arKKuAQHdp+HWqC0jI
CZFsGkpjV5ehrakP8GaxjTyaWbvi+NwCsxg87m/hVlIHKPb/sc8Wk/NQ+2BQD7RM
yfAcYdeyrf0WicOQz+hJylPgSv63LEepKv2+jwkVt7T4ev3mxUT+NXa8Xfw+XhZV
k7Z32KDrfiGimpJIe9rrZi8+VBnFZw6IfbDlEeC5ZBNx/kec1p/9sskNV579imLg
E3mhGI62HyVFKIqS46eLvaGUPiLZFwK4H3WOaKkXPP2fcDr5KYXuUeNkqJzqvH3n
QLkU/Viwcnjnz71Vrnd2yNOCY+IN2t7eLvhvCFz6QnpzhjbIIaCS+aPkDmGRjlTJ
XqDDkjusOqwiCKFUe27rD9aIWjpZLTvjU5hL82tHIODj9ORBCv6p+SHeJqikGGAI
vliZyMi8Rl41J/NF2SdSuBvrMiNnQbYh3v9Lxi2fyz/jrpyt/Vx36Qi20blkhsK3
3Xl6GMgaSX4FvcxEZUIIyqq7qG26d6eypTzojP45BTRGXgQO7huMg/N00buhaFMp
HHkXCJOY9bGRwCEVLXqOUrTU6Gkp3Nsyxup7RA5+oRl+noToKetAhXMMCGWmQKft
px59ZTel/AyMwBM4r2ok+7jmmO6XzpBjtWEO2/ipt9jnid4XYDBewnWsK92lUrbt
Z7cCngEqVzs=
=TTcE
-----END PGP SIGNATURE-----

--Sig_/iT3xtdLK8WXK=464qlBfMdd--
