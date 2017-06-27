Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0AEC8504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 13:06:34 +0000 (UTC)
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E88B53CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 13:06:32 +0000 (UTC)
Received: by mail-pf0-f195.google.com with SMTP id e199so4714692pfh.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 06:06:32 -0700 (PDT)
Date: Tue, 27 Jun 2017 22:06:39 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <20170627130639.GA1886@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<CGME20170622134852epcas2p4b6deccc56b52c71eada58fba2d527793@epcas2p4.samsung.com>
	<CAKMK7uGWBFJ70KPexoyyYiWMOkKTga5KEO5zPtN70pRHBV90cQ@mail.gmail.com>
	<10423619.jNvHD4M0jW@amdc3058>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10423619.jNvHD4M0jW@amdc3058>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (06/23/17 11:07), Bartlomiej Zolnierkiewicz wrote:
> On Thursday, June 22, 2017 03:48:34 PM Daniel Vetter wrote:
> > On Thu, Jun 22, 2017 at 3:42 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > Tears pretty much guaranteed, and after a few hacks from Alan&me I
> > > concluded that the only way to fix this is to at least partially
> > > rewrite fbdev (a dead subsystem, so no one's volunteering), with the
> > > risk that you get to revert it all because someone is indeed relying
> > > on that super-flexible module loading order sequence. The simplest fix
> > > would probably be to make the entire fbdev->fbcon setup depency a
> > > hard-coded function call, or maybe at most a one-shot symbol_get
> > > attempt.
> > 
> > I did once hash out a plan how to fix this with the least amount of pain:
> > 
> > 1. Merge a patch to build the fbcon support into the overall fb.ko
> > module, so that the dynamic loading nonsense is essentially disabled,
> > and fbcon becomes a Kconfig/compile-time only option, no longer a
> > runtime-selectable thing.
> > 
> > 2. Wait 1 year and pray that no one reports a regression. If you're
> > unlucky, try to fence them of with a runtime option to disable fbcon.
> > 
> > 3. Rip out the notifier nonsense and replace it by direct function
> > calls. You can only do that once 1. won't be reverted anymore.
> > 
> > 4. Push the console_lock donw the callchains until it's again at the
> > right spots, auditing all the other stuff meanwhile to make sure the
> > locking is still correct.
> > 
> > 5. Apply your patch to make console_lock sane.
> > 
> > Adding fbdev maintainers and lists just.
> 
> Your plan sounds good to me.

cool.

I'm willing to help. let's coordinate.

	-ss
