Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3383C3A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:52:35 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 83CD33D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:52:35 +0000 (UTC)
Date: Wed, 5 Jul 2017 15:52:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170705145220.5u3qpxs45sbbpzpx@sirena.org.uk>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705103335.0cbd9984@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a3t5jrkhyxb7pr6h"
Content-Disposition: inline
In-Reply-To: <20170705103335.0cbd9984@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, Shuah Khan <shuahkh@osg.samsung.com>,
	Thorsten Leemhuis <linux@leemhuis.info>, linux-api@vger.kernel.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--a3t5jrkhyxb7pr6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 05, 2017 at 10:33:35AM -0400, Steven Rostedt wrote:

> That is, Thorsten this is more for you, how much real regressions are in
> hardware? A bug that's been there forever is not a regression. It's a
> feature ;-)  A regression is something that use to work and now does
> not. Is that number still as high with hardware? Those probably could
> be where tests can be focused on.

A relatively common case IME is things that were always bugs but depend
on some external thing to become visible, like someone trying to use a
device in a slightly different way, doing more detailed testing of some
kind or some subsystem change.

--a3t5jrkhyxb7pr6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllc/SQACgkQJNaLcl1U
h9DDKAf+IROjxxFTVkAZxbs8ff5gq9x9iYzNIluUBjgp/JEXQvsiIQhZgp2wtlTf
2k+FvNncfPCbQzqie7TBUj2jEOKJHfLsf8LgINPzhZxEHZZlFO1ltNXG7tbQ26JW
fFH1bVL0FNeU82VdP7ibVHOGZPvRCLubVzaAYv5ucNikw8elapdGnl18eXFDWfvo
7TuAziUM1eRiK+6jgewCEZunSzBqIel4QSPfTrE0yGbaz6tykIHwdNixX7A/sbBZ
OHXaOEfrO7+bkDYpprtQMSsh/w14U7l9+UWoCPfLDwmg5ixTxBA8bSsAeR9iSOCE
JFdEZ2CRvxyYPhsS0aL+8WJJ7tjwSw==
=N3HG
-----END PGP SIGNATURE-----

--a3t5jrkhyxb7pr6h--
