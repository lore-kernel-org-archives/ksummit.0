Return-Path: <b.zolnierkie@samsung.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Wed, 07 Sep 2016 15:07:25 +0200
Message-id: <3177542.BiqEY2Ifyd@amdc1976>
In-reply-to: <20160907093250.qmmcmrq2g64rjmif@localhost>
References: <57C78BE9.30009@linaro.org> <2181684.5VzIQ6DWv4@amdc1976>
	<20160907093250.qmmcmrq2g64rjmif@localhost>
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

On Wednesday, September 07, 2016 10:32:50 AM Catalin Marinas wrote:
> On Tue, Sep 06, 2016 at 06:06:48PM +0200, Bartlomiej Zolnierkiewicz wrote:
> > On Tuesday, September 06, 2016 02:34:30 PM Catalin Marinas wrote:
> > > On Mon, Sep 05, 2016 at 05:22:59PM +0300, Laurent Pinchart wrote:
> > > > On Monday 05 Sep 2016 10:03:27 Theodore Ts'o wrote:
> > > > > Maybe there will be some hope if some of the features from ARM64
> > > > > server can infect the SOC community --- Jon Masters really had the
> > > > > right idea when he insisted on one kernel to boot all ARM64 kernels,
> > > > > with all changes pushed upstream, and not hacky, out-of-tree patches
> > > > > which only work for one SOC vendor.
> [...]
> > > > I don't think that's a fair comparison. For server platforms end-users of the 
> > > > hardware will pick a distribution and roll it out on the machines, so hardware 
> > > > vendors have a strong incentive to play by our rules. Phones are completely 
> > > > different in that the device vendor doesn't care about end-users being able to 
> > > > pick what software in general and kernel in particular they want to install on 
> > > > the device.
> > > 
> > > Things could be different if fewer entities control the software that
> > > gets installed/updated on such hardware. E.g. Google controlling the OTA
> > > updates of the Chromebook kernels, they will at some point take a
> > > similar hard stance to Red Hat on upstream first, single kernel Image.
> > > For phones, however, that's unlikely to happen given the multitude and
> > > short life-time of new products.
> [...]
> > For phones it feels that upstream itself is moving too slow for
> > vendors to get benefits from upstream first policy.  Each year there
> > is a new flagship device and new SoC.  With the current upstream model
> > (new kernel release every 2-3 months and discussions on upstreaming
> > some core subsystems enhancements easily taking weeks/months) upstream
> > first policy just doesn't give enough business benefits.  Before you
> > have everything upstream and changes propagate itself to LTS and Android
> > kernels (which should also move faster BTW) it can be easily 2 years
> > since start of the effort and your SoC is now obsolete.
> 
> If there is a one-off, completely independent SoC that no-one (not even
> the vendor) cares about a year after the device goes on sales, I don't
> think we want it upstream either. However, SoC vendors tend to work on
> SoC families with some variations within a family (like CPU upgrades,
> maybe a new interconnect etc.) but in general a lot of code that can be
> reused. That's where upstreaming is highly beneficial to the vendor on
> the long run since such SoC family has a life span bigger than the
> individual device derived from a specific SoC.

I agree that for SoC families upstreaming is highly beneficial.
Unfortunately for the whole products this doesn't seem to be
the case with current upstream policies.

> I'm also aware that vendors don't always want to disclose their SoC
> details until the device goes public, so that's another business
> argument against upstreaming first, especially in the mobile world.
> 
> One impediment to upstreaming in my experience is that vendors tend to
> develop the initial SoC port against an old kernel version (e.g. based
> on the Android version they target). Forward-porting to latest mainline
> all of a sudden becomes a much larger task that companies are not always
> willing to (sufficiently) invest in. So if an "upstream first" policy is
> not always feasible from a (mobile) business perspective, "develop
> against upstream" is a better second option. An initial SoC port doesn't
> need all the additional features that Android kernels provide, so it's
> usually doable with what is available upstream. There is more effort
> initially since targeting certain Android versions require back-porting,
> however it pays off in the long run for the SoC *family*.
> 
> Trying to get on-topic: where organisations providing kernels like LSK
> (Linaro) can help is offering to integrate/maintain the SoC back-port
> while encouraging the SoC vendors to focus on developing against the
> latest upstream. It looks to me that on (too) many occasions SoC vendors
> take LSK as their development base for new SoC ports, making the
> forward-porting effort significantly larger (and potentially ignored).

Fully agreed.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics
