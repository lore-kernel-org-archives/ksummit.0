Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FD4EAF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:52:36 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB72D8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:52:35 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id y3-v6so967324ioc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 01:52:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFx9hKVphfU3+aGONbg_wOx9+Ov6HF3Xkq7ZL_pW5m2CLQ@mail.gmail.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180906224541.27a9c8fe@vmware.local.home>
	<CA+55aFx9hKVphfU3+aGONbg_wOx9+Ov6HF3Xkq7ZL_pW5m2CLQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 7 Sep 2018 10:52:34 +0200
Message-ID: <CAKMK7uEHTVPBg6SmbXdVPBqfR=KBAPz1pOZZc9qBQ60EtpH-mA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 7, 2018 at 5:43 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> (Side note: I think it's improving even on the hardware side. I think
> the i915 people must be running a _lot_ more testing before pushing to
> me, because while GPU issues used to be one of the areas that was one
> of the common causes, and it really hasn't been that lately).

We run a _lot_ more before even pushing to linux-next :-) I think
rule-of-thumb is that pre-merge we burn down one machine-week on every
patch series when it gets posted (every time it gets posted), and
post-merge that goes up to about a machine-month. Of course repeated
plenty of times - I think we do a handful of the one-month runs each
week, and about 20 of the one-week runs per day.

Pretty much all the things that do still slip through are for features
we haven't figured out how to test in a fully automated way (some
obscure display features - we e.g. _do_ have fully automated rigs for
hotplug testing). Everywhere else coverage is pretty awesome, because
we have lots of tests and lots of different machines.

Aside: We also subject linux-next to the same torture, so we know how
many machines will die when we pull in -rc1. It's hard to tell,
because lots of noise in the data, but I think overall system
stability of linux-next has improved. And I think it's been a while
since we last catched someone pushing untested patches to linux-next
that failed on our entire farm :-)
-Daniel
---
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
