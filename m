Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8CDAB4A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jul 2017 05:18:59 +0000 (UTC)
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36C4116B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jul 2017 05:18:59 +0000 (UTC)
Received: by mail-pg0-f52.google.com with SMTP id s4so9596632pgr.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 22:18:59 -0700 (PDT)
Date: Thu, 20 Jul 2017 14:19:08 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170720051908.GB7483@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<20170719062401.GA12064@jagdpanzerIV.localdomain>
	<20170719062538.GB12064@jagdpanzerIV.localdomain>
	<CAKMK7uGWZHAWF_kGDvsWghE-1Fwo1PDFaNiP6nnhz3M2g17x8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uGWZHAWF_kGDvsWghE-1Fwo1PDFaNiP6nnhz3M2g17x8Q@mail.gmail.com>
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

On (07/19/17 09:26), Daniel Vetter wrote:
[..]
> > d'oh...  the link...
> >
> > https://github.com/sergey-senozhatsky/printk-todo
> 
> lgtm, two quick notes:
> - my mail with the fbdev discussion seems to be in the wrong chapter.
> Move it from "console_sem" to "fbdev, tty, drm, etc .."?

thanks for taking a look!

and sorry for not being very responsive these weeks, still struggling
to recover from my sickness.

the list is incomplete and very spontaneous, I'll improve it.

> - feature request for per-console output: Per-console flag to always
> use a kthread/offloading, even when oops/panic is happening. kms
> definitely wants that. Please note that in that section. I can help
> with implementing, once we get there.

thanks. will add.

> Per-console flag to always use a kthread/offloading, even when oops/panic
> is happening. kms definitely wants that.
>

hmm... kthread offloading during panic() is really risky. nothing
guarantees that we will be able to call into the scheduler and wake
up that console printing-kthread, or that we will be able to schedule
at all. we may be in panic() from NMI handler, with the rest of CPUs
stopped. it's quite a risky thing to do. that's why we disable printk
offloading when in panic() - we don't want to make the things any
worse.

before doing this I think I want to make call_console_drivers() to be
more reliable. right now we pick the first unseen messages from the
logbuf and iterate over registered consoles calling ->write() on every
driver from the console drivers list. if one of consoles is misbehaving,
then the entire console output mechanism stops: we don't print anything
on other consoles until current con->write() returns. so probably I want
to make it more independent.

	-ss
