Return-Path: <broonie@sirena.org.uk>
Date: Wed, 7 Sep 2016 19:44:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160907184403.GA3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
	<20160907083312.GO28922@quack2.suse.cz>
	<alpine.LNX.2.00.1609071038080.22028@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9KMRXrBaLD3S8C0H"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1609071038080.22028@cbobk.fhfr.pm>
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


--9KMRXrBaLD3S8C0H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 07, 2016 at 10:41:08AM +0200, Jiri Kosina wrote:

> consumer space in this area. Consumer space folks seem to be in a=20
> situation that server space people have been in 2.0 / 2.2 era, where we=
=20
> had exactly the same problem with server hardware (i.e lack of timely=20
> focus on upstream in the process).

As people keep saying that's not really entirely it - the timescales on
consumer hardware are *much* tighter than those on server hardware which
does make a big difference to what you can do here. =20

> Also, it feels like consumer HW is more in a "fire and forget" mode of=20
> operation, while server hardware usually sticks around for a rather long=
=20
> time.

This is part of it.  There *is* a long tail lifespan for a lot of
consumer hardware but it is in the lower tier vendors and products who
are for the most part reusing earlier work and we do see a lot of IP
reuse though.

--9KMRXrBaLD3S8C0H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJX0F/vAAoJECTWi3JdVIfQhD0H/1ioMYsgQELgjHAoIaYXZAxL
VRwHt5TLrJtP83VDgVyrn0lmuwcBkbK94LHmlsawuP+hWymDpHNGfBxa+ycuKKYj
4M6xrC8IjhgV8oX9Vp47UjlBn1GSdnrFIGM/jFJIoIdpq8ommQewtWzZ8HvW0jpd
QoPySVECuBJZnW/5aTPgGrez7S0U+/K2LtH5kMGxPjJfykiC8ZkkhEt6juqh9uCn
wCZ2i/TVqzdNIGJuJHsCKcOaWalx75wbUca84lkvHYwPtG8KxQXA/kQzytto5kDQ
KHYwlZiNDz3yRBsrNNRImDDK84qjtM1wI92NmF2Kq6FvsxBa2H04RJ3cB0PTwcg=
=h24G
-----END PGP SIGNATURE-----

--9KMRXrBaLD3S8C0H--
