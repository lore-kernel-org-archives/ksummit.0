Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C96092B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 07:56:52 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 058A41A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 07:56:51 +0000 (UTC)
Date: Wed, 25 Oct 2017 09:56:45 +0200
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20171025075645.o5pdtaasuydglhjh@sirena.org.uk>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
	<1508888508.1955.16.camel@perches.com>
	<CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lhfamtkrbyffkslg"
Content-Disposition: inline
In-Reply-To: <CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--lhfamtkrbyffkslg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 24, 2017 at 05:54:47PM -0700, Kees Cook wrote:

> with an "Ack", but no attention from a committer. Having a
> representation of the "tree" of maintainership would be much more
> helpful. In other words, for every section with an "M:" line, also
> something "U:" ("upstream"?) that indicates either another section or
> a person that is the "upstream" for that maintainer. This would allow
> for a sane set of "Cc"s not based on git log guessing, and provide an
> obvious "escalation" path in the face of silence (or uncommitted
> Acks).

IME if you use all matching MAINTAINERS entries rather than the most
exact one you'll usually find the upstream (though there are exceptions,
including things like arm-soc which just isn't in MAINTAINERS at all).

> 7) As seen in this topic thread, some maintainers absolutely do not
> want stuff landing from "outside" their tree. This doesn't seem
> feasible at all, and we do regular treewide conversions at -rc1. It
> would be nice to declare, explicitly, "you need to deal with external
> changes to your tree when you merge -rc1". I thought this was already
> an implicit understanding. (Though in fact, sfr suggested to me that
> maintainer trees should be based at least on -rc2, and I've seen some

I think like a lot of these things this is a tradeoffs thing - sometimes
everything will have to go in at once and we'll have to deal with it but
it's better to at least try to coordinate with people's trees, if that's
not possible it's annoying but understandable.  It's more likely to be a
problem when things just materialize without any warning.

--lhfamtkrbyffkslg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlnwQ7oACgkQJNaLcl1U
h9CMHgf/XrRStxrO/vBnHWDXzPQ6+mgntFIVKFD1CmtTJ+kYzgTp0A1HMCzJhAqX
i1D5BiQRVAtkXkhb5pFsxoxP6ZNXeH43AM57ZHw6iqeLDaQbodcz9e+MLbpxNez6
dcPmc/TYcNvzCFMI5tL9fHFfidT9VBGItGJ+l3EKJPKr1p4JHV64++3EJbyr4esy
Zie61CQ6g9DZK/7IojVE/10K1JAtHAjCfJWVuCFmm0em3kmS1wx1wCF748CAU3gP
PBKzF0RAtmLUCeZaqGT/vAexK5wSZ8ntI+GLGptTeeCn7hUUP+bhvS3SJfkb6rel
wXF/SnYnQKIjr+29WYVm3FtPZwm6tQ==
=dzUk
-----END PGP SIGNATURE-----

--lhfamtkrbyffkslg--
