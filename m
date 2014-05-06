Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A76868AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 14:25:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C3861FC53
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 14:25:47 +0000 (UTC)
Date: Tue, 6 May 2014 15:49:09 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140506134909.GM11096@twins.programming.kicks-ass.net>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2F7AbV2suvT8PGoH"
Content-Disposition: inline
In-Reply-To: <1998761.B2k0A5OtQR@vostro.rjw.lan>
Cc: Len Brown <len.brown@intel.com>, ksummit-discuss@lists.linuxfoundation.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--2F7AbV2suvT8PGoH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 06, 2014 at 02:54:03PM +0200, Rafael J. Wysocki wrote:
> Hi All,
>=20
> During a recent discussion on linux-pm/LKML regarding the integration of =
the
> scheduler with cpuidle (http://marc.info/?t=3D139834240600003&r=3D1&w=3D4=
) it became
> apparent that the kernel might benefit from adding interfaces to let it k=
now
> how far it should go with saving energy, possibly at the expense of perfo=
rmance.
>=20
> First of all, it would be good to have a place where subsystems and device
> drivers can go and check what the current "energy conservation bias" is in
> case they need to make a decision between delivering more performance and
> using less energy.  Second, it would be good to provide user space with
> a means to tell the kernel whether it should care more about performance =
or
> energy.  Finally, it would be good to be able to adjust the overall "ener=
gy
> conservation bias" automatically in response to certain "power" events su=
ch
> as "battery is low/critical" etc.
>=20
> It doesn't seem to be clear currently what level and scope of such interf=
aces
> is appropriate and where to place them.  Would a global knob be useful?  =
Or
> should they be per-subsystem, per-driver, per-task, per-cgroup etc?

per-task and per-cgroup doesn't seem to make sense to me; its the
hardware that consumes energy.

per-subsystem sounds right to me; I don't care which particular instance
of graphics cards I have, I want whichever one(s) I have to obey.

global doesn't make sense, like stated earlier I absolutely detest
automagic backlight dimming, whereas I don't particularly care about
compute speed at all.

So while I might want a energy conserving bias for say the CPU and GPU,
I most definitely don't want that to dim the screen.

> It also is not particularly clear what representation of "energy conserva=
tion
> bias" would be most useful.  Should that be a number or a set of well-def=
ined
> discrete levels that can be given names (like "max performance", "high
> prerformance", "balanced" etc.)?  If a number, then what units to use and
> how many different values to take into account?

Yeah, fun.. we're not even sure how to make it do the 0,1 variants, and
now you want a sliding scale to make it do in-betweens ;-)

--2F7AbV2suvT8PGoH
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJTaOhVAAoJEHZH4aRLwOS6iq0P/ihsPqIH6WqP3dDLgVYM6rRQ
dc6frI+jiFZJpOGV6BwZ1FWOfPYXlah9tNa/fnC5eivVDN4aHZ2l+UspatftFNFq
htCQU4Sh4m46+BiH9fdsbzTDa0uJ6fmgPl+ZvttNrBoOtEraP564ZZvL2ecP2GU+
oXOFHbPgdC8xIQscT9RoD1kLNDYnUKax3G8xkOGJn+Ha0TVbtLiCG9i7teCOffA8
M0n4bY5zpqeHtybHDkn1GVaui1FmBwQvrD4i3RK/nlvNN+73ZNc8AOOLKPtyOlBI
U9zdFAltaVO+1L16lblcVpLICj1QefxkuUdPaokjGNlvFFy/p90RjyRB5QSKtuIe
iNpp0X2PkM55g5fAB2jmql/2d4wuyFPl4RbGiJHdiO2+JoIy0qc+CTzyGxlXenqx
F1V/hTPSBFF3IZfvOYeCg3oZ9pUBwl6uW0Vx18TPMsRFTDiRu+oe4e9sgzQXfOVL
+cFGq4viAnPu9C0PN86/A4mLRN/cBhcPWiOTlDD8ZeDKJVj93v9QTKuW2T5I1sSy
a9t0NzheikDPQ2UVIUzcUfr2YwvOcXs+V3PBLL5a+dSuovbYQ+qQNwfFaukRccNB
1Roix6BpWYac8JqAzMb8T4qCYBJhcNtbwvm1VCMsUGQ8tWgwQ9ltSHt2+4F+Isef
qR+7nGgbcY8ULTc9X1xE
=vviI
-----END PGP SIGNATURE-----

--2F7AbV2suvT8PGoH--
