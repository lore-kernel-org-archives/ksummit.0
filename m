Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30312CC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 17:08:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B27F9798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 17:08:15 +0000 (UTC)
Date: Thu, 13 Sep 2018 10:08:12 -0700
From: Darren Hart <dvhart@infradead.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180913170812.GC35251@wrath>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
	<20180912185949.GC25894@wrath>
	<CAKMK7uFpat8PxSq9EqEJ7Ec43o_0AcMzxFGC_fLY0c-Ncycegg@mail.gmail.com>
	<20180913112738.GA8411@sirena.org.uk>
	<CAKMK7uEwX1GLN5K1=dPq9rdpVBPS259zYj3r25A=dWBqHUV2Jw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uEwX1GLN5K1=dPq9rdpVBPS259zYj3r25A=dWBqHUV2Jw@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 13, 2018 at 01:41:26PM +0200, Daniel Vetter wrote:
> On Thu, Sep 13, 2018 at 1:27 PM, Mark Brown <broonie@kernel.org> wrote:
> > On Wed, Sep 12, 2018 at 10:05:19PM +0200, Daniel Vetter wrote:
> >> On Wed, Sep 12, 2018 at 8:59 PM, Darren Hart <dvhart@infradead.org> wrote:
> >
> >> > Regarding tooling, Andy and I have documented our process and shared our
> >> > tooling which has evolved to try and prevent human error. I believe DRM
> >> > has something even more evolved.
> >
> >> > https://github.com/dvhart/pdx86-tools
> >
> >> Hm, the gen-config scrips looks like a really neat idea. Atm we
> >> manually maintain some configs for all the drm drivers, but this is
> >> much better I think. Next step up would be to double-check that make
> >
> > Yes, I've got a script like that as well (mine's a *tiny* bit less
> > sophisticated) - it's super handy if you frequently add new drivers.
> >
> >> Bit of googling and fooling around says make CONFIG_FOO=y olddefconfig
> >> seems to do this, including enabling (all?) dependencies you need.
> >
> > That only works for dependencies that are selected, if there's a config
> > option that stops CONFIG_FOO being seen by the user (eg, having MFD_FOO
> > preventing SUBSYSTEM_FOO being enabled) then it'll just get silently
> > ignored.
> 
> I guess I fumbled something with my testing, this does indeed not work
> like I hoped :-/

merge-config will tell you if the CONFIG_* you specified differs in the
resulting .config.

e.g.

$ ls arch/x86/configs/pd*
arch/x86/configs/pdx86-mods.config

$ make defconfig pdx86-mods.config
*** Default configuration is based on 'x86_64_defconfig'
#
# configuration written to .config
#
Using .config as base
Merging ./arch/x86/configs/pdx86-mods.config
Value of CONFIG_MELLANOX_PLATFORM is redefined by fragment ./arch/x86/configs/pdx86-mods.config:
Previous value: # CONFIG_MELLANOX_PLATFORM is not set
New value: CONFIG_MELLANOX_PLATFORM=y

Value of CONFIG_ACER_WIRELESS is redefined by fragment ./arch/x86/configs/pdx86-mods.config:
Previous value: # CONFIG_ACER_WIRELESS is not set
New value: CONFIG_ACER_WIRELESS=m

...


-- 
Darren Hart
VMware Open Source Technology Center
