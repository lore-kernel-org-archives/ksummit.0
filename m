Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCEE472A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 11:40:39 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A530EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 11:40:39 +0000 (UTC)
Date: Tue, 27 Jun 2017 12:40:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170627114026.iwsqbbwytleyurmi@sirena.org.uk>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
	<20170626112052.oze7qxmxiyu67wzh@sirena.org.uk>
	<20170626122224.GA11441@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mob3evo7xbefmy5e"
Content-Disposition: inline
In-Reply-To: <20170626122224.GA11441@amd>
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


--mob3evo7xbefmy5e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 26, 2017 at 02:22:24PM +0200, Pavel Machek wrote:

> > No, such systems can and do work absolutely fine with the existing
> > frameworks.  You just have non-upstream drivers that don't make any
> > effort to work within existing frameworks.  Most of the vendors came
> > round to doing the right thing on this some years ago.

> Take a look at ./drivers/hsi/clients/cmt_speech.c in your favourite
> kernel. It was merged in 2010 AFAICT.

That looks like it went in in 2015, not 2010 - the commit date is in
March 2015, I suspect the 2010 date comes from whatever vendor tree it
came from.  The code isn't super clear but it looks like a fairly
standard DSP streaming interface which should be supportable as a
compressed audio stream in ALSA (or regular one if the data is
uncompressed), there's no reason I can see for it to be done outside of
the standard audio framework.

--mob3evo7xbefmy5e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllSRCoACgkQJNaLcl1U
h9DLaAf+Ki2rYshoWeQ5jljvd1oBd+OPbymUrGwqwYxbbdxQxjBQNoYiIBz4X6x1
JxI7oDgKS/ME7es69eoeNuAeTmSP1vj5zJ9M5sG647L8SeDmOSWUVk4jm0DHZ/fT
MBo/diSrgBMGu3gjefREwlZy905BPUjzOagupL4A6kCKUVqml0oW8E9nHatgKHfg
P+20ayYplCPkZFg/+v5AVgywWOm4iOn0sD3VMq0zFlNUO4b0QVFPFDhQE56pSyoL
uLUdZTdTohvX4zO+eSR1IGZoIwo1npenUxeEffkhzCptmwEkPi7NEIrwUhKngvwJ
eLoxjTJ/cSRMH/qDae2ftXiP1nco4Q==
=TKlG
-----END PGP SIGNATURE-----

--mob3evo7xbefmy5e--
