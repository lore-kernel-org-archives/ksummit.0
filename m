Return-Path: <Bart.VanAssche@wdc.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07E8ABD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:28:14 +0000 (UTC)
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 667C116F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:28:13 +0000 (UTC)
From: Bart Van Assche <Bart.VanAssche@wdc.com>
To: "andrew@lunn.ch" <andrew@lunn.ch>, "leon@kernel.org" <leon@kernel.org>
Date: Fri, 14 Jul 2017 16:28:04 +0000
Message-ID: <1500049683.2662.6.camel@wdc.com>
References: <1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
	<20170714102920.GY1528@mtr-leonro.local>
	<20170714141057.GC21743@lunn.ch>
	<20170714153544.GE1528@mtr-leonro.local>
	<20170714161824.GJ21743@lunn.ch>
In-Reply-To: <20170714161824.GJ21743@lunn.ch>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <374D3C05A6C2CC498D19E9851D1BF57F@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "James.Bottomley@hansenpartnership.com"
	<James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2017-07-14 at 18:18 +0200, Andrew Lunn wrote:
> On Fri, Jul 14, 2017 at 06:35:44PM +0300, Leon Romanovsky wrote:
> > On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> > > > The difference in maintainers style between netdev and RDMA causes =
to have long queue
> > > > (100+) of patches posted to the ML [2], which are not cross-checked=
 in various CIs.
> > >=20
> > > It is possible to get 0-day to run against any arbitrary git tree, if
> > > you ask nicely. If same is true for the kernel-ci project. So if you
> > > are willing to do the merge work, you can get it tested.
> >=20
> > 0-day is checking my tree, so it is not the problem.
> >=20
> > I don't see how kernel-ci can help me, because RDMA requires special
> > hardware to run it and it usually requires more than two endpoints (ser=
vers)
> > connected together.
>=20
> kernel-ci are happy to receive hardware. I've sent them boards in the
> past which have been added to their test farm. Kernel-ci is mostly
> about boot testing, but they do do some tests post boot. So if you can
> supply tests as well, they may run them for you.
>=20
> > My problem is related to changes in other trees for example netdev, whi=
ch
> > can break RDMA functionality.
> >=20
> > Technology wise, there are:
> > 1. RoCE - RDMA over Converged Ethernet - netdev is below RDMA
> > 2. IPoIB - IP over Infiniband - netdev is above RDMA
> > 3. HFI-VNIC - Ethernet over OmniPath - netdev is above RDMA
> > 4. iWARP - RDMA over IP networks
>=20
> How much of this do you already have automated test for?  You can also
> setup your own test farm, using the kernels kernel-ci builds.

Hello Andrew,

The srp-test software is fully automated. It requires IB hardware today but=
 does
not require a second server because it uses IB loopback. As soon as I have =
the time
I will add RoCE support to the upstream SRP initiator and target drivers su=
ch that
these tests can be run on top of Ethernet hardware. Please let me know if y=
ou would
like to start using this software and if you need help. See also
https://github.com/bvanassche/srp-test.

Bart.=
