Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 531F834
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 08:14:02 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B63B218A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 08:14:01 +0000 (UTC)
Date: Wed, 9 May 2018 17:13:49 +0900
From: Mark Brown <broonie@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Message-ID: <20180509081349.GN13402@sirena.org.uk>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508144958.GU98604@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GoZzJvFfKjxI3RhA"
Content-Disposition: inline
In-Reply-To: <20180508144958.GU98604@atomide.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--GoZzJvFfKjxI3RhA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 08, 2018 at 07:49:59AM -0700, Tony Lindgren wrote:
> * Theodore Y. Ts'o <tytso@mit.edu> [180508 03:50]:

> > The people who run Linus's tree and test -rc kernels tend to be kernel
> > developers and individual users who want to run bleeding edge kernels
> > and who generally are technically clueful.  If you were talking about
> > SLR cameras, you'd call them the "prosumers" segment of the market.

> Yup that's the category. People tinkering with their devices and
> using bleeding edge kernels because of some new device driver only
> being in thr -rc series for example.

You also get some people who are intending to ship on stable kernels but
are tracking upstream during product development so that they can be on
the most current stable release when they go to production.

--GoZzJvFfKjxI3RhA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlryrboACgkQJNaLcl1U
h9Dc+wf9F0r5XKEnBqY47HacZAQWOE4q7THQOV5bQCpuOCIwff7HNyX1jVBSX/ae
ZQvShjCsxZzoMNK+W3U/89FjBeUF8q/mZwIocoJpcvZUlFdoFzIVQcrsVk9SH5HF
DPdFjDvnu5KuT18T7d3wGobpyOr4w60tO8kzt9XjPIyrfdR9vwoQsLz4rtNVWJle
FoIJXFmKSo41MllAC6pKYbj4iTkX52KyH/2yvxF/a/usMHVIzOOu2FbsttOHTX3P
mYE2LgQgLD3mZvVp+MjYo7wpJ9Qn8Rj2X3xSP8SrPKHe5HtdXEBWNwo5s+lNIcvv
MqKmdK3DO6LEiyUnV2yb+s0riEPvLA==
=W2PF
-----END PGP SIGNATURE-----

--GoZzJvFfKjxI3RhA--
