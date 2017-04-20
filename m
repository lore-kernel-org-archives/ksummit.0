Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F010AB5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 19:26:27 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCB5E273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 19:26:26 +0000 (UTC)
Date: Thu, 20 Apr 2017 20:26:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170420192615.tflncgfggdgpyptf@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="66euyputlgh7wqbp"
Content-Disposition: inline
In-Reply-To: <CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--66euyputlgh7wqbp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 20, 2017 at 10:53:54AM +0200, Daniel Vetter wrote:

> Related to this is that there's no single stop-shop for driver
> submissions for the arm platform stuff, but it's all split up. Fairly
> often that means at least one of the maintainers doesn't like your
> face, is on vacation or leave, burried for other reasons, or at least
> has slightly different ideas about what color the bikeshed needs to
> be. That makes contributions for people who just want to get their
> driver for a given platform in a pain.

> For non-arm-soc ecosystem drivers things seem a lot more relaxed and
> efficient and sensible.

I really think this is more of a cross subsystem issue than an ARM issue
- I'm seeing it come up just as much with x86 stuff these days as ARM
(more so at the minute, though I think that's just a bit of learning
that's going on).  x86 has historically been simpler hardware with less
interaction between blocks that triggers cross subsystem issues but
that's becoming less and less the case for the laptops.

Most of what I'm seeing these days goes pretty smoothly, and we're
reasonably well decoupled for the common cases so things can make
progress even if one bit does end up getting stuck.  AFAICT the main
issues are the normal maintainer scaling problems.

--66euyputlgh7wqbp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlj5C1cACgkQJNaLcl1U
h9CaGQf/cZ7w1oRozD357y8LZmc7HkJCtLXFNWye128PQGNaMTwrXFDiQyPdke91
I0XIURfv14Btfts6/ddWuIuedv/diyIxu9hpN4UsqD3z7RIIEImW4LaO0hisxwsy
0uKHg0N0/gzhv/hojuIiU5ezfvAauPjlRJiqimHQNWihq+BGomtRmOl6obAfRVr1
3V1owUZIc9CBAMK751gWT2rJpaYHccULE3TxgsVlfvAiNffMUYJ4mzBUzRklDYde
LIxRi8s8Lc2D4RU02F3pM+c2Din1lAPInQMLP5iZAFwMztYa/Sbh5ragiuWOE97r
tia7ve67mrA+MMKU62Gf+tkKaD6GCA==
=0kFo
-----END PGP SIGNATURE-----

--66euyputlgh7wqbp--
