Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59A58D4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 00:20:16 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0488013A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 00:20:14 +0000 (UTC)
Date: Thu, 13 Sep 2018 10:19:55 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180913101955.3163ef05@canb.auug.org.au>
In-Reply-To: <20180912162422.37d545ec@vmware.local.home>
References: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180912162422.37d545ec@vmware.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/=LYvMYsMBJMon_jL3HtfTpA";
	protocol="application/pgp-signature"
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/=LYvMYsMBJMon_jL3HtfTpA
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Steve,

On Wed, 12 Sep 2018 16:24:22 -0400 Steven Rostedt <rostedt@goodmis.org> wro=
te:
>
> On Tue, 11 Sep 2018 18:53:29 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>=20
> > > Why not do what I do and push to a -pre-next branch when you kick off
> > > your local tests?   =20
> >=20
> > Because there's no point.  As I said, when we complete the local
> > criteria the branch is ready for integration.  We push to -next and
> > *all* the built bots tell us if there are any problems (which I don't
> > expect there are but there's room for me to be wrong) ... including
> > 0day.  I don't see what the delay and the process hassle would buy us
> > if we only get a review by 0day in the -pre-next branch.  It seems more
> > efficient to let every bot loose on what we think is mergeable. =20
>=20
> If a bot discovers a new failure in linux-next, do you look to see
> which tree caused it? And then create a new linux-next without that
> tree?

Well, obviously, that depends.  Firstly, I have only once done 2
linux-next release in one day (and that was way back in 2008) as it is
mostly just to much work (a minimal linux-next release takes 4 hours or
more ... just before the merge window opens, it can take over 12 hours).

Sometimes a bot will actually identify the actual commit and sometimes
not.  Sometimes I don't even see the notifications :-(

Reverting a whole tree can be a real challenge in itself.  I currently
have to consider 286 branches for merging every day (a lot are empty
especially in the first few -rcs, obviously) and if the branch has been
merged early, then there is a reasonable chance that there is some
interaction with later merges.

An alternative is to reset linux-next to just before the offending
branch was merged and remerge all the following branches without doing
the intermediate builds (optimistically).

As Sacha said, I often don't see reports until after I have finished
for the day (or woken up the next morning), so the best chance is to
fix the next linux-next release.

> If not, then perhaps we should do so.

I will think about how I could go about it.

--=20
Cheers,
Stephen Rothwell

--Sig_/=LYvMYsMBJMon_jL3HtfTpA
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluZrSsACgkQAVBC80lX
0Gx7fwgAgJWH8n/dKP30M7F/ohfGJPU+fKL5FsH1B/TPR71cRFAXoOd3gRg5AoR9
wz/08scGcQVxi21Yz7ndMFn+/FsKqk5eNybcgL0NQy7gEw3XXdNRXNdK+QmXaoLA
uFYLzU2+MmZ+H+eQCWUhzgaWNIwASKUoAWmdlElEVI+kcAQ3Rok6QW+xfxgEEE2Q
2bXP+42m8cpw7IX+72igoPfwh9k5hvFtt1rey4L0TfQOdF1zyzf9IGmT4/v13n3E
m+c0ghUUgYYyRbaRUL1+MoTX/CUlDAi6G1rqtNjgJZEEEXSVsJb3/fjTqWA6VJUS
6vEugSIuGTG8G0X91G+7oKgnRsh1jQ==
=06gS
-----END PGP SIGNATURE-----

--Sig_/=LYvMYsMBJMon_jL3HtfTpA--
