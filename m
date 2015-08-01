Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B96F648B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 23:41:54 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 1A81D159
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 23:41:53 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Sat, 01 Aug 2015 02:08:46 +0200
Message-ID: <1526118.B718IU0dUQ@vostro.rjw.lan>
In-Reply-To: <20150731175547.GK20873@sirena.org.uk>
References: <20150723105726.GC30929@amd> <2904825.6WZJacWC6y@vostro.rjw.lan>
	<20150731175547.GK20873@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2512060.Wh5vFcCHC2";
	micalg="pgp-sha256"; protocol="application/pgp-signature"
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


--nextPart2512060.Wh5vFcCHC2
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Friday, July 31, 2015 06:55:47 PM Mark Brown wrote:
> On Thu, Jul 30, 2015 at 02:57:17AM +0200, Rafael J. Wysocki wrote:
> 
> > Essentially, what happens is that runtime PM allows us to reach the state
> > in which the system draws as little power as in suspend-to-idle, but it
> > simply doesn't allow the system to stay in that state long enough in one
> > go due to timer interrupts (and possibly other types of interrupt noice
> > that is suppressed by suspending all devices).
> 
> > Since energy is the power drawn in a given state times the time spent in that
> > state (on the average), that's why the system in suspend-to-idle uses less
> > energy than it would with runtime idle during the same period (modulo the
> > energy spent on suspending and resuming devices etc, of course).
> 
> We could in theory work to reduce the number of these additional timer
> and other interrupts further - there was a lot of focus on this in the
> past (partly for desktop use cases where suspend isn't such a quick out)
> though with the advent of Android and the wide deployment of suspend to
> idle that resulted people stopped bothering on the embedded side since
> suspend to idle is both simple and effective.

In addition to that, while we can reduce the number of those in the kernel,
user space can still do things that increase the number of them and we can't
really control it.  That only depends on what applications are running and
users may not be aware of all of the consequences of running them.

By freezing user space during suspend we effectively prevent it from
scheduling more timer events in the future.

Thanks,
Rafael

--nextPart2512060.Wh5vFcCHC2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAABCAAGBQJVvA4UAAoJEILEb/54YlRxshIP/2r4Tlj27eqbeTxoj6LJ1+rO
oEZ+rC8z7Qq9LbcBz+NR8Iu48thKJ5xsvIFFFCjmdqd/QLQaBRPD1Szul83pkPOR
BYvl9fini1ItNXD3Nt3tiMxSonfvOGCqWPdEXHS0xMCdRpwOf7O9TEzFlgBuFKNY
SyXqwO48gKvEYEHyp+xKaACVROyI7JzVVwjcNhknQorS/7RYL9lksKu2tDkNQTpj
lIkBOw0jWK7kyNkhax6mGOd/x/eGxxDf+x2smE4B+rcyGr6Pi7PajAbn/viFEKxc
vrDBtvG+HLmGwBMTTaPNoPhO8T5ku1iTVrzohm4SGnbYCQKYEjcl3F2plZL5nVeZ
Ozszw1rtyAtEsQ8WeYmJOuYr18NAj2tfGx0QL6ESsWwlCkvVB2EHxXJO7QTjdKlx
HhG8KkpwktTKY7noijjDbxrDAo2uc1CITStEzFtBCLI6sFTNkD8czKr1Q+JqWmje
9Xk+i/D7qhuGbPqaSGnNEVywSg4mhHH+iuFEUTmKo4C7FiCuuS9xqT2UFLCFk/lT
PyCNEO8trsmMcDqVsoCrVZqnbHRv61tdZWjA1fF2vV+K+MeHeFoKkWzFbYXXjUyR
wyQQ1r1d433/b5YAEzx6Y6IBZd5W1jbaHdny9RTiz8ZA50t6kMe3XZWEQPnoxlTT
P31pZUKrcphZ2jE8zHNV
=yUmS
-----END PGP SIGNATURE-----

--nextPart2512060.Wh5vFcCHC2--
