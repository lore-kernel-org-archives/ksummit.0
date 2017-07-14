Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3470BF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 09:54:14 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A68B16D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 09:54:14 +0000 (UTC)
Date: Fri, 14 Jul 2017 11:54:09 +0200
From: Greg KH <greg@kroah.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20170714095409.GF2269@kroah.com>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170714040447.GT1528@mtr-leonro.local>
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

On Fri, Jul 14, 2017 at 07:04:47AM +0300, Leon Romanovsky wrote:
> On Fri, Jun 30, 2017 at 06:27:17AM +1000, Stephen Rothwell wrote:
> > Hi Kees,
> >
> > On Thu, 29 Jun 2017 13:16:40 -0700 Kees Cook <keescook@chromium.org> wrote:
> > >
> > > [1] If the solution for this is to merge other -next trees into mine,
> > > I guess I can do that, though it can be very messy if any of them are
> > > forced to make their commits unstable. It also creates headaches,
> > > AIUI, for sfr if my tree suddenly gains a bunch of other trees so it's
> > > not clear where something came from.
> >
> > I don't have a problem with trees in linux-next sharing *commits* - I
> > have problems when they share *patches* that are different commits
> > (that affect files that get changed in other commits).
> 
> Do we have any sane way to overcome this limitation?
> 
> I tried to add my tree [1] to participate in linux-next. My tree
> includes my submission queue and important patches posted to the mailing list
> to the RDMA subsystem.
> 
> The absence of ability to add parallel tree with same commits doesn't allow us
> effectively test the RDMA patches.

Why do you need "parallel" trees in linux-next?  What is that going to
help with?

> The reasons to it are combination of mostly two factors: my tree is not
> official one [2] (all patches in my tree are not officially final) and very
> sporadic update very close and/or during merge window [3].

If it's not "official", why should it be in linux-next?

thanks,

greg k-h
