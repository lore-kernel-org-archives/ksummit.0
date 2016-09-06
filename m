Return-Path: <catalin.marinas@arm.com>
Date: Tue, 6 Sep 2016 14:34:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160906133429.5ktkvafprbtxr5sd@localhost>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9895277.d39OTXtlqC@avalon>
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

On Mon, Sep 05, 2016 at 05:22:59PM +0300, Laurent Pinchart wrote:
> On Monday 05 Sep 2016 10:03:27 Theodore Ts'o wrote:
> > On Mon, Sep 05, 2016 at 12:11:05PM +0100, Mark Brown wrote:
> > > On Mon, Sep 05, 2016 at 04:28:44AM +0530, Amit Kucheria wrote:
> > >> The vendors depend on Google providing an Android common tree[1] to
> > >> build their BSP on top of. Currently, there isn't anything newer than
> > >> a 4.4-based common tree from Google. It'll be early 2017 by the time
> > >> 4.9 LTS is released and the Android common tree is available on it
> > > 
> > > It's not just having an Android tree either, it's having an Android tree
> > > that they're confident is actively used and tested by Google.  Simply
> > > making a tree available wouldn't be enough, that was tried in the past.
> > 
> > One of the problems is I can't test the Android common tree, because I
> > don't have access to hardware that I can boot on that tree.  (To be
> > honest, I'm not even sure what hardware would boot on it.)  And thanks
> > to the tender loving care the SOC vendors have lavished on on their
> > BSP kernels, if there has been BSP "value added patches" from ARM SOC
> > vendors applied to a kernel tree, chances are extremely high that you
> > can no longer do testing using kvm-xfstests.  (In some cases I was
> > able to bash the tree enough that it would boot under kvm/x86, but in
> > many cases, the ARM SOC changes were so horrible that it was
> > hopeless.)
> > 
> > This is why upstream-first is so darned important.  And why sloppy
> > patches that break other architectures are a really bad idea, even if
> > they are for a vendor-only BSP kernel....
> > 
> > Maybe there will be some hope if some of the features from ARM64
> > server can infect the SOC community --- Jon Masters really had the
> > right idea when he insisted on one kernel to boot all ARM64 kernels,
> > with all changes pushed upstream, and not hacky, out-of-tree patches
> > which only work for one SOC vendor.

>From an arm64 kernel perspective, we have similar requirements w.r.t.
single Image. However, such requirements have implications beyond just
the kernel as we insist on standardisation of the firmware interfaces,
use of the Device Tree, no mach-* directories for SoC quirks. Some SoC
vendors find such requirements difficult to comply with and won't even
bother with mainline (claiming time to market is more important than
long term maintenance).

> I don't think that's a fair comparison. For server platforms end-users of the 
> hardware will pick a distribution and roll it out on the machines, so hardware 
> vendors have a strong incentive to play by our rules. Phones are completely 
> different in that the device vendor doesn't care about end-users being able to 
> pick what software in general and kernel in particular they want to install on 
> the device.

Things could be different if fewer entities control the software that
gets installed/updated on such hardware. E.g. Google controlling the OTA
updates of the Chromebook kernels, they will at some point take a
similar hard stance to Red Hat on upstream first, single kernel Image.
For phones, however, that's unlikely to happen given the multitude and
short life-time of new products.

> Unless customers start boycotting devices that are not 
> upstream-friendly - and I don't think anyone expects this to happen - we'll 
> need to give SoC vendors a different incentive.

One way to make SoC vendors understand the benefits of upstream is for
them to first feel the pain of rebasing their SoC patches to newer
kernel versions regularly. But forcing them to do such rebasing means
to stop helping them back-port the features they need to older kernel
versions like LSK ;) (this may be difficult from a corporate perspective
where significant support contracts are involved; that's where kernel
maintainer goals don't always match the business ones).

-- 
Catalin
