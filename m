Return-Path: <m.chehab@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C98772FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 15:42:17 +0000 (UTC)
Received: from usmailout2.samsung.com (mailout2.w2.samsung.com
	[211.189.100.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3E271FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 15:42:16 +0000 (UTC)
Received: from uscpsbgm2.samsung.com
	(u115.gpu85.samsung.co.kr [203.254.195.115]) by mailout2.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N5S00A5E0YFDE70@mailout2.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Sun,
	18 May 2014 11:42:15 -0400 (EDT)
Date: Sun, 18 May 2014 12:42:09 -0300
From: Mauro Carvalho Chehab <m.chehab@samsung.com>
To: Shuah Khan <shuahkhan@gmail.com>
Message-id: <20140518124209.6b6ebb63.m.chehab@samsung.com>
In-reply-to: <CAKocOOMk-jVW9-M+6SOzAJ3-6-i-5TWwLmQE6CRqf7tFGTM=jw@mail.gmail.com>
References: <1872038.43ncqEMWSx@avalon>
	<CAKocOOMk-jVW9-M+6SOzAJ3-6-i-5TWwLmQE6CRqf7tFGTM=jw@mail.gmail.com>
MIME-version: 1.0
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: quoted-printable
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

Em Mon, 12 May 2014 11:51:54 -0600
Shuah Khan <shuahkhan@gmail.com> escreveu:

> On Mon, May 12, 2014 at 11:43 AM, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > Hello,
> >
> > On modern systems many PM dependencies don't follow the Linux kernel de=
vice
> > model based on parent-child relationships from a control bus point of v=
iew.
> > For instance a GPU will need the IOMMU that services its memory request=
s to be
> > powered on to perform DMA operations.
> >
> > Ad-hoc solutions with subsystem-specific or even driver-specific APIs h=
ave
> > been implemented (see omap_iommu_save_ctx and omap_iommu_restore_ctx in
> > include/linux/omap-iommu.h for instance, that push the burden of saving=
 and
> > restoring the IOMMU registers to bus master drivers), but they make aut=
omatic
> > handling of hardware resources difficult. In the IOMMU case again, the =
goal is
> > to hide IOMMU handling inside the DMA mapping API and make its usage
> > completely transparent to bus master drivers in most of the cases. An I=
OMMU-
> > specific API to explicitly control IOMMU power from the bus master driv=
er
> > would make that goal impossible to reach.
> >
> > The problem is not limited to IOMMUs. We have similar dependencies at
> > suspend/resume time with camera interfaces for instance, where two comp=
letely
> > unrelated device in the Linux device hierarchy (a camera interface plat=
form
> > device in the SoC and an I2C camera sensor) need to be suspended and re=
sumed
> > in a controlled order. I'm sure many more use cases exist.
>=20
> We discussed this topic briefly at the Media Mini-summit.  I looking
> into similar
> use-cases in media devices. Suspend/resume of a tuner for example should =
only
> be done once as opposed multiple times by drivers that think they have ex=
clusive
> access to the tuner on a media device.
>=20
> I am interested in this discussion and would like to participate.
> Requesting nomination.

PM on media devices is very complex, and this is broken since... ever.

=46rom time to time, someone comes with some patch that fixes it for some
specific drivers, but, after some Kernel cycles, things get broken
again, because the approach taken by those patches were to add a logic
inside the specific PCI (or USB) bridge driver that simply unbinds
all other drivers at suspend, and re-initialize all of them at resume.

Since the end of last year, both me and Shuah are working together in
order to find some strategies to fix it.

One of the problems with media devices is that they are typically multi
function devices that share some resources on very complex ways. So,
both suspend and resume operations should be serialized in a way that
will warrant that the devices internal clocks, GPIOs, I2C buses, I2C,
switches, IOMMUs etc are initialized before talking to each component=20
of the hardware that depends on it.

On several such hardware, there are components that are optional, like
IR receivers, IR transmitters, etc, and are only known to be available
at probe time.

Also, some devices like hybrid TV ones disables part of the hardware
when in usage, as they can't typically stream analog TV (V4L2 API and
v4l subsystem) while an ATSC stream is displayed (DVB API and dvb
subsystem).

In other words, the driver would need to build a PM dependency tree
in probe time, adjusting it in runtime, depending on what sub-devices
are in use, in order to assure that the stream will continue being
played after resume.

I'd like to nominate myself and Shuah for this topic.
