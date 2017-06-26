Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A2838DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 16:34:49 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7C00923C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 16:34:48 +0000 (UTC)
Date: Mon, 26 Jun 2017 17:34:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626163441.t4memkvqcqzpmp67@sirena.org.uk>
References: <20170625104850.GA24717@amd>
	<20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
	<20170626111422.GB11688@amd>
	<20170626114946.bw35etwxa2nungsi@sirena.org.uk>
	<20170626123853.GB11441@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jtqp2bok776vcu26"
Content-Disposition: inline
In-Reply-To: <20170626123853.GB11441@amd>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--jtqp2bok776vcu26
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 26, 2017 at 02:38:53PM +0200, Pavel Machek wrote:
> On Mon 2017-06-26 12:49:46, Mark Brown wrote:

> > Those things are true, however this is all handled inside the modem so
> > nothing else in the system sees anything there.  Even if we were to see
> > things this is pretty much just VoIP over a funny carrier (some of the
> > 4G standards are just SIP AIUI) which isn't too hard.

> I'm still asking for one example of system that's properly designed
> according to you.

To repeat what I said previously most modern phones are in roughly the
right ballpark.  Off the top of my head any Galaxy S from the S3 on
except possibly some of the earlier Qualcomm variants.

> It may be "VoIP over funny carrier" -- but how do you suggest we
> handle it? ALSA is for soundcards, not for VoIP so maybe
> /dev/cmtspeech is okay after all?

Whatever is going on we shouldn't have some random driver specific bodge
in there, I don't have time right now to look at it.

> > > So we have /dev/cmtspeech instead of second sound card.

> > That's just whatever random thing you're working on.  It really
> > shouldn't be a second sound card on a well designed system, the phone
> > audio generally doesn't go anywhere near the CPU for latency reasons so
> > the whole system is one sound card.

> First, where can I buy example of such well-designed system?

Pretty much any phone shop.

> Second, no I can't agree. I certainly don't want baseband CPU to talk
> directly to my speakers/microphone, for security reasons. Then there's
> an option to process the sound between sending it over GSM, record
> calls, etc. I quite like the flexibility, too. Latency problems are
> solveable in software -- N900 with Maemo has reasonable call quality.

Your desired system design unfortunately does not reflect the reality of
how handsets are physically built.  It is standard for the audio from
the baseband to be wired directly to the main audio subsystem, typically
either a DSP that's part of the SoC or to an external audio CODEC.  The
physical routing of the audio is generally managed by the application
processor (I guess your security thing is worrying about people
recording audio, honestly I'd be more worried about attacks on the AP
than on the baseband) but the actual data flow bypasses it.  You can
normally set up a recording path easily enough if you want one but the
intention is that the active audio path bypasses the application
processor as it would have done when this was all analog.

The latency budgets on phones are very tight, you're looking at about
50-70ms for the full path latency before you start to see a falloff in
reported audio quality scores.  Since most of that budget is burned in
the network you end up with basically no room to add anything locally,
trying to do anything with the main application processor CPU is very
painful, even the overhead of putting things into and out of a buffer
of the size CPUs typically use is probably going to burn your entire
budget.  You'd need to make the buffer very small and have hard real
time constraints on handling that which doesn't seem like an especially
good idea.

Extra processing is typically done in a dedicated audio DSP that has
hardware intended for low latency operation and doesn't have the
constraints of having to deal with scheduling in a general purpose
operating system.  Modern requirements for things like noise
cancellation mean there'll generally be at least one available
somewhere.

> Third, I already have the system, I'm asking how to support it cleanly.

Off the top of my head reimplement the driver you're using as a standard
ALSA driver and take it from there - I've not actually looked at it yet
(and don't have time to right now).

> > > Is there any GSM audio driver that actually uses sound framework
> > > properly?

> > The modems tend to just be stub drivers to Linux as the audio port
> > doesn't vary configuration at runtime but I'd be a bit surprised if a
> > modern phone wasn't broadly aiming towards the right thing, this stuff
> > started appearing in flagship devices in about 2012.  The speyside
> > system in mainline isn't actually a phone but models what's going on.

> Well, the flagship devices are have 1000000+ lines of diffs relative
> to mainline, due to Qualcomm, right? :-(.

Sure, but in the audio part of that it's very rare to find anything
that's completely off piste - usually it's just drivers that haven't
been upstreamed yet for the most part.  We don't seem to have any
fundamental problem with getting basic phone audio working, it's fancier
stuff.  There's a bunch of stuff we could do a lot better with but
that's pretty much well understood and nothig at the basic "make it work
at all" level.

--jtqp2bok776vcu26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllRN6AACgkQJNaLcl1U
h9BMOwf/ZWTDHKcZyDTNBPINo4NGdeDv/Vq0pIAgKeER6JoGo+5j+e7nrIU/pr9B
vzHWz91C1hko7gYR/bonZgW2568b1UZX1DbZyVdwivFBehyKPosX2MBwt845gZ3G
9A2HJBl9hk6bcHtuFCVJUvSOxGDMiGCTCg0nuHvSx3KOl3Vq6zC5hzJ9jHJcBm4n
X1YyYA18Z4kHlytjBTPygv4W1etdOg9Aghz2Op1rUSoVxPNLXwyw7KE+885tee/Q
71YSaW67dyK3jxyLC5sIkL0VkB0FLyRlKUJ53o1QIKiytrzCTiuIhpquZOOwZQgN
2KFRXE3TG3QNk5oZUaay5lgyHfuTWQ==
=bFJ/
-----END PGP SIGNATURE-----

--jtqp2bok776vcu26--
