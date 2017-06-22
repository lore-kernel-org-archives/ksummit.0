Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 547AD71F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 13:48:36 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE2E9171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 13:48:35 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id f20so4218224itb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 06:48:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uGR_Zn1eW9znd_HNF1VS5ELmrrZwXBwmkpaAzB=F_qG3A@mail.gmail.com>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
	<20170621101418.GA455@jagdpanzerIV.localdomain>
	<CAKMK7uGR_Zn1eW9znd_HNF1VS5ELmrrZwXBwmkpaAzB=F_qG3A@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 22 Jun 2017 15:48:34 +0200
Message-ID: <CAKMK7uGWBFJ70KPexoyyYiWMOkKTga5KEO5zPtN70pRHBV90cQ@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 22, 2017 at 3:42 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Tears pretty much guaranteed, and after a few hacks from Alan&me I
> concluded that the only way to fix this is to at least partially
> rewrite fbdev (a dead subsystem, so no one's volunteering), with the
> risk that you get to revert it all because someone is indeed relying
> on that super-flexible module loading order sequence. The simplest fix
> would probably be to make the entire fbdev->fbcon setup depency a
> hard-coded function call, or maybe at most a one-shot symbol_get
> attempt.

I did once hash out a plan how to fix this with the least amount of pain:

1. Merge a patch to build the fbcon support into the overall fb.ko
module, so that the dynamic loading nonsense is essentially disabled,
and fbcon becomes a Kconfig/compile-time only option, no longer a
runtime-selectable thing.

2. Wait 1 year and pray that no one reports a regression. If you're
unlucky, try to fence them of with a runtime option to disable fbcon.

3. Rip out the notifier nonsense and replace it by direct function
calls. You can only do that once 1. won't be reverted anymore.

4. Push the console_lock donw the callchains until it's again at the
right spots, auditing all the other stuff meanwhile to make sure the
locking is still correct.

5. Apply your patch to make console_lock sane.

Adding fbdev maintainers and lists just.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
