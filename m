Return-Path: <broonie@sirena.org.uk>
Date: Fri, 9 Sep 2016 11:32:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Frank Rowand <frowand.list@gmail.com>
Message-ID: <20160909103230.GF27946@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
	<20160907083312.GO28922@quack2.suse.cz>
	<alpine.LNX.2.00.1609071038080.22028@cbobk.fhfr.pm>
	<20160907184403.GA3950@sirena.org.uk> <57D19A8E.70206@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JSkcQAAxhB1h8DcT"
Content-Disposition: inline
In-Reply-To: <57D19A8E.70206@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
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


--JSkcQAAxhB1h8DcT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 08, 2016 at 10:06:22AM -0700, Frank Rowand wrote:
> On 09/07/16 11:44, Mark Brown wrote:

> > As people keep saying that's not really entirely it - the timescales on
> > consumer hardware are *much* tighter than those on server hardware which
> > does make a big difference to what you can do here.=20

> You might be surprised about server hardware. I had a project where I
> had to add kernel support (in a proprietary unix) to a release that
> shipped before there was any hardware to test on.

Right, and there's some consumer hardware that turns much slower for
various reasons but on average...

--JSkcQAAxhB1h8DcT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX0o+9AAoJECTWi3JdVIfQHYoH/2WVORhHSlYvFfZJjgzbSgQ4
SJ3WQStDnaGmoEP4um2P5mE4hAQhVTgbS/i02SvMHgEtmV6uvfoQ7lpyIO8IPrae
ehmBeuL8OijUSL7DijaNU4jZYr9xpofGKmqqL9EEOxxNUL9cQyKungf673fkyJ10
GJN+8nQDwcbyiQ+faExVhP/xB1wqcNtrLnt5VlOZSeseww0ZeU4JLkZiPxO2Tucz
3+LqBqogJ2DmEzZdjhvNbwKvhCt5a4WzZmYdDjT7kGSx/SfiQbBo0lxEE/tRXrSS
spvQslcbhV7+Rk6VHYq7koZrsaImwLpM+ICn70ohP6OjUOYBkUYMLHDjTeODUhs=
=c8/k
-----END PGP SIGNATURE-----

--JSkcQAAxhB1h8DcT--
