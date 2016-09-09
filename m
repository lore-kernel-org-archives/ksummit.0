Return-Path: <broonie@sirena.org.uk>
Date: Fri, 9 Sep 2016 12:48:15 +0100
From: Mark Brown <broonie@kernel.org>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Message-ID: <20160909114815.GL27946@sirena.org.uk>
References: <9895277.d39OTXtlqC@avalon> <20160906003532.GA3950@sirena.org.uk>
	<1473175831.17204.29.camel@HansenPartnership.com>
	<20160906194404.GA22363@kroah.com>
	<20160906222058.GS3950@sirena.org.uk>
	<10203253-0df5-4ff3-8cd4-9e6b38661d57@email.android.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73F2@USCULXMSG01.am.sony.com>
	<20160908191930.GA32595@kroah.com>
	<20160909104545.GG27946@sirena.org.uk>
	<20160909110328.GA6356@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Mit9XoPEfICDqq/V"
Content-Disposition: inline
In-Reply-To: <20160909110328.GA6356@kroah.com>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Baolin.Wang@linaro.org
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


--Mit9XoPEfICDqq/V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 09, 2016 at 01:03:28PM +0200, gregkh@linuxfoundation.org wrote:
> On Fri, Sep 09, 2016 at 11:45:45AM +0100, Mark Brown wrote:

> > Baolin wrote all that code from scratch - it's not based off a vendor
> > tree.

> Oh that's even worse!  Well, worse from the case of "the vendors
> shipping this type of functionality really do not care".

Well, another way of looking at it is that one of the big goals people
have in funding Linaro is to get this sort of shared problem worked on.

> > > That's kind of proof that upstream is being flat-out ignored...

> > Or that people were working on other things, it's not like this is the
> > only thing that people are missing in mainline.

> What is the list of things that you know of that we are currently
> missing?

There's a page in the elinux wiki that people have been using to track
some of this (intermittently it must be said):

   http://elinux.org/Kernel_areas_of_focus_for_mainlining

which focuses a lot on specific functionality rather than higher level
things and obviously internally people will look at their own pain
points.  There's things like big.LITTLE (the EAS work) and system wide
voltage and frequency scaling which are needed for competitive products
but aren't on there.

--Mit9XoPEfICDqq/V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX0qF+AAoJECTWi3JdVIfQH+EH/0UU1wo4lS4AmwmfAvNmeHHO
fEWSPvY2aFesz/s2t896GlmNSxuvn1YYffQfvHZBISwJuBm0PmrSZdvdxPSl/pPH
XI5lzu7Llt1Iw5SHCx/vGIrq+vt99jff6YAfEOEsaFRRmZZIyBx/lSFBkOAHju6I
OtQMSYDQsYXIraU0aw+xeqbjO14Od1fTEDZJygruLcCQQf4qGavDC03iODnrXSJc
3CPBTz2m1kSnC29tByivFqLvS2UySN0G/F49YDHRI10qqinmzQRVWA9fc8kDiget
gvp+P0RTHhuxx97aKnMoEIvq9ExLgcE9wVeSx6Ji7RLEim09qUntj1lpqciP7YI=
=mIDI
-----END PGP SIGNATURE-----

--Mit9XoPEfICDqq/V--
