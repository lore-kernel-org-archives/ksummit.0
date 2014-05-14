Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 900BC48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:22:31 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A80521F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:22:29 +0000 (UTC)
Date: Wed, 14 May 2014 17:22:25 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140514152224.GA12911@katana>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu> <20140512093235.GA2872@katana>
	<1400074363.4759.8.camel@jlt4.sipsolutions.net>
	<537374D0.8020307@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <537374D0.8020307@roeck-us.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Ditto. I personally use 'C=1 CHECK="ninja-check"' which is a wrapper
which calls all static analyzers I know of.

Still, to make it easier for other developers not so much interested in
static analyzing, brushing up C=1 to automatically use sparse and smatch
if installed might be worthwhile.

Great to hear that Dan wants to improve installing smatch. I'll add the
C=1 extension to my todo-list, yet I won't be angry if somebody else
gets around to do it sooner.


--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTc4owAAoJEBQN5MwUoCm2UxkP/jYAZ1meZu15MPpoWdh58Qda
mY9WaHthHQ/lbVVir6iiQJJ1/Yyt4LSVHfApPHueVHZgh0LV/3uT21gSpOzsDBPo
w3mQs9a9BD2nnezgltcg6C2iGDx5aUPkPey2LoXXcl4zWO+f4vI4+zui0199me5z
gKnui1fneqnZKgVV5ClCPmH3NM3h0ik8/I3yEondNV47KUOFNoWOqbd8iZ2cMpLn
vyhMdF/URPlHX80ZkEPDuTXdzYrFqApIxPFSn1luEQvZJEeON2cyZCFilL8HZQcS
82md962oyijHMM9tcZy20usiPL13e//Uf5XKwWKw7CirlFBrk8LsmOJ9beTzr2/N
xb80pnCjvbC6+fnqlGjnS2u5QzozLFkIP5nL4DFbSWrblZXZk39VfsMd0nsojVqc
YJnbTPKUMK6x05AkW9ZvBz6oE4IuVrAdS0qBGPiZ2eKzvkSuUxJbPV3vxD1oZmQ3
rzjV+tS2piX8EzGqOEqxnZEbd4zFrL/05y1YiVN8NJtyAMLLpTf/9LYfze7XQ6rw
nFq+WyWWQ6a4a9oA8iI0VcYWv6QegNIMVGtFt1RJ3FpNU41xWwrYkFG4bbWMHIyx
eyX6qldoXIB7JS+B/x4s1E9mbgLN0qRHkCx0THVCqk/kcYqyxZCNm2JYdmiHz5uS
rgYSHdRzAEmCRG07XjLr
=ldYt
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
