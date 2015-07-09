Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9ED62ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:53:06 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78DBE15D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:53:05 +0000 (UTC)
Date: Fri, 10 Jul 2015 00:52:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150709235235.GS11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yPo1CW2ZXioZPB28"
Content-Disposition: inline
In-Reply-To: <20150709194734.GG9169@vmdeb7>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--yPo1CW2ZXioZPB28
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 09, 2015 at 12:47:34PM -0700, Darren Hart wrote:
> On Thu, Jul 09, 2015 at 12:23:20PM -0700, Guenter Roeck wrote:

> > It looks like we have yet another set of diverging maintainer expectati=
ons.
> > Some maintainers will expect me to provide an extra comment, which I'll
> > have to phrase carefully to avoid it being misinterpreted as "I just
> > glanced at the code and didn't find an obvious issue with it".
> > Others will get annoyed at me providing the extra comment.

I guess I'm one of those you're thinking about here - annoyed is very
strong, it's definitely not an active problem.  If it's saying something
out of the ordinary then it's adding value but a lot of patches really
are just pretty routine.

> Why would a couple lines of context be any harder to deal with than all t=
he
> meta-data that comes along with an email including a Reviewed-by?

Personally it's the difference between one line of new text that can be
read by pattern matching and new text which requires looking at the
actual words.  It's not the end of the world (and I'd go so far as to
say it's actually a good thing if it's adding something) but in cases
where I've got a big stack of things I've already looked at where I'm
waiting for acks it does help make things a bit smoother. =20

--yPo1CW2ZXioZPB28
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnwlCAAoJECTWi3JdVIfQyX4H/RtU5HLrB446wrmgNL99oI8i
o81gyh4YaefFZfByd6JH3A1CgfFU+UXkTDwGtccsgCmUinUbXCDiSK0QZCgiyukF
5Hj5H764N0y1ZtiPb976lFRijRedhTSs3C46NOMiUj2ZJfoAuZGlshrmBULS6n8n
D16mnhs5b6w2lIcAIvEhbTXcwxkyKBTkd8bauso6ni7BRudtUfh93yq47pMirmhc
9WC5ndjJRDlF+AaCbFMc7hpyZ0ATJAMsCNKpE1xIOTUirV7cZani4oMOVKfReR64
aturf/cPEFBzGqayjb0e7XAvo5sJ0sM52eJ0G6rUXIDnCujJZoJ0drksCd8RSzM=
=rvQ+
-----END PGP SIGNATURE-----

--yPo1CW2ZXioZPB28--
