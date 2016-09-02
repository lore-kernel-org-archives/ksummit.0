Return-Path: <broonie@sirena.org.uk>
Date: Fri, 2 Sep 2016 10:59:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <20160902095900.GK3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160901194353.75caf73a@xeon-e3>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Zl+NncWK+U5aSfTo"
Content-Disposition: inline
In-Reply-To: <20160901194353.75caf73a@xeon-e3>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "Levin,
	Alexander via Ksummit-discuss" <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Zl+NncWK+U5aSfTo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 01, 2016 at 07:43:53PM -0700, Stephen Hemminger wrote:

> Agree, calling it a stable kernel is a misnomer; it looks like a fork.=20

The name predates me but I believe it comes from the fact that it's
shared development on Greg's LTSs (plus Android versions as those don't
always line up).  It's definitely *not* -next which people find implies
rather more of a bleeding edge than we're aiming for.  Naming is hard.

> It really should be:
>  Linaro Arm Home for Features not Upstream Kernel (LAHFUK)
> or maybe linaro-next?

The goal is that anything in the actual LSK is actually upstream and
backported, we try to avoid out of tree things (this is why OP-TEE isn't
in the LSK itself for example).

> How come the feature matrix doesn't list what upstream kernel the feature
> was merged into?

Apathy mostly (I guess there's at least a range indicated in the point
at which the feature gets flagged as being in the base kernel), plus a
desire to not end up documenting all upstream features but rather just
things that are backported (some of the things that are pure upstream
features there were previously backported in older LSKs).

--Zl+NncWK+U5aSfTo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXyU1jAAoJECTWi3JdVIfQlEMH/2wC2vUxitulqmpsbJu5TR38
DSvq5ME27vkQH11SUiRu41ctJxEOc1SFSufNoDiVey1dcdbICAWdsM4xHp6Mmrlc
1ed6PuKXxNA5Dj9rUZ2iWrZQnIF8Wji5wNqurNDX9HvBFfJ12JzE3ACEUM30Vx0k
BhR6E46dtmbvniictkPv0WibdYtqdEnRdrin+mRiXAEflFVWhNcq1factJnlNoIO
5fTf+/Djl/wJJ5W7WylFG5hy3InYgTR5kaLejqjd6faWX77y7GpGYW0ZbVvUhGEz
jgMOpvubHfuyC1ER6iW+kDaBy+N03uIX4wm0xVyZqMKza4BjxcqLtlIZU56Zb/U=
=qKTm
-----END PGP SIGNATURE-----

--Zl+NncWK+U5aSfTo--
