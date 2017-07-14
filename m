Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD3127A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 10:29:24 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33964171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 10:29:24 +0000 (UTC)
Date: Fri, 14 Jul 2017 13:29:20 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20170714102920.GY1528@mtr-leonro.local>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2ACoA+UkOTYEMozL"
Content-Disposition: inline
In-Reply-To: <20170714095409.GF2269@kroah.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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


--2ACoA+UkOTYEMozL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 14, 2017 at 11:54:09AM +0200, Greg KH wrote:
> On Fri, Jul 14, 2017 at 07:04:47AM +0300, Leon Romanovsky wrote:
> > On Fri, Jun 30, 2017 at 06:27:17AM +1000, Stephen Rothwell wrote:
> > > Hi Kees,
> > >
> > > On Thu, 29 Jun 2017 13:16:40 -0700 Kees Cook <keescook@chromium.org> =
wrote:
> > > >
> > > > [1] If the solution for this is to merge other -next trees into min=
e,
> > > > I guess I can do that, though it can be very messy if any of them a=
re
> > > > forced to make their commits unstable. It also creates headaches,
> > > > AIUI, for sfr if my tree suddenly gains a bunch of other trees so i=
t's
> > > > not clear where something came from.
> > >
> > > I don't have a problem with trees in linux-next sharing *commits* - I
> > > have problems when they share *patches* that are different commits
> > > (that affect files that get changed in other commits).
> >
> > Do we have any sane way to overcome this limitation?
> >
> > I tried to add my tree [1] to participate in linux-next. My tree
> > includes my submission queue and important patches posted to the mailin=
g list
> > to the RDMA subsystem.
> >
> > The absence of ability to add parallel tree with same commits doesn't a=
llow us
> > effectively test the RDMA patches.
>
> Why do you need "parallel" trees in linux-next?  What is that going to
> help with?

We are developing against two subsystems at the same time (netdev vs. RDMA)=
 and need
to ensure that combination of them is working. Currently me (RDMA) and Saee=
d (netdev)
are merging out trees by ourselves [1] and instructs our verification (end-=
to-end and
QA) to run from that tree.

It means that we are missing a lot of stuff related to PCI, nvme, vitalizat=
ion and storage
where our technology is used.

The difference in maintainers style between netdev and RDMA causes to have =
long queue
(100+) of patches posted to the ML [2], which are not cross-checked in vari=
ous CIs.

And the situation is worse when someone posts patches which has potential t=
o break
other vendors.

Ability to have "parallel" trees will allow us to run our (other vendors ex=
pressed the same
desire) verification on top of linux-next with all goodies of automatic reg=
ression systems
which we have as a hardware vendor.

So I would like to have "parallel" tree where I can put all my RDMA patches=
 + important patches
=66rom other parties and run from linux-next.

>
> > The reasons to it are combination of mostly two factors: my tree is not
> > official one [2] (all patches in my tree are not officially final) and =
very
> > sporadic update very close and/or during merge window [3].
>
> If it's not "official", why should it be in linux-next?

Because, official updates occur mostly twice in the cycle on -rc3 (for fixe=
s)
and before merge window, while it is too late for us because we are prepari=
ng
our submission queues for next cycle (Linus's requirement for Mellanox's
submissions) and verification is busy with that.

Thanks

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mellanox/linux.git/ bra=
nches:queue-next and queue-rc
[2] https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log=
/?h=3Dtesting/queue-next
>
> thanks,
>
> greg k-h

--2ACoA+UkOTYEMozL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllonQAACgkQ5GN7iDZy
WKewVhAAqGE8aNGDd20YsNk69S2YVcz2m2xRPF7EfuQfDOuEi+jnx/FZOjheC5SG
uyifKOHSHySyMyLPVWuujhuK1MXtltujatlY+hVdOhnwxKC3GdmRLQUUz/stLYO5
gH34EAKpJIpd7A2ybL7T0ista7rQoXn1yUdkWsBTAnRimC+yqDr8jkyd6HMLSjK2
sBZxhSyEoUsLCbCKxiShhtLFiMlWlMlDVIsXdp8mseCWdE5mrp1P7gUj3hMRaRE3
JmMol1C9uykRblNTrVDxUIb4K1fUkeP27CQL/BhNnWC4kjgPCY/r6tEhoBMyUwEv
xHlRKgmXBzt//cihK8u7mOd6nMehw/xvVisdlTsdHzeifPclm6+8CTUcBHV0c2Tc
59/3AA6Nm9ZrVlZYuz3wHrKcx13IIWJ10Zoho0VE2YjaEkAgVQ15dyOcbpyFUImV
yXtKDaZFLm+WiYwYJKo/FTgUO8Zb+3IBQ33ycAxMzp7I5n9kdtbaXfd5MSprcr8j
XIKxlEFaESjjvHVXuhUTniDT0Uf4D+2FiBEcVO1LKZpjbyoa3C3tgt6fLiEYJavZ
ABzVaIEucZj7PosJ9d3yv+2fogiMEdW5SdrG6pFmZnFRE/xcmdS700lHzzZi2Uis
Tpwf2KfTQsoaAvvnNOQMIQpcBAXdAVP00koC2jSju9LVZsek/+w=
=hPQT
-----END PGP SIGNATURE-----

--2ACoA+UkOTYEMozL--
