Return-Path: <heiko@sntech.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 507EA40A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 15:08:32 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [95.129.55.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 61AD2103
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 15:08:31 +0000 (UTC)
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 23 Jul 2015 17:08:28 +0200
Message-ID: <1896782.UqW9B1Ukad@diego>
In-Reply-To: <20150723105726.GC30929@amd>
References: <20150723105726.GC30929@amd>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Am Donnerstag, 23. Juli 2015, 12:57:26 schrieb Pavel Machek:
> Significant percentage of phones run Linux kernel today, but geting
> mainline kernel to work on a phone is very hard to do. (So hard, that=

> newest device that is close to working on recent mainline was made in=

> 2009.) There are multiple obstacles, including huge patches from
> silicon vendors, missing GNU/Linux userspace support that makes kerne=
l
> testing hard, interfaces unsuitable for phones and power management
> problems.

>From work I know some MSM8916 phones which came to market over half a y=
ear ago=20
ad just now seem to get basic clock support in mainline.

But I guess the problem is not limited to cellphones but to all mobile=20=

consumer electronics, where the development model is based on hacking o=
n some=20
fork of an old kernel.


But I do think the ChromeOS people do quite a lot things right in terms=
 of=20
development model, as I can run a Debian (including 3d-acceleration) on=
 the=20
just released Rockchip Chromebooks with only a minimal number of additi=
onal=20
patches against 4.2-rc ;-)


> Interested people:
>=20
> Sebastian Reichel <sre@kernel.org>
> Pali Roh=E1r <pali.rohar@gmail.com>

The Openmoko Freerunner brought me into the embedded world in the first=
 place,=20
so I'd definitly be interested ;-)

Heiko Stuebner <heiko@sntech.de>
