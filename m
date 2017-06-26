Return-Path: <broonie@sirena.org.uk>
Date: Mon, 26 Jun 2017 13:19:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20170626121939.qedzaccvqflhocq6@sirena.org.uk>
References: <20170623123936.42dab05f@lwn.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iuakhqncj6idlb2l"
Content-Disposition: inline
In-Reply-To: <20170623123936.42dab05f@lwn.net>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--iuakhqncj6idlb2l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 23, 2017 at 12:39:36PM -0600, Jonathan Corbet wrote:

> I can continue in this mode, but I do wonder if there's a better way out
> there somewhere.  So I think there would be value in a session on the
> maintenance of "subsystems" that don't fit neatly into the kernel
> source-tree hierarchy.

One thing I think it'd be good to do is work out a sensible way of
keeping the maintainers of the relevant subsystems in the loop on things
- a combination of the mechanics and how much effort we want to put into
making sure people have at least seen things.  For example it looks like
the regulator DocBook got converted to RST without me being aware of it
(it seems I did get copied on one mail at some point but I can't have
read it and there don't seem to have been any resends), that case isn't
a problem itself but it seems like an area where things could end up not
running smoothly.

I know I rely fairly heavily on subject lines to filter what I'm looking
at since some of my subsystems mean that I get copied on lots of random
stuff that's of at most passing relevance to me which ends up being an
issue with things like DT bindings sometimes (I think this is also part
of what went wrong with the regulator conversion) but that doesn't
scale since the subject lines can't easily be useful for multiple
subsystems simultaneously.  I'm not sure what else to do though, we
basically only have the subject lines and CC lists to work with here.

--iuakhqncj6idlb2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllQ+9oACgkQJNaLcl1U
h9DzPgf9FEfydp+rh5xvprRU7IT95CuTNgXabmNobpvRtdD/xW+PX0djiGgUQjG1
GBjqodS5hZAzkkk88PtVFDsH4dZNAXEO0oyfqI8CB8CohYJsP+VELS0UAK5NxCVv
IPnKid9QrP9lXgop640S7nkR7NIercIj5D8NGu/ck0ldwh+Z2kTWAmmfmNZB9GqC
etyxhNwTMJW1bxubT8r5yWE2bPJ6C/GrTv12oNrIWUoc+KZmg1F5JmveB7aKcZWe
AtcjJldRnoCCV/+e5LnqmDq4NZtyLmnpesvS7h/YkYhzaarAGdVwlrZM25wJcSsc
CI1p592BHX3xTCQcMN8ZNS3WBs2FZw==
=aOB5
-----END PGP SIGNATURE-----

--iuakhqncj6idlb2l--
