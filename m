Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 65CDB4D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:49:50 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C85F11FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:49:49 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 5807AAD11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:49:48 +0000 (UTC)
Date: Wed, 14 May 2014 09:49:41 +1000
From: NeilBrown <neilb@suse.de>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140514094941.41a13b26@notabene.brown>
In-Reply-To: <alpine.LNX.2.00.1405140127240.16459@pobox.suse.cz>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140514092340.24ab4c9e@notabene.brown>
	<alpine.LNX.2.00.1405140127240.16459@pobox.suse.cz>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/BxGWGsFWLkcuhGgjYGkhpbD";
	protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/BxGWGsFWLkcuhGgjYGkhpbD
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 14 May 2014 01:29:29 +0200 (CEST) Jiri Kosina <jkosina@suse.cz> wro=
te:

> On Wed, 14 May 2014, NeilBrown wrote:
>=20
> > A particular practical issue is that when doing a git-bisect there migh=
t=20
> > be a range of commits that only compile/run if some later commit is=20
> > applied. If I'm bisecting in that range, I have to repeatedly apply tha=
t=20
> > commit by hand.
>=20
> You can just have it stored in a separate branch and perform the bisectio=
n=20
> using a script that will always first merge the branch, and reset after=20
> good/bad verification is done.
>=20
> If the fix is already applied (because you are testing a state of the tre=
e=20
> which has the commit already), git handles the merge of the=20
> already-applied patch with grace even if they don't have the same SHA-1.
>=20

True.  But every extra step I have to add to a script is an extra barrier to
performing what is already a somewhat tedious task.

If fixes were always Strongly-Attached to the commit they fix, then I
wouldn't even need to find these "fix-up" patches.  One person commits the
fix in the "right" way, and everyone benefits.

Thanks,
NeilBrown

--Sig_/BxGWGsFWLkcuhGgjYGkhpbD
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU3KvlTnsnt1WYoG5AQLO1A/+Jkl4stKL5C8o3PUanZsdGlp/lYzdGkdi
gzsmQsZ5rjECqm+r/DJ6SzMnbhQxAnexJJHviY6UWxvCgcsjSsBK4wf2uaABedfY
nbIsav4KteSaWYs/PCAnWHC65rVLnt2B3DxSq6WTivXHPWTPfdQHn8uJBAWZ/yd7
gxXLTge9pTHQ1Y0h1qB5FUHusIyldgtyYF+QMKZIfbz5rssYtaH/dFmA4yrROeXv
3Nwio+G12t4srej8DIyLAdah3A2XWCPcTWMdWHbdtrm7LrKIhymx3QoFnnlB2Hik
hts08BZbDumuwKdjmcnvPbTPO8D3/3j7LEZyvQC5fQr0CKS3Gc2KArqKyyFAucyi
RD3mJ3/jAs5CucrALEY1ZCyRtsI7Tkm2WEku7/k+gfoyx6Yk16m+vwHmbKnzbODm
vE4rY0JFoYIvmhB3YVOMTKGRQwRB1hK2GBxS5WRAmezAbI4HVuQLPf6s916jY/PV
QEsG0goVW5m1/L8LlE+brxjxrWKQoUmexF1/xhyhtdJn7hbD2rlNAG0HvQcgdOLQ
jpk/ffWQx99Mng8ertNR+GZF5bsy6mK2RN+GKdm6p9spkdbpmTzM+91crKbueKA/
qwCWlz0WF7K/ccW7Hp+mGfrRNlUPTEN9ZzHo2bhfDC5EszC+8cx9N2FE8O26+MOo
0ufeQYjDniY=
=v7Gj
-----END PGP SIGNATURE-----

--Sig_/BxGWGsFWLkcuhGgjYGkhpbD--
