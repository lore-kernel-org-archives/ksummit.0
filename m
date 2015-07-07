Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 317B4B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 18:28:20 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C023F19C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 18:28:19 +0000 (UTC)
Date: Tue, 7 Jul 2015 19:28:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150707182814.GG11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<20150707171819.GF11162@sirena.org.uk>
	<559C11C4.80301@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BqNvIJgrK1/MQy2W"
Content-Disposition: inline
In-Reply-To: <559C11C4.80301@roeck-us.net>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org, grant@secretlab.ca,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--BqNvIJgrK1/MQy2W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 07, 2015 at 10:52:04AM -0700, Guenter Roeck wrote:
> On 07/07/2015 10:18 AM, Mark Brown wrote:

> >Off the top of my head the automated ones I'm aware of are Olof's build
> >& boot test, Dan running smatch and I think some other static analysis
> >stuff, someone (not sure who?) running some coccinelle stuff, Coverity
> >and I've got a builder too.

> Plus mine, of course. Only part missing is automated bisect and e-mail
> if something starts failing.

> Which reminds me - do you use buildbot ? I think you are sending automated
> e-mail on failures. It would help me a lot if someone had automated bisect
> and the ability to e-mail results using buildbot to get me started.

No, not me - all my failure reports are lovingly hand crafted using
traditional artisan techniques.  Kevin, Tyler and Fengguang have things
but apart from 0day I think everything is still manually triggered.

> Not really sure what to do about it. What turned out to help in the last
> two companies I worked for was automatic revert of broken patches. That
> sounds radical and I dislike it myself, but it helped.

Perhaps that's something we should be discussing?  It may be something
that we just evolve a solution for as we proceed though - right now it's
largely theoretical.  For -next Stephen will often carry extra patches
that make sense.

--BqNvIJgrK1/MQy2W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnBo9AAoJECTWi3JdVIfQZxoH/i2TlJhkU5tPr8bmNJySeBTn
+Co68MTcUKg/ObAN0DGQcrKMh8xCoL6hXDpAWb4vBqStP5yL+jrXyO5n659QU66m
G+1jC35wbM8bYgi7ADVm0W0zX9kB69afmnx0zMYmf6tq1aSRUXek43WqnPqyT5pv
zI8JLa19//Cga/TFQcxAK2COcst5iduN33pIWpgBDXDJCvsWvGeKjrYUtapBLQLr
js8TtICC5FVWN+FQjkVTMM3IW61jZtnulPMyFyur6Zc7b+jMFxkRdNYWvpBQuUY7
1g4Kd87tUjrla0odcdlogTj7xUwZBZKoCFXuUIwQDXa64X1BPttvSwD7nGLWWvc=
=8r93
-----END PGP SIGNATURE-----

--BqNvIJgrK1/MQy2W--
