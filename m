Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31A1A25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 16:01:42 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFCB611E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 16:01:41 +0000 (UTC)
Date: Mon, 3 Aug 2015 17:01:32 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150803160132.GW20873@sirena.org.uk>
References: <20150716125216.0d457104@gandalf.local.home>
	<55BB7397.3090407@atmel.com>
	<1438352566.2179.4.camel@HansenPartnership.com>
	<CAMuHMdUu4_PsiCcz0KX=jw7W7gHPD1WGouYiBg1Fw=L_aFoeCg@mail.gmail.com>
	<1438453195.2182.16.camel@HansenPartnership.com>
	<CAMuHMdX4siOnhTOD=NYa+V35TDZEuMT7q+jpWo8mz9XsgtNB5w@mail.gmail.com>
	<20150802081600.73d54e4e@noble>
	<alpine.LNX.2.00.1508020044170.925@pobox.suse.cz>
	<20150803154950.GU20873@sirena.org.uk>
	<1438617210.2173.18.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Zqkt5x/gGOIVPcL0"
Content-Disposition: inline
In-Reply-To: <1438617210.2173.18.camel@HansenPartnership.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
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


--Zqkt5x/gGOIVPcL0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 03, 2015 at 08:53:30AM -0700, James Bottomley wrote:
> On Mon, 2015-08-03 at 16:49 +0100, Mark Brown wrote:

> > mutt is a bit fun here - it only works if the attachment has a text MIME
> > type which a lot of the systems that force people to attach patches seem
> > to struggle with.

> You mean the windows habit of attaching them as octet-stream types?  I

Something, I guess it's people on Windows systems but I've never really
investigated.

> set my binary handler to be emacs (you could make it your editor of
> choice) so I can pop it up on the attachment and cut and paste quote
> from the editor.  I have to report that this does have some unwanted sid
> effects in mozilla: some pdf attachments come as octet-stream as well
> and the binary handler overrides the file type handler ...

That actually isn't needed with mutt - it will *display* binary
attachements it doesn't otherwise understand as text as a last resort
which does the right thing here.  What breaks is that if you reply to a
mail with text attacments it'll quote them into the reply but for
obvious reasons it doesn't do that for binary attachments.

--Zqkt5x/gGOIVPcL0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVv5BbAAoJECTWi3JdVIfQP/8H/A3rZMubvXEXkBH9C1oqMOqB
bDkLLRNumIGjnshGeO6wnQHasOpV4Md/bzbfoTNSb11KOOpAukhJk7WZ6csmKTqI
BUEk7aqLbB9L/yJWeJNn9RixQQg8dD3p8bnKL4nK6PPrQTtJKl+GATxUXEzCsp8I
ah9PBIjnTuKWefs9DEuA+539n6dCsarbYq5t5iWgE8HHYtxMUYqJ/XJ9qz3Q4sXu
YQ+/plczSpfEA/bk16PTUjVLQGHkWGxTiIjVWHyEFA5q9Oxldm27mMaZObVIlKsv
lqjTfpw2BAtaA0QMCwlEbW8ZLh39N0U+TcZyBQiZdjvUzM7r/ZJC6Feotz5B5N8=
=ZlEr
-----END PGP SIGNATURE-----

--Zqkt5x/gGOIVPcL0--
