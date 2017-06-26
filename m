Return-Path: <leon@kernel.org>
Date: Mon, 26 Jun 2017 21:25:50 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Levin, Alexander (Sasha Levin)" <alexander.levin@verizon.com>
Message-ID: <20170626182550.GF1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
	<20170625190529.GV1248@mtr-leonro.local>
	<20170626050052.GE17296@kroah.com>
	<20170626060332.GA1248@mtr-leonro.local>
	<20170626152115.fs2c7qosncoeu54d@sasha-lappy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OzigliFs3e0dNr73"
Content-Disposition: inline
In-Reply-To: <20170626152115.fs2c7qosncoeu54d@sasha-lappy>
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
 versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--OzigliFs3e0dNr73
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 26, 2017 at 03:21:10PM +0000, Levin, Alexander (Sasha Levin) wr=
ote:
> On Mon, Jun 26, 2017 at 09:03:32AM +0300, Leon Romanovsky wrote:
> >OK, let's start in small scale and limit myself to MODULE_VERSION at thi=
s stage.
> >https://patchwork.kernel.org/patch/9808651/
>
> Isn't it the case that something like this will actually break the ABI?

=46rom the responses, the answer is NO, it is not ABI.

>
> I assume that a bunch of different companies have scripts that pull out t=
he module version out of the module and make sure that it's at some value t=
hat works with the rest of their tools, right?
>
> I also have to assume that these scripts will horribly break when the val=
ue just disappears.

It is the same as to rely on console prints as reliable source for those sc=
ripts. It is broken by design.

>
> --
>
> Thanks,
> Sasha

--OzigliFs3e0dNr73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllRUa4ACgkQ5GN7iDZy
WKeIbxAAy+jvniGUFjX3SDEFQ2p3IyfbKngzWyn60mHSKBPcEKe4U++2JTj8gyaS
Ns1AMHDnI9+TR/ezkt0g2meKMzgFou0GtdQj15nIAMYCwTo9xYvTY9eE29nMLZe6
R7BkfLEdtiXEKdoHXOWkl0V7hCQrAn/Ot/sn1bZJ2BGBWqRCNrWxlKQ676LJfL3v
FxETl+ebylPer1BcRTEKz+7jlNGhwqsePJbx7PTBXlh2SSnAHlRICXYUgIYkpsXs
0rme9vEsJiAHR/5/pomABbAZYQrycWbeNq8phHt2xCnDteKYNeNlty70KRDHdk2j
07eK2El9LVV6wAEaNL9sK0J4zM9ogjPQ7g8u92kNKQMokI/mmL5zXXAIoGZkSnAx
v/v8wOIL1gKdpAoIW3p0wdh3hrQzZpGQREb+BP5O7BqMzmLqBCwelC3sOjVFVVcE
1ct/7emZS9NT9xhVihJnuls5ceuXuPGawUSUCFExB5PafYhGoQRjkPJzNkF3ScyF
JdO81R1n6JtNqMBTEGItxYFJHTiRcVQrjGoscIXdEh/oSizNMS8v2vNs+uc/8YKx
whqmVqfELR/6MZbv2D21aYJ9QbkzI1bihBh9bDQMIACpEq3A1cU9OlPwfd/m8WKP
Q8QzUiT3CCI0Z4fFFuKDIb8rCG52TfiSp8qOZFEtVynZm7lRL2c=
=q3hx
-----END PGP SIGNATURE-----

--OzigliFs3e0dNr73--
