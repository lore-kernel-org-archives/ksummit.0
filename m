Return-Path: <broonie@sirena.org.uk>
Date: Wed, 7 Sep 2016 19:49:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Message-ID: <20160907184938.GB3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<2181684.5VzIQ6DWv4@amdc1976>
	<20160907093250.qmmcmrq2g64rjmif@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KPK+YGx+4g/J2wGm"
Content-Disposition: inline
In-Reply-To: <20160907093250.qmmcmrq2g64rjmif@localhost>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
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


--KPK+YGx+4g/J2wGm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 07, 2016 at 10:32:50AM +0100, Catalin Marinas wrote:

> Trying to get on-topic: where organisations providing kernels like LSK
> (Linaro) can help is offering to integrate/maintain the SoC back-port
> while encouraging the SoC vendors to focus on developing against the
> latest upstream. It looks to me that on (too) many occasions SoC vendors

You can sit between a vendor and their customer during bringup and
integration if you want to but I'm not sure you'll find many other
people willing to do that, and I'm not sure that anyone else would
want a third party in that path anyway.

> take LSK as their development base for new SoC ports, making the
> forward-porting effort significantly larger (and potentially ignored).

I'm not sure that one direction is that much harder than the other TBH,
it's more about the motivation being there in the first place.

--KPK+YGx+4g/J2wGm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJX0GFBAAoJECTWi3JdVIfQRq0H/iN6l/nLkBNjNnfkZBhuBgrx
bQVabBp+NimX4BrsQHMGhcNJ8rHGYI3tg4W4UAf4EfdMxraZ8BhO34SpodW48vwB
aWNwx2US6Tp50bjVcb7+qLpW1/I++q90tsE7YV9i28vvvKXeCVWXYIE6AKmEgHnQ
4jPODGZt+F6cipTfx74qGASYWMnxixi+U1pTszKHH3qoI4aRF/yHuSH+dPWbLftP
FuUM88YS0WqdMvVgUuM/E87Cgs8VXh121w0zi6UfudCCTsYbThJFcctEb5NRvv0V
a8fysECp/Z+32BeHHvmfND7KwEjded6b46fBEcTasG3cMW7us9hYoDi/7UWs568=
=uRJu
-----END PGP SIGNATURE-----

--KPK+YGx+4g/J2wGm--
