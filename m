Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B7D3B96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 11:31:38 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2CEC1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 11:31:37 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 09 May 2014 13:31:35 +0200
Message-ID: <3098666.qf3pAh5N1u@avalon>
In-Reply-To: <1399625714.879.9.camel@i7.infradead.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<1399578994.2171.51.camel@dabdike.int.hansenpartnership.com>
	<1399625714.879.9.camel@i7.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
	reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 09 May 2014 09:55:14 David Woodhouse wrote:
> On Thu, 2014-05-08 at 12:56 -0700, James Bottomley wrote:
> > On Thu, 2014-05-08 at 13:37 +0100, David Woodhouse wrote:
> > > I'd like to have a discussion about handling device errors.
> > >=20
> > > IOMMUs are becoming more common, and we've seen some failure mode=
s where
> > > we just end up with an endless stream of fault reports from a giv=
en
> > > device, and the kernel can do nothing else.
> >=20
> > This is when the addresses being sent by the bus don't have IOTLB
> > entries?
>=20
> You speak as if you have a software-filled IOTLB. I'd have phrased th=
at
> as "don't have page table entries". But yes, that.
>=20
> Or they have read-only IOTLB entries, and they're trying to write.

Or they're trying to perform secure access on non-secure IOTLB entries.=


I've recently run into IOMMU issues that resulted in endless messages b=
eing=20
printed to the kernel log, exactly as you've mentioned, and found out t=
he=20
error reporting mechanisms to be less than adequate.

The problem is twofold: we first need a mechanism to associate errors w=
ith=20
devices, and then a second mechanism to handle those errors.

I doubt the former could be made completely generic, but we should at l=
east be=20
able to implement those mechanisms in subsystem core code. For instance=
, in=20
the IOMMU case, we will need to map I/O VAs to struct device, and I don=
't want=20
to see that being  scattered across individual IOMMU drivers or bus mas=
ter=20
drivers. Better locations would be either the IOMMU core or the DMA map=
ping=20
implementation.

The latter will likely require a mix of generic code for device isolati=
on=20
and/or reset (when possible) and driver-specific code for proper recove=
ry. A=20
fast reaction to prevent more faults from being generated should be cou=
pled=20
with a slower reaction to fix the actual cause of the problem. I expect=
 the=20
problem to be fatal in most cases, and, for IOMMUs again, usually cause=
d by a=20
software bug rather than a hardware misbehaviour (although the latter c=
an of=20
course happen). From an overall system point of view preventing the den=
ial of=20
service that follows such errors (caused by kernel log flooding for ins=
tance,=20
or by the IOMMU being unable to serve other bus masters) could be our f=
irst=20
priority.

I'm interested to take part in this discussion.

> And as I said, once we start looking at it I suspect we'll end up
> finding other offences that need to be taken into consideration. Whic=
h
> is why I think this warrants a wider discussion rather than the IOMMU=

> owners sitting in a darkened room doing it amongst themselves.
>=20
> > > But I absolutely don't want us to be implementing policies like t=
hat in
> > > an individual IOMMU driver; this needs to be handled by generic d=
evice
> > > code. Once upon a time I might have said PCI code, but this is ac=
tually
> > > relevant for non-PCI devices too.
> >=20
> > Right, with my PARISC hat on, our IOMMUs sit adjacent to the CPUs. =
 The
> > PCI busses (if we have any) are a couple of layers down.
>=20
> Even the Intel IOMMU can do mappings (and take faults) for ACPI devic=
es,
> these days.
>=20
> > > I want the IOMMU to report errors, and let the system do the appr=
opriate
> > > thing. Which requires some discussion about what the "appropriate=
 thing"
> > > can be in various circumstances, and indeed what options are avai=
lable
> > > to us on various platforms.
> > >=20
> > > Participants would be those working with IOMMUs on various platfo=
rms,
> > > including J=F6rg R=F6del, myself, and hopefully someone with a fa=
irly
> > > intimate knowledge of EEH as used on POWER systems.
>=20
> I note that J=F6rg isn't actually on the nominations list. I think he=

> should be...

--=20
Regards,

Laurent Pinchart
