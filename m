Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B647B85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 10:15:08 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A66981F80A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 10:15:07 +0000 (UTC)
Date: Thu, 22 May 2014 11:14:49 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140522101449.GB12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan> <6638836.llWl1tdgvD@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="msuMhlVPES9Pz2Dp"
Content-Disposition: inline
In-Reply-To: <6638836.llWl1tdgvD@vostro.rjw.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--msuMhlVPES9Pz2Dp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 22, 2014 at 02:19:35AM +0200, Rafael J. Wysocki wrote:
> On Tuesday, May 20, 2014 09:57:14 AM Kevin Hilman wrote:

> > This would also easily be solved if the bus master device, the IOMMU and
> > the dmaengine (or the platform-specific dma driver) were all using
> > runtime PM.  e.g. bus master device is a user of dmaengine, which is a
> > user of the IOMMU.  If all are using runtime PM, the fact that a device
> > is "in use", means runtime PM would keep them active when needed.  In
> > this example, it wouldn't matter that the bus master device doesn't know
> > about the IOMMU. It suffices that the dmaengine driver knows about the
> > IOMMU.

> That requires it to be able to say "now I'm not using you any more" whenever
> the device in question suspend and "now I'm going to use you again" when that
> device resumes.  Does something like that happen today?

The easiest thing to do with this sort of thing is usually to put the
referencing into the API that abstracts things (it really ought to know
when things are actually being used anyway after all) - there are some
APIs that do this already.

> There are more weird cases still.  For example, we have the _DEP object in
> ACPI that basically says "this device depends on that one" and there may be
> no other relationship between the two whatsoever.  How are we supposed to
> implement this within the existing frameworks?

That sounds like something that should be baked into however ACPI is
hooked in already?

--msuMhlVPES9Pz2Dp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTfc4WAAoJELSic+t+oim9Q/gQAJBrIxDMlYl94/pIndJB+CBD
h5FK+TMlwl5HBG5kVdld1c80ivMeD0G7e7CpUiYywRHojdavUQeVZS3h4RvKU9Do
e8/Or9yvO9gHg07hcLxS6eNtk/GiNQYqhhNV2GAnVcweV+Vs/vpZA7NG/O/heRR3
9YL23hwGHRwifDyBx6U3XcuP3eZRRwHx5zIziwqky2VRYkTN+k36g9dKWaZvNAyw
hMeWFlu+fG+XKc2y+T72FnUN8fWKULi1Q4OXRs7nPbJMGnQeqgBNtIVFY1IWiQdW
9LV8C79rHqmG563ivLJbjMhjYz3e9z5Np6zoxI+f2b5lE0GIsJjTUWT51QHlf3+5
wWPFAMcFCV+LS+ws2H2RAP4C8xkRAN4jB40dTqgCaWfaWIHKdB5TxbXAIt+7SRI3
ZaCJb8+8jyP3LE0HJMEmtDFWBUrpQnQ7NZYB0FA3wgwugaE+ClQDnPSfCv6vZb4f
A4IMt+r7I1Ye9IQtbrgDvTGP2Xn4tYSjdMvaXCPJNWjcVKe/EpN14c4AmoOz915L
HndAZGbR+Od7t++DN4HlVpZmCw8Ec54736vcWy1h+V9wyn0VnePUG9kK0FtBBaKK
cXVqqyqxXM+/3iGrlU4wqchq+MyypIGQC5g+jZi4xMk/5z10NE+17Q0niQ5YT/zW
BAIHFtyVm3/lFR7HjHL0
=Ascg
-----END PGP SIGNATURE-----

--msuMhlVPES9Pz2Dp--
