Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E176F514
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 21:21:31 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8233D115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 21:21:31 +0000 (UTC)
Date: Fri, 31 Jul 2015 18:55:47 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150731175547.GK20873@sirena.org.uk>
References: <20150723105726.GC30929@amd> <3567831.C87ORqHPr8@vostro.rjw.lan>
	<20150730095903.5cb431a4@noble> <2904825.6WZJacWC6y@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZG5hGh9V5E9QzVHS"
Content-Disposition: inline
In-Reply-To: <2904825.6WZJacWC6y@vostro.rjw.lan>
Cc: Pavel Machek <pavel@ucw.cz>, ksummit-discuss@lists.linuxfoundation.org,
	kyungmin.park@samsung.com, John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--ZG5hGh9V5E9QzVHS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 30, 2015 at 02:57:17AM +0200, Rafael J. Wysocki wrote:

> Essentially, what happens is that runtime PM allows us to reach the state
> in which the system draws as little power as in suspend-to-idle, but it
> simply doesn't allow the system to stay in that state long enough in one
> go due to timer interrupts (and possibly other types of interrupt noice
> that is suppressed by suspending all devices).

> Since energy is the power drawn in a given state times the time spent in that
> state (on the average), that's why the system in suspend-to-idle uses less
> energy than it would with runtime idle during the same period (modulo the
> energy spent on suspending and resuming devices etc, of course).

We could in theory work to reduce the number of these additional timer
and other interrupts further - there was a lot of focus on this in the
past (partly for desktop use cases where suspend isn't such a quick out)
though with the advent of Android and the wide deployment of suspend to
idle that resulted people stopped bothering on the embedded side since
suspend to idle is both simple and effective.

--ZG5hGh9V5E9QzVHS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVu7ajAAoJECTWi3JdVIfQyCsH/RpCowZkBrrk0VU9OTzoVWpG
+3Gaf7R4zS/DFLrwASseG4Th8s/ogUmD4wqEfYqqn5CBrbuleZrpEWu02ENR0eOd
EsMrcBcDoI3V9rtoFFwM7ZOz0Aew4ZcMHDnwB/rDhrtNbsrmPOavP0gcrJW/xxqq
VEyqYvrVTSYF+h4n/I8QMcLHAhDQ/gzCrz2R6GMaeB/VinQEv5Dr89plHRvg20RP
h7yUPoiqE827iB24nV06g0qwUxhbL4YfRCZCoOP3mvBMHASFrsRVn559lplxXRgU
FMYCm3CdFgXPG7McUU65juV6qPd6aYaEkt6yKSgoagG5E+k52tNB6t7pPmtX8RU=
=HmCL
-----END PGP SIGNATURE-----

--ZG5hGh9V5E9QzVHS--
