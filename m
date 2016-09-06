Return-Path: <broonie@sirena.org.uk>
Date: Tue, 6 Sep 2016 23:20:58 +0100
From: Mark Brown <broonie@kernel.org>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Message-ID: <20160906222058.GS3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon> <20160906003532.GA3950@sirena.org.uk>
	<1473175831.17204.29.camel@HansenPartnership.com>
	<20160906194404.GA22363@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="S1dYL6sY+prtcMLk"
Content-Disposition: inline
In-Reply-To: <20160906194404.GA22363@kroah.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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


--S1dYL6sY+prtcMLk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 06, 2016 at 09:44:04PM +0200, gregkh@linuxfoundation.org wrote:
> On Tue, Sep 06, 2016 at 11:30:31AM -0400, James Bottomley wrote:
> >    3. Increase the pain. =A0Not sure I like this, but in theory, we cou=
ld
> >       churn the upstream API to increase the pain of upports, but it wo=
uld
> >       also cause a lot of issues with backports.

> I tried doing this in the past.  It did cause pain for out-of-tree
> modules, but then they got really good and abstracted things away so
> that it made their future kernel porting efforts even easier than
> before, making their need to upstream code even less.  And then when
> they did want to upstream stuff, it took more work unwinding the
> abstraction layer.

> So watch out for unintended consequences here :)

The other big unintended consequence I'd worry about here is that it
will present an obstacle to someone who wants to try to upstream
something while working in a downstream environment - if someone is
looking at some code but the changes for upstream are too great then it
might make it too much work for them to try if it's not their primary
job.

I'd also worry about annoying people who are working upstream as well,
it's annoying having things break randomly due to API changes (both as
the submitter and as a maintainer or reviewer).

--S1dYL6sY+prtcMLk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXz0FGAAoJECTWi3JdVIfQpMQH/36d0licjSPTgDUyd2gX9jDt
aEdXYueYcfglwY87S7oKzQU0aRalIfsPfB5QpdQKKF5jZgDwAJLWdOek0w6s5D6X
e+pVr9dTkrs7vR2f6iBoPNCXh4XBIySk7xo++8Efxaemi4ztW0d0OqQjvZt+YQxB
t2FmhvZ2WqMjHvj7wI/qajLVeuKckk+oiGADy1Xw/Hf/n4DUL70Cf7slFxYixqwH
YAZJ/+9fRbmCTSFS2WK8Fa5/q5wQHtqXOejjHpkPTab4IjmnQWiPjgtRaycLVaCV
rLVS0aHYe9Eae2tfdzSiTKV/6OJC2Elo2Hxz3V0o14W8w6DRbFGwoyqGubXVPk0=
=/yDi
-----END PGP SIGNATURE-----

--S1dYL6sY+prtcMLk--
