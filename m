Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27E51305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:39:16 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59ABD196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:39:15 +0000 (UTC)
Date: Fri, 26 Aug 2016 13:39:13 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20160826123913.GW13232@jhogan-linux.le.imgtec.org>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<20160826114205.GA16682@jhogan-linux.le.imgtec.org>
	<20160826115022.GU13232@jhogan-linux.le.imgtec.org>
	<87k2f3sojd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fBT78PV5vI5fyuAn"
Content-Disposition: inline
In-Reply-To: <87k2f3sojd.fsf@intel.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--fBT78PV5vI5fyuAn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 26, 2016 at 03:27:50PM +0300, Jani Nikula wrote:
> On Fri, 26 Aug 2016, James Hogan <james.hogan@imgtec.com> wrote:
> > [ Unknown signature status ]
> > On Fri, Aug 26, 2016 at 12:42:05PM +0100, James Hogan wrote:
> >> On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> >> > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> >> > >    - Improving tagging for stable. The "version tag" option is bro=
ken
> >> > >    and the "Fixes:" tag is always preferable, how do we get people=
 to
> >> > >    use that more often? (script it somehow?
> >> > >    scripts/find-version-it-fixes ?).
> >> >=20
> >> > Oh a script like that would be nice, but how would that work in real=
ity?
> >>=20
> >> Not all Fixes: tags are suitable for stable though. I've been caught o=
ut
> >> by patches being applied to stable (4.2 maybe) due to a Fixes tag,
> >> without prerequisite patches being applied.
> >
> > I also find the following alias useful to find the version number a
> > commit is first merged in:
> >
> > vc =3D "!vc() { for i in `git tag --contains \"$@\" | grep '^v'`; do ec=
ho \"$(git log -1 --pretty=3D'%ct' $i) $i\"; done | sort -n | head -n1 | se=
d 's/^[0-9]* //g'; }; vc"
> >
> > Its a bit slow and hacky and there's probably better ways, but it picks
> > the tag a bit more reliably than "git describe --contains". Maybe that
> > could be wrapped in a script that generates a Stable tag automatically
> > from a Fixes tag for when the patch is suitable for stable.
>=20
> If you can trust your tags to contain versions like in the kernel, I
> think you can get away with just:
>=20
> 	git tag --contains <committish> | grep ^v | sort -V | head -n 1

Yes. I think the reason I avoided that is because it wouldn't tell me
the rc release a commit was merged in (which is sometimes of interest),
hence sorting by commit timestamp instead, but for the purposes of a
stable tag that is indeed irrelevant:

$ git tag --contains v4.7-rc2 | grep ^v | sort -V | head -n 1              =
                                                                   =20
v4.7
$ git tag --contains v4.8-rc2 | grep ^v | sort -V | head -n 1
v4.8-rc2

Looking again at the man pages though, the following is even nicer:

git tag --contains <committish> --sort=3Dtaggerdate | grep '^v' | head -n 1

Cheers
James

--fBT78PV5vI5fyuAn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXwDhxAAoJEGwLaZPeOHZ6sUEP/256qjL07mbK9lxZ2RePuRjZ
KR/arXznZUCw70GDwKOYYffBzBY598XToN9PVGVNbG9ehr/p9lraMzPSY/Dv4ghv
hHBDt4Jrqnr/XukelQrLwlYhBuaoumZE18Vun6sw8X76DP5JJuUNFCGdktYAhfZz
j06cAAgb9dSv9RAiiZJNAKe8k2RrSuGjXr3XaRa1fNiEl9isPhigXCOvJApkraXJ
9RRZRta9tClvROWYTAl4JYVU/dlVQXM7rScFhHJhi6WI10dDbxPwoYiYYpyGJXTI
1kFPyuVRR/R2aRDmqy8cX01WST8xYAj50JXlXY3jArAZdvTSW0sVANlqim8fp3dW
i6bBYEjLDJlKiKrnYOe9AjdFE0dJO6lCEpc8YVHc8anVR80Rr+Sd7X5QdS5TNEA8
jmlFNUwH3CJG9y/7tF8TG0EaD8idCok2ccww8pU8d2ZQA7Qx/1gM1TKiZPST1VmL
CEFXRLl6HrusHv6vRiBtNuwLXnJQNLMvfgQNtb/sh+0b/4qGTD49WG33GON4C9Lf
UADQ+P6fE9KJwe74EpESrjbKzi9eIhM9ytdWpGE/RwuvYwHKIGnG5B+90dTrOwYe
EKlRETFUXdOfERsNq23bf72z2Bayfl4bKFQ/WpVD/xUEgSj8OQaoLWduQPyJ5f3q
PXI6WqRdquEexBViMntg
=/Jo7
-----END PGP SIGNATURE-----

--fBT78PV5vI5fyuAn--
