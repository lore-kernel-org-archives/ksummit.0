Return-Path: <linux@roeck-us.net>
Date: Tue, 6 Sep 2016 09:25:02 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Catalin Marinas <catalin.marinas@arm.com>
Message-ID: <20160906162502.GA15434@roeck-us.net>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160906133429.5ktkvafprbtxr5sd@localhost>
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

On Tue, Sep 06, 2016 at 02:34:30PM +0100, Catalin Marinas wrote:
> 
> Things could be different if fewer entities control the software that
> gets installed/updated on such hardware. E.g. Google controlling the OTA
> updates of the Chromebook kernels, they will at some point take a
> similar hard stance to Red Hat on upstream first, single kernel Image.

Seems to me that Redhat and Google are in different boats. Chromebooks,
unlike "standard" PCs, have lots of "custom" hardware, where "custom" means
hardware for which upstream support is not available. chromeos-4.4 currently
(as of this morning) carries 5,594 patches on top of v4.4.14. Out of those,
roughly 2,700 are tagged as backports, ~200 are tagged as from an upstream
submission which was not accepted by the time the patch was added, and ~2,000
are tagged as chromeos specific. And that is with (as far as I know) no
products shipping yet with the 4.4 kernel. We are trying to upstream as much
as we can, but it will take a while. Given time constraints, I don't think
"upstream first" will ever work. Products have to ship and simply can not
wait for upstream patches to be accepted.

> For phones, however, that's unlikely to happen given the multitude and
> short life-time of new products.
> 
> > Unless customers start boycotting devices that are not 
> > upstream-friendly - and I don't think anyone expects this to happen - we'll 
> > need to give SoC vendors a different incentive.
> 
> One way to make SoC vendors understand the benefits of upstream is for
> them to first feel the pain of rebasing their SoC patches to newer
> kernel versions regularly. But forcing them to do such rebasing means
> to stop helping them back-port the features they need to older kernel
> versions like LSK ;) (this may be difficult from a corporate perspective
> where significant support contracts are involved; that's where kernel
> maintainer goals don't always match the business ones).
> 

This is a two-edged sword. Make rebasing too hard (eg by on purpose changing the
in-kernel APIs constantly, as I think was suggested elsewhere) and they will simply
never switch to a newer kernel.

Ted was making an excellent point about the complexity of backporting features.
Out of personal experience, I fully agree. Instead of reducing risk by avoiding
a newer kernel version, backporting actually adds risk. Maybe it would help to
educate people about the risks of backporting, and do a better job explaining
why a new kernel may be a better choice.

Elsewhere it was also mentioned that companies just can not wait for the next
LTS release to incorporate new features, while at the same time suggesting that
4.9 may be too late. But this also suggests that those devices would _never_
ship with a 4.9 kernel in the first place. From my perspective, I think it would
make more sense to add the new features to those devices after the features
matured, or in other words plan for an upgrade to 4.9 after the device shipped.
This would both ensure that the devices get the feature(s) and that the features
get some test coverage before being used in (supposedly) high-stability devices.

Thanks,
Guenter
