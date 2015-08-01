Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC973409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 10:55:48 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A56E165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 10:55:48 +0000 (UTC)
Date: Sat, 1 Aug 2015 11:55:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20150801105522.GP20873@sirena.org.uk>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150729133244.GH20130@sirena.org.uk>
	<20150731122227.GA31877@amd> <20150731175215.GJ20873@sirena.org.uk>
	<20150731220306.GA7867@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TRkqPRiqIDKgfg/F"
Content-Disposition: inline
In-Reply-To: <20150731220306.GA7867@amd>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
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


--TRkqPRiqIDKgfg/F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Aug 01, 2015 at 12:03:06AM +0200, Pavel Machek wrote:
> On Fri 2015-07-31 18:52:15, Mark Brown wrote:

> > Given that the baseband is a key part of the data path it's not like
> > you're gaining anything there as far as I can see?   I suppose you could
> > argue that the AP is actually an additional attack surface here.

> Actually yes, I believe I'm gaining a lot.

> If baseband is directly connected to the microphone, it can eavesdrop
> on me while the phone appears to be idle.

Oh, right.  That's not an issue since there's generally routing control
in the rest of the system (within the CODEC and sometimes elsewhere
also) so you can isolate the baseband from the local audio sources and
only connect it in call.  When not in use the CODEC will be powered down
and even when in use by the AP you'd usually not route to the baseband.

The baseband normally doesn't have sufficient physical access to
relevant control interfaces to get any input.

--TRkqPRiqIDKgfg/F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVvKWVAAoJECTWi3JdVIfQ+QkH/RFqeS8TRIrI8kGA2GCSKNwJ
ae7KEvr2xMQitVTNrsfY8YXoHC/8CZ83Wiw67zdJJpS8vDFu8XPAezomjRtZNwOi
GZsaDpuTqI1iHo70dE+E981eirftZMoU+HylvHLJgoWhT2bm0mX9DvXiG+hIBCDS
rTDwyXKHKMrGx3k9fntj9OLD3lk4mcRLo70R+wROmB08E5oSE4dj/DE2DZZK0n0N
BI8BjcrJ28bhCey0vm06KSijfvam/FnvMHwadm5digC3k898e5jtvZBAt6f8SIuz
dS7fpxCzrhsPKbVrQ7QI6OBDTgSEdGZXCrk5MjYM1u3GNwgIfNMqMpeK8tWa1A0=
=QlQ2
-----END PGP SIGNATURE-----

--TRkqPRiqIDKgfg/F--
