Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 056C189C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 10:32:12 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E85811C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 10:32:11 +0000 (UTC)
Date: Wed, 3 Aug 2016 11:31:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160803103149.GM10376@sirena.org.uk>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="O6uyWUGY5J97yCxj"
Content-Disposition: inline
In-Reply-To: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--O6uyWUGY5J97yCxj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 02, 2016 at 07:58:07PM -0700, Andy Lutomirski wrote:
> I got module hashing working.  It ended up being fairly
> straightforward.  I still need to deal with debug info and
> disentangling it from CONFIG_MODULE_SIG, but that's just a bit of
> engineering.

I know I let my @sirena.org.uk address leak into one of the other
threads but please use my @kernel.org address, it goes to different
places.

--O6uyWUGY5J97yCxj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXocgUAAoJECTWi3JdVIfQ7PoH+wSA0TFxDgnCl5MsW7CpZ54b
cf7DoH7w2UZcz1s+BvMP1xnJTR4BTcaXPkwRgsqkB90M5g59AC3nGwrzVpvcSUfR
vjM6uzOya6hFfu+yz/Dv4cpPxKJjpDEFZF0Mow5jQDvsgcEDhRoQ9YV0ccnZIGTD
CGIf21l1+W79JULjL0LYAhTowEie1g317zIxBbucS7304hCa9HKhSlBHULjBTSQm
cWNEBvCQ3HChw2t41Go1/0f9Zd3A/IvQEGpdFWdh6rjs5PkJec1TAvSepN7KJU5+
A3jrQmeLr90djBf4AFCx14Gsq2a7M50mmr6QDLu04bN0NPGAeoZsrzo8AKn8WQY=
=cC5n
-----END PGP SIGNATURE-----

--O6uyWUGY5J97yCxj--
