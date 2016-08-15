Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49C438D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 13:20:07 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4A72167
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 13:20:06 +0000 (UTC)
Date: Mon, 15 Aug 2016 14:20:04 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160815132004.GB21566@jhogan-linux.le.imgtec.org>
References: <20160729075039.GA26402@x>
	<20160805021426-mutt-send-email-mst@kernel.org>
	<20160805202615.lpnrhi2lswz24iny@x>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GID0FwUMdk1T2AWN"
Content-Disposition: inline
In-Reply-To: <20160805202615.lpnrhi2lswz24iny@x>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--GID0FwUMdk1T2AWN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 05, 2016 at 10:26:15AM -1000, Josh Triplett wrote:
> On Fri, Aug 05, 2016 at 02:52:18AM +0300, Michael S. Tsirkin wrote:
> > And how about "git series cherry-pick" - to apply
> > series to the current head?
>=20
> Could you elaborate on the semantic of this?  You have a series in your
> tree, and you want to take all the patches in the series and apply them
> to HEAD?  Or, do you want to copy the series and rebase the copy on HEAD?
>=20
> For the former, once I add support for formatting a series other than
> the current one, you could do that with "git series format seriesname
> --stdout | git am".

FWIW I had to do the latter the other day to check which stable branches
needed distinct backports. Since git series doesn't seem to allow
"forking" of a series yes (i.e. analagous to git checkout -b b1 b2), i
ended up doing something along the lines of this repeatedly:

git branch git-series/$feature/stable/4.7 git-series/$feature/staging
git series checkout git-series/$feature/stable/4.7
git series rebase v4.7
etc

(so the new series inherits / branches the history of the old one)

So it'd be nice to be able to do something like this instead:
git series checkout -b new_series [old_series =3D current_series]
git series rebase v4.7

Cheers
James

--GID0FwUMdk1T2AWN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXscGEAAoJEGwLaZPeOHZ68FQP/0FJM1RcO5CAUW2Jr9GEVBtB
Oe7PzUVe2dGVHfnC6ushyZxFuZbeOGRMqeB+VwhuFUJC4rlvmWE4cYXG9m6a/foX
obgl+Ckxvm4CHv38LSI1YyrZRtPQYw9kpjP3jzjs1Qinba42PvOoDgPXLq5GSHnB
9RAPJTH0733a5S1/3PHN6EYSveYFGAUxiRQpFyKbSmtk873ZXlyMjG2RLULViQBj
ywbneNOhFyUN/wUqnVR6dFMlzN6Pv78jjmwAQ8yyx+V3DV4j5BYVVifYlbGYjI+b
NuJVnPEDA9pmtwOIpejMDpNSFdaF37Z8mwxDHGSpetK6gY6SGkOFFdFPaTWRBSL5
TwShC8zauW4+51kHkFEZg4tsNBav5NQhzXpt89Ke803qr/ga2rM5PvvWxtT8KS/5
IVfD25pv16GLHOfzjsZh9UJQ1wrbfzWX6bk/IU7239/EVWBTi5eiMW+fUJiqzYNa
K5CzqKi00RQ2Ixf3T0Uzbz7Kr2OKcIkdWJcVSebgEOqoqLLrcNB7KIJXeH5wWwo1
H7WTXDhSaT8N33DiER3CIZG1HMtyFZyFSWGJB9fPcGeeEbWbUcumZYQMWCF1LDg+
AojMGoxJ5qUfSwJot1b3ILWcAAiJqSKnqgiJWanGJVobYyxYECOTuuhbVVlya9UG
zTAS4cu+y8x9UPZisUpw
=TPLQ
-----END PGP SIGNATURE-----

--GID0FwUMdk1T2AWN--
