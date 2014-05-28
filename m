Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BAC1D910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 13:57:46 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9070C200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 13:57:39 +0000 (UTC)
Date: Wed, 28 May 2014 15:57:32 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: =?utf-8?B?THVrw6HFoQ==?= Czerner <lczerner@redhat.com>
Message-ID: <20140528135732.GB2649@katana>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<20140528053749.GA2649@katana>
	<alpine.LFD.2.00.1405281158180.2075@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s/l3CgOIzMHHjg/5"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.1405281158180.2075@localhost.localdomain>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--s/l3CgOIzMHHjg/5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > > That does not make much sense to me. In order to review the code you
> > > need to understand it and if you already understand the code, you
> > > can write it as well.
> >=20
> > Huh, have you ever maintained something? I couldn't write most of the
> > drivers I get for I2C, because I simply don't have access to the
> > hardware.
>=20
> But the lack of HW was the one thing stopping you right ? Not the
> lack of skills or knowledge.

Lack of time is another one. And lack of interest a third one. Unlike
the casual developer, I'd like to work more on the core and
infrastructure than on drivers.

> I am just saying that it's quite likely
> that there are even less people with the skills who are willing to be
> dedicated to review than developers who are willing to review
> patches from time to time.

Right. And give those rare bunch some money to focus on this kind of
work (opposed to stuff like board bringup) is what I am proposing.

> > Then, think more of dedicated maintainers: I don't know one maintainer
> > who is not interested in hacking as well. Which is needed, of course.
> > There are reviews which make flaws in the subsystem core obvious.
> > Usually, the original patch comitter is only interested in this reviewed
> > patch and does not want to deal with the core. So, this kind of work is
> > up to the maintainer. If maintainers are backed off, more of this work
> > could be done IMO.
>=20
> Are you suggesting that existing maintainers should either stop
> hacking, or give up maintainership in favour of those who does not
> want to write code ? :) Sorry for exaggerating, but I do not think
> that having people dedicated solely to review is realistic.

I think we are missing each other here. Maintaining is not only
reviewing but also keeping the core in shape. There is quite some
hacking involved if done properly.

> We should rather focus on encouraging developers to review more.

That is a good, helpful thing. Yet, from my experience it won't scale
enough. I'd be happy to be wrong here, though.

Regards,

   Wolfram


--s/l3CgOIzMHHjg/5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJThetMAAoJEBQN5MwUoCm23wcP/3GxUIspS3F8N0L7Dpz0wOFE
tfAsUDz1FCTPz/ON5OySQhnY0Zhk8GjHqTGWOeTMnOYDOUv15NFmCenvb7oWTtLD
fAskJkyBldSgTJPOkOne2mswBWeaEBPknVv4XX0rWVc+XB1ZumfQ8pvkUiSkLChN
GXtfZXuMmFDUwfxr8yiKWobHjA9Q3Wl17G89QblhYMEr1vAPzdAJnQTBXo0mZa+N
lFyqbp4YMMRgXc8o/iWI3Ydkpm7HNwwVQosJ8MhnkW+uAC5Q1z3I5LtmamrLbqxs
rPrtOQb7+QaAHhBJel80pnhLz8RCkJfxHXkZqp6/yM8+Wmu9GGy+RgBHFTYyhoDz
2EmqkMhp0ZdpEO5uwA9qdwCGQpSuCKPez28tuM9VCCZPptm/CmNJXUXDsouRJEc4
yDXJKHSutWk6wE10KyY4eYxzipAvnynYCje6iay+ERSCb5WZ3rryAvF6k7r+iW48
hoMvhfeRkXQreoJZA40lkgrhAG6mrgZAFudmcqNSPCL2aTwYiYKOjrJ88Zse8DJT
uNAXE5GQZhHpyFmfF1wMwM0x97N7hfohBzu/FZy4V3u6TFctZWHilVDnO6tx83Ax
AnCZjO+DHsuYYg0SLEACypMDN5Rnr6WtvvFc7B8NDxijEb+ScGLaWsbAV9SPDSHv
yyhR6bjUdLqNm+/jos+H
=Jou7
-----END PGP SIGNATURE-----

--s/l3CgOIzMHHjg/5--
