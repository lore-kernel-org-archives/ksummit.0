Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BDA768CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 13:02:15 +0000 (UTC)
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 463B7201
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 13:02:15 +0000 (UTC)
Received: by mail-io0-f173.google.com with SMTP id h64so23542306iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 06:02:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170629133949.GA19691@infradead.org>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<20170629133949.GA19691@infradead.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 30 Jun 2017 15:02:13 +0200
Message-ID: <CAKMK7uEXxc+dSvGk6XR1712h+VB3gDkOKbOmm7wnkvgN9HKdNg@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Jun 29, 2017 at 3:39 PM, Christoph Hellwig <hch@infradead.org> wrote:
> On Wed, Jun 28, 2017 at 04:01:34PM -0700, Kees Cook wrote:
>> If there is time at the summit, I'd like to quickly discuss best
>> practices for the mechanics of doing security defense development in
>> the kernel. This has always been a bit tricky and I've done my best to
>> navigate it, but it still feels like there are glitches that could be
>> ironed out with a more clearly declared process (or ownership).
>
> It's pretty hard as a general rule.  As someone who does a lot of
> cross-subsystem work I usually try to find a "lead" subsystem to
> funnel thing through, and if there isn't one yet I create it
> (see the new uuid and dma-mappings ones for the next merge window).

I've only done cross-subsystem with 2-3 subsystems maybe for driver
work, and there the "topic branch in lead subsystem" plus maybe "send
pull requests to other subsystems when they insist they merge their
own patches through there tree" seems to work fairly well. Needs all
maintainers to understand the flow, but we've got that now scripted
entirely in drm so easy to do.

Large-scale cross-subsystem API stuff probably always needs multiple
releases, since you'll have some new usage grown no matter what. If
the current pace is too slow I guess we should think about shrinking
the release cycle maybe, to be able to sync up more often across
trees.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
