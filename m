Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B313EB4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 14:49:48 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AC8B1AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 14:49:48 +0000 (UTC)
Date: Thu, 20 Apr 2017 15:49:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20170420144933.hm4hd3zwvryjbucq@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<87wpafsdbl.fsf@intel.com> <20170420105933.GA26134@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k55vgk63mpijzywp"
Content-Disposition: inline
In-Reply-To: <20170420105933.GA26134@kroah.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Dave Airlie <airlied@linux.ie>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--k55vgk63mpijzywp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 20, 2017 at 12:59:33PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Apr 20, 2017 at 11:17:18AM +0300, Jani Nikula wrote:

> > 1 stable, 8 longterm, and 1 eol'd longterm kernels. The oldest longterm
> > is based on a five years old release.

> That 5 year old kernel is due to Debian's looney release schedule, go
> take it up with them :)

A combination of release schedule and lack of desire to update kernels
mid release.

> > I just think the multitude of longterm kernels are sending a message
> > that it's perfectly fine to stay behind. Don't get me wrong, I know why
> > they are there, but I still think in the past the focus on encouraging
> > to always use the latest stable kernel was stronger.

> And how do you suggest that we do that any more than we currently do?
> (i.e. I go around and talk to companies all the time about this issue,
> did a tour of Asia last month, and will be talking to some US-based
> companies next month.)

Honestly at this point I'm not even sure how much of an issue it is with
the idea that people should update - as far as I can tell the main
problems are similar to the things keeping the enterprise distros from
upgrading, not wanting to introduce large change in something that's
already production.  I'm not sure we have any good answers there really
other than gradually getting through the technical debt with upstreaming.

--k55vgk63mpijzywp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlj4ynwACgkQJNaLcl1U
h9B42gf/QnEFcOLi4+CXnCqPE3VBbUW3GiI7Og0U2BK3wbnLKjqz880R2XMka/B/
CCPLqFusyHQ+dL2Kc/3WdIPfdBY6od8+zxkKxlwCgrab+1Rf5FchKHqGoQH3vNIl
J4TvI9uZwX3BzUTW6UlGEHrtXww6Qg+2j6WtlIO6iQXDjuBUSUTFLqHdJqXYWKJ8
/jr6//Otm8rxc8Vb5cPrDdaQm0kA51l+JUGGZEQ5Sev4KGhjagmj/7soNj3Uipcr
dosY18lULMVu7+iMprEMswbcRXM5KR/PzZthe5dDFzI0LjcvSJ1DWw2Iw7Z31N2Z
opsZy9NQr/T+Fh6CwNbEoBfHzA87Ag==
=iA00
-----END PGP SIGNATURE-----

--k55vgk63mpijzywp--
