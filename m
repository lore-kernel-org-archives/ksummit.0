Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2315EF36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:08:46 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95E5B42D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:08:45 +0000 (UTC)
Date: Tue, 18 Sep 2018 10:08:38 -0700
From: Mark Brown <broonie@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20180918170838.GQ2471@sirena.org.uk>
References: <20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com>
	<CAMuHMdXbrJHe_4z5hZO3p-pKS0iU3yjzt5PgP3yzPifhfCb3XA@mail.gmail.com>
	<yq15zz2rgrl.fsf@oracle.com> <20180918152711.GA12609@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KHqYxKoy+XnO4RVf"
Content-Disposition: inline
In-Reply-To: <20180918152711.GA12609@infradead.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--KHqYxKoy+XnO4RVf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 18, 2018 at 08:27:11AM -0700, Christoph Hellwig wrote:

> I did that for the SCSI tree a long time ago, and it did not work out
> at all as the few core changes are usually required by driver changes.

> Note that I've not really seen the split recently in the block tree
> either, probably for the same reason.

Most of my topic branches end up being per-driver ones, with embedded
stuff that often winds up being useful for cross tree merges that
weren't anticipated.  The core changes that affect or are used by
drivers either get the relevant driver changes stacked onto the same
branch or merged into the driver branches depending on taste.

--KHqYxKoy+XnO4RVf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluhMRMACgkQJNaLcl1U
h9CnVQf+M8ev4HFkZvACrXSq3ZLm7jebxhRu1e0JNMYa1LlZzQzHo/yvaubyB0Gn
fyEEdui+PekLtilWPVjKs2iXhkVOvHlSpuotyRS7BihxPSwMsV3vKFQ7fvxggcXm
S3smAGbTa/lvpHvzede+Qr3txXjjIPTbTAWwYu+OtRJlWjmABL506Th28qejBRjk
jHBLiiRYkzyShjN/vtIDVN58p2qdMlSk4JKdXz3AcJkN8kH7vsl+p9MR3ZSxZlyO
F311SA8rbXJXbuItdY6WucshjaQbBAVwvPCKmp9WCbVAMrhAYo2m8sWBUXPRZkZf
MFjMGET/JiL7AKASw/4/9LLmDaPFpQ==
=eorm
-----END PGP SIGNATURE-----

--KHqYxKoy+XnO4RVf--
