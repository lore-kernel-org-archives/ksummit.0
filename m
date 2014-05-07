Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D0A21927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 12:36:28 +0000 (UTC)
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4781C1FB23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 12:36:28 +0000 (UTC)
Received: by mail-ie0-f169.google.com with SMTP id rl12so922526iec.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 05:36:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2617712.JANppmYUxZ@avalon>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
	<2617712.JANppmYUxZ@avalon>
Date: Wed, 7 May 2014 14:36:27 +0200
Message-ID: <CAKMK7uE3212a8hvrqFRtod7hh-7s27ZzMTUJKLTBfv8vMtF2sw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 7, 2014 at 12:12 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> We have seen several review, test and documentation procedures being developed
> for different subsystems in the recent past (two examples are the DRM i915
> driver API test rules explained by Daniel Vetter in a reply to this mail
> thread, and the V4L test suite and documentation procedure) but I have seen
> little effort to consolidate good practice rules. The kernel would certainly
> benefit from both sharing information about how various subsystems tackle the
> API review/test/documentation problem.
>
> Forcing all subsystems to adhere and enforce a superset of rules would likely
> put too much burden on maintainers and developers, especially for the smaller
> subsystems. However, I believe we could help by gathering and consolidating
> the good practice rules in a single location under Documentation/. Maintainers
> could then implement those rules (or a subset thereof) without having to
> reinvent the wheel. Rules such as "return -EINVAL when a reserved parameter is
> set" are not complex to implement in code, the real challenge is to implement
> them in the brain of all developers and reviewers.

I'd be very interested in a discussions about existing best practices
already developed in different subsystems and figuring out what
minimal standards we should requires across the board.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
