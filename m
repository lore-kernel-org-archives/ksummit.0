Return-Path: <b.zolnierkie@samsung.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Tue, 06 Sep 2016 18:24:22 +0200
Message-id: <2482526.7Pqh7R4B4v@amdc1976>
In-reply-to: <20160906133429.5ktkvafprbtxr5sd@localhost>
References: <57C78BE9.30009@linaro.org> <9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
MIME-version: 1.0
Content-transfer-encoding: 7Bit
Content-type: text/plain; charset=us-ascii
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
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


[ sorry if you got this mail twice ]

Hi,

On Tuesday, September 06, 2016 02:34:30 PM Catalin Marinas wrote:
> On Mon, Sep 05, 2016 at 05:22:59PM +0300, Laurent Pinchart wrote:
> > On Monday 05 Sep 2016 10:03:27 Theodore Ts'o wrote:
> > > On Mon, Sep 05, 2016 at 12:11:05PM +0100, Mark Brown wrote:
> > > > On Mon, Sep 05, 2016 at 04:28:44AM +0530, Amit Kucheria wrote:
> > > >> The vendors depend on Google providing an Android common tree[1] to
> > > >> build their BSP on top of. Currently, there isn't anything newer than
> > > >> a 4.4-based common tree from Google. It'll be early 2017 by the time
> > > >> 4.9 LTS is released and the Android common tree is available on it
> > > > 
> > > > It's not just having an Android tree either, it's having an Android tree
> > > > that they're confident is actively used and tested by Google.  Simply
> > > > making a tree available wouldn't be enough, that was tried in the past.
> > > 
> > > One of the problems is I can't test the Android common tree, because I
> > > don't have access to hardware that I can boot on that tree.  (To be
> > > honest, I'm not even sure what hardware would boot on it.)  And thanks
> > > to the tender loving care the SOC vendors have lavished on on their
> > > BSP kernels, if there has been BSP "value added patches" from ARM SOC
> > > vendors applied to a kernel tree, chances are extremely high that you
> > > can no longer do testing using kvm-xfstests.  (In some cases I was
> > > able to bash the tree enough that it would boot under kvm/x86, but in
> > > many cases, the ARM SOC changes were so horrible that it was
> > > hopeless.)
> > > 
> > > This is why upstream-first is so darned important.  And why sloppy
> > > patches that break other architectures are a really bad idea, even if
> > > they are for a vendor-only BSP kernel....
> > > 
> > > Maybe there will be some hope if some of the features from ARM64
> > > server can infect the SOC community --- Jon Masters really had the
> > > right idea when he insisted on one kernel to boot all ARM64 kernels,
> > > with all changes pushed upstream, and not hacky, out-of-tree patches
> > > which only work for one SOC vendor.
> 
> From an arm64 kernel perspective, we have similar requirements w.r.t.
> single Image. However, such requirements have implications beyond just
> the kernel as we insist on standardisation of the firmware interfaces,
> use of the Device Tree, no mach-* directories for SoC quirks. Some SoC
> vendors find such requirements difficult to comply with and won't even
> bother with mainline (claiming time to market is more important than
> long term maintenance).
> 
> > I don't think that's a fair comparison. For server platforms end-users of the 
> > hardware will pick a distribution and roll it out on the machines, so hardware 
> > vendors have a strong incentive to play by our rules. Phones are completely 
> > different in that the device vendor doesn't care about end-users being able to 
> > pick what software in general and kernel in particular they want to install on 
> > the device.
> 
> Things could be different if fewer entities control the software that
> gets installed/updated on such hardware. E.g. Google controlling the OTA
> updates of the Chromebook kernels, they will at some point take a
> similar hard stance to Red Hat on upstream first, single kernel Image.
> For phones, however, that's unlikely to happen given the multitude and
> short life-time of new products.

[ Disclaimer: below are my personal observations and not official
  Samsung's stance on upstream first policy, also while I work for
  Samsung I don't work for its silicon vendor division ]

For phones it feels that upstream itself is moving too slow for
vendors to get benefits from upstream first policy.  Each year there
is a new flagship device and new SoC.  With the current upstream model
(new kernel release every 2-3 months and discussions on upstreaming
some core subsystems enhancements easily taking weeks/months) upstream
first policy just doesn't give enough business benefits.  Before you
have everything upstream and changes propagate itself to LTS and Android
kernels (which should also move faster BTW) it can be easily 2 years
since start of the effort and your SoC is now obsolete. Sure there are
some benefits of core subsystems' changes done for old SoC etc. which
can be re-used by new SoC.  However in short-term it is still usually
easier to just backport few selected upstream kernel features that you
care about to your vendor kernel (which supports all your SoCs, not
only your flagship one) than to move everything to upstream.

> > Unless customers start boycotting devices that are not 
> > upstream-friendly - and I don't think anyone expects this to happen - we'll 
> > need to give SoC vendors a different incentive.
> 
> One way to make SoC vendors understand the benefits of upstream is for
> them to first feel the pain of rebasing their SoC patches to newer
> kernel versions regularly. But forcing them to do such rebasing means

Some vendors are still stuck on v3.4 (or v3.10) and they have no enough
incentives to re-base to something newer.

> to stop helping them back-port the features they need to older kernel
> versions like LSK ;) (this may be difficult from a corporate perspective
> where significant support contracts are involved; that's where kernel
> maintainer goals don't always match the business ones).

When talking about more incentives it would help getting embedded/mobile
oriented features upstream quicker and doing more upstream validation &
testing on embedded/mobile devices.  This would require more upstream
involvement from embedded/mobile companies (independently or through
Linaro) and I think that the ones to get involved first will be the ones
to reap the biggest benefits from leading the efforts later.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics
