Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5FA51CDD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 16:24:05 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEC8882F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 16:24:04 +0000 (UTC)
Date: Wed, 19 Jun 2019 17:23:59 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190619162359.GV5316@sirena.org.uk>
References: <20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
	<20190619144808.GI21753@pendragon.ideasonboard.com>
	<1560959179.4729.10.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pLq3kR1izEN1ODTa"
Content-Disposition: inline
In-Reply-To: <1560959179.4729.10.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	media-submaintainers@linuxtv.org, kbuild@01.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [media-submaintainers] [MAINTAINERS SUMMIT]
 Pull network and Patch Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--pLq3kR1izEN1ODTa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2019 at 08:46:19AM -0700, James Bottomley wrote:
> On Wed, 2019-06-19 at 17:48 +0300, Laurent Pinchart wrote:

> > It's not automatic though, if it depends on a Kconfig option that is
> > disabled by default. The built bots can enable it, while users would
> > ignore it. That being said, having it as a per-tree build bot option
> > should work as well.

> I really don't think well made build bots would enable this.  The
> problem with -Werror is it's single threaded on the first problem.=20
> What a generic build bot wants to do is compile the entire tree and
> then diff the output to find the additional warnings for everything.  I
> could see a tree specific build bot being more interested (until the
> build fails on an unrelated subsystem).

If you're doing build coverage you can always use make -k and still
build everything but yeah.

> > All my kernel compilation scripts use -Werror, and that does a great
> > job at catching problems. It can be a bit annoying at times when

>    1. You're going to force us to annotate all those spurious warnings
>       that we've been ignoring because gcc should get fixed; incorrectly
>       flagged uninitialized variables being the most annoying.

The next time I have to write a "this just shuts up the warning, it
doesn't even consider if there might be a real problem" mail I'm
probably going to turn it into a form letter :(

>    2. Different versions of gcc produce different warnings: so now we'll
>       eventually have to target a specific gcc version and not upgrade
>       until we're ready because newer versions come with shiny new
>       warnings.

This isn't as bad as it used to be since we have people looking at the
new compiler versions as they come down the line and trying to ensure
that things work cleanly before the compilers even get released (Arnd
does a bunch of this, I know some of the clang people are paying
attention as well).  It's something the compiler people have been
interested as part of their QA, there's no guarantee everything will be
perfect but things tend to do reasonably well these days.

A similar issue applies with older compiler versions and false
positives, people do look at that but it gets a bit less coverage.
There's infrastructure for this in KernelCI (which is currently used for
the clang/arm64 testing in production), if there were build capacity
available it'd be relatively easy in technical terms to have some
coverage there.

--pLq3kR1izEN1ODTa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0KYZ4ACgkQJNaLcl1U
h9BJLAf+PzIJHcLkjKRVogOUWGCl92tys5DsYMU0pUJjIrx/koU832W2ZGJw8eHS
4L+tR9AHzTFfmXcCrm9GFzvIxq4F4xfybHOTDPJVAb4bVrD032676WWKKRqyZwA3
P+y33cCa+hYlVcIDW2owQugCejG4HMkE2bbjni28+Tj8fd8ZVEAvoG3YXCzEHRmT
AXLYygpnj0EUlCyrJODCmqhKxaOLLCZ/BXqAIlXMv9xet3NEF9J6PlNjpehHflkp
rZd6ubANDO1rWIhKI7witjhecZ1ipNcHFJVE3JzFXRuhHStTFpzvU1/lwS06RKtg
BlZPFvIdhgCD+3g8t57BLRVzQsQeGA==
=xrQ2
-----END PGP SIGNATURE-----

--pLq3kR1izEN1ODTa--
