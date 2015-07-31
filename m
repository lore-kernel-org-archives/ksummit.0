Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D57B6279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:52:47 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 544F11C1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:52:47 +0000 (UTC)
Date: Fri, 31 Jul 2015 18:52:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20150731175215.GJ20873@sirena.org.uk>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150729133244.GH20130@sirena.org.uk>
	<20150731122227.GA31877@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pMCBjikF2xGw87uL"
Content-Disposition: inline
In-Reply-To: <20150731122227.GA31877@amd>
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


--pMCBjikF2xGw87uL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 31, 2015 at 02:22:27PM +0200, Pavel Machek wrote:
> On Wed 2015-07-29 14:32:44, Mark Brown wrote:
> > On Thu, Jul 23, 2015 at 10:29:02PM +0200, Pavel Machek wrote:

> > ALSA is the right interface for this, this is going to be some
> > misunderstanding on their part about how to use it or limitations in

> That's what I was arguing, but see https://lkml.org/lkml/2015/3/5/606

I can't view that link since lkml.org was down earlier today when I was
working online and now I'm working offline.

> kai> Our take was that ALSA is not the right interface for cmt_speech. The
> kai> cmt_speech interface in the modem is _not_ a PCM interface as modelled
> kai> by
> kai> ALSA. Specifically:
> kai>
> kai>- the interface is lossy in both directions

Yay.

> kai>- data is sent in packets, not a stream of samples (could be other
> kai>- things
> kai>   than PCM samples), with timing and meta-data

This is what the copy() operation in the driver is for, there are other
DSP based devices out there as well as things like USB.

> kai>   - timing of uplink is of utmost importance

Well, ALSA doesn't impose any latency of its own so there should be no
issue there - the overheads should be minimal.

> > the drivers for their particular system (and possibly some unfortunate
> > hardware design, it sounds like they may still be bouncing the voice
> > call through the AP which isn't the most wonderful idea ever).
> > There

> Actually, sending data through AP is _very_ good idea from security
> perspective. You don't want hacked baseband to eavesdrop on you, do
> you?

Given that the baseband is a key part of the data path it's not like
you're gaining anything there as far as I can see?   I suppose you could
argue that the AP is actually an additional attack surface here.

--pMCBjikF2xGw87uL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVu7XMAAoJECTWi3JdVIfQ6v0H/2SYlzE2oBrBqoWi+p+T1aVE
ZxAMmtVZEcZtwSCtUba//HACyhyF7c0/sr1Hgw9CIFR4lYvFi65GQM+2uDMOj9y/
9f43n307u0FfvajMAwn0e5wCqx2Hd1kU26QH1KOs7nzxtplGyr4ITRcBXiAE9y4j
52aGk32yoYOTp5kLRaEj/pTOM5ZEPxGCzpc9o4afXVA3sjyJVid5hfkB/x4hv0Ns
uXmQg1RVh4SAMmeQLuwL9P675+IUsvTLZJPFDoj6VhYPNGEw6/9FdpyP5lS5x3it
0aww97dIIsVrLVahzNwCbMiAYy39DtqgAP5f37LpatgCQP3GV/1cLgS3IASslnk=
=6PVz
-----END PGP SIGNATURE-----

--pMCBjikF2xGw87uL--
