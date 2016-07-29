Return-Path: <a.hajda@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2062B83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:57:31 +0000 (UTC)
Received: from mailout4.w1.samsung.com (mailout4.w1.samsung.com
	[210.118.77.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47713160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:57:30 +0000 (UTC)
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout4.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0OB20069ZXFRLQ00@mailout4.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Fri,
	29 Jul 2016 14:57:27 +0100 (BST)
To: "Luis R. Rodriguez" <mcgrof@suse.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-id: <579B60C0.9000609@samsung.com>
Date: Fri, 29 Jul 2016 15:57:20 +0200
MIME-version: 1.0
In-reply-to: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: 7bit
Cc: "rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
	and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/27/2016 06:50 PM, Luis R. Rodriguez wrote:
> (first e-mail bounced)
>
> Rafael has proposed has a set of patches to help deal with functional
> dependencies between devices to help with power management. Mauro has
> spoken briefly before over the media controller feature graph used to help
> build relationship between complex dynamic dependencies. Dmitry has taken on
> to help enable asynchronous probe, however for built-in devices this requires
> very specific platform knowledge otherwise using async probe will blow up
> your kernel -- if you get it right though, using async probe can help with
> boot. Even if you sort things out well -- there are current limitations with
> ordering semantics available, case in point the x86 IOMMUs already have a small
> sort run which expand beyond the core init entries allowed, and on top of this
> the you still have device driver dependencies which are implicitly setting
> order via link order: consider the ordering between AMD IOMMUv1, AMD IOMMUv2,
> AMD KFD, and AMD radeon. This has made us realize that at the module front the
> current 2 levels of init calls limits our ordering semantics leaving only link
> order as a last measure when things are built-in. Likewise I've recently have
> had to look into dependency issues early in boot been due to differences
> between paravirtualization and non-PV kernels, this lead to some current work
> to help generalize custom section uses (linker tables) and then for us to
> consider expanding x86 semantics early in boot to address some of the
> shortcomings implicit by the some paravirtualized boot path.
>
> The goal behind Rafael's work's goal is essentially to avoid code duplication
> (as without doing that in the core many drivers potentially need to do the same
> thing in the same way) and help to address the asynchronous system
> suspend/resume case that cannot be addressed by any driver by itself anyway.
> The effort behind Rafael's, Mauro's, Dmitry's and my work are all independent
> however the patterns are very similar: addressing complex dependencies and
> relationships at run time and available semantics for these.

I am also interested in this  topic. I have sent some times ago few
early RFCs
proposing solution for 'resource' life-time tracking:
In short it allows to:
- eliminate deferred probe and resulting late_initcall - consumer just
registers
callback informing when given resource(s) (clock, regulator, ...) becomes
available/unavailable,
- properly handle resource disappearance (due to driver unbind, hw
removal,...),
- track resources which are not vital to the device, but their presence
can influence
device's behavior,
- as a bonus it offers simplified resource allocation,

More info can be found on LWN [1].

The framework can be easily expanded to help with power management, as I
proposed in
Rafael's thread[2].

[1]: https://lwn.net/Articles/625454/
[2]: http://permalink.gmane.org/gmane.linux.kernel/2087152

Regards
Andrzej
