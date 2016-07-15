Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B68E071
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 07:28:46 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0AA6BCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 07:28:45 +0000 (UTC)
Message-ID: <1468567722.2420.41.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: NeilBrown <neilb@suse.com>, Greg KH <greg@kroah.com>, Guenter Roeck
	<linux@roeck-us.net>
Date: Fri, 15 Jul 2016 16:28:42 +0900
In-Reply-To: <871t2vcrle.fsf@notabene.neil.brown.name>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
	<5788337F.8000500@roeck-us.net> <20160715014103.GA5791@kroah.com>
	<578850EB.3090109@roeck-us.net> <20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<1468564337.2420.37.camel@HansenPartnership.com>
	<871t2vcrle.fsf@notabene.neil.brown.name>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-LCQPWplCQTqWG8d4K3SM"
Mime-Version: 1.0
Cc: Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-LCQPWplCQTqWG8d4K3SM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-15 at 17:01 +1000, NeilBrown wrote:
> On Fri, Jul 15 2016, James Bottomley wrote:
>=20
> > On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
> > > I do find quilt useful when backporting a series of patches so
> > > that I
> > > can resolve the conflicts on each patch individually and move=20
> > > backwards and forwards through the list of patches.  I don't
> > > think=20
> > > git has an easy way to store a branch of patches-that-I-need-to
> > > -apply=20
> > > and to then give me one at a time, removing them from the branch.
> > >   I=20
> > > could use 'stgit' for that if necessary, though it is very
> > > tempting=20
> > > to write something that is better integrated with git.
> >=20
> > Git cherry and git cherry-pick can do this.  Git cherry-pick can
> > take a
> > range of patches to apply, so you can select a bunch of patches to
> > backport or otherwise move all at once.  Git cherry can tell you
> > (to
> > within an approximation, since it uses matching) what patches are
> > common between two branches even if they have differing commit ids.
> >=20
> > The format is a bit frightening if you're not used to it, which is
> > why
> > stgit may be a better user experience, but you can do it with basic
> > git.
>=20
> I wasn't aware of "git cherry".  It certainly could be useful, but=20
> based non the man page it would get confused by modifications made to
> resolve conflicts.

I know, currently the matching is hard in the sha1 sums of the patch
less certain things which might change like line numbers.  However, we
use similarity matching in git merges to detect file moves, we could do
the same thing in git cherry to detect patches which look about the
same (probably we'd need some sort of flag to specify degree of
similarity).

> If "get cherry-pick" auto-added an "upstream HASHID" line to the=20
> comment, and if "git cherry" used that to understand that two commits=20
> where "the same", then it would be a lot closer.

it does, just not by default, see -x option.

James


> Then a command, maybe "git cherry-pick" with no args, which did the
> equivalent of:=20
>   git cherry-pick `git cherry | head -n1`
>=20
> would almost work for "quilt push", and the "git rerere" thing (which
> I
> almost understand) would mean that "git reset --hard HEAD^" would
> work
> for "git pop" (or "git cherry-pop").
>=20
> I'd probably want some way to record the upstream and limit commits
> for
> a particular session.  e.g.
>    git cherry start XX YY
>=20
> then "git cherry-pick" and "git cherry-pop" would DoTheRightThing.
> Maybe.
>=20
> Thanks,
> NeilBrown
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--=-LCQPWplCQTqWG8d4K3SM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXiJCqAAoJEAVr7HOZEZN44XsP/3YjSsvCz0TU0jTacZJ7Panp
fZbFKfvLXIy64DNovFY0IzVlOM2EOEZvWcIQ10RS4iPefFe+JCciYPQy92RFMeSB
Ln3Mcv7gq0x44LYa5ZPAwxevDqsGsUSqUdbehAr+RYUzDdi8Rdi14EEvhZznPJwH
aPeL1ZiIe5ysKuq9vsN7CNR2Ph6iyTJEIfc//cA4JwfTktuLXv4F7X+UuLsWSjIO
OywBOs3q9zJ/iuAKVvCMXZfeyYvwUrIt82z8lLreX/4ZqzZM3JERVnjDcbbHD3Tl
n8RZ4ypzlQTR9AMbCvtbugBvEclVWq/cUz+RZwRga3yc5dNi7gj0QNCxdAVc+ym7
x7Q1xM9cceyBmxvSAB72mrGzj4PxSs9Wnz83hFLj8NHXANUv/LkIChv3a2K8Yfkm
8NaF0AYF7H4nzR/T/+LHsOLOeTeXt5KkaT6h1BTMuq3g/QGVKHbxDTwpKAl8CO1U
LICeuT8xTLlv4ZXFpsKxxCxrwW1+jIbFQ6fIg99hLJ9kd5U/lAE+asOjM272jbTA
ACZ+aQHVWmdCAH4ZlVoUppncjfKUByfEuC8JeJq2RvwwAl8Q/fNS8ssNPJ2v6VS6
eqe/t0H+iu6HZ7lHuxFmf/QTAs78otQmr4lJakSZm2gGDMok6bxq5ksm2UNRP5xA
wgj+aw48yniBXDeWOO6V
=x7hD
-----END PGP SIGNATURE-----

--=-LCQPWplCQTqWG8d4K3SM--
