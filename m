Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 15B148AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 10:11:50 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 830E420254
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 10:11:49 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 07 May 2014 12:12:11 +0200
Message-ID: <2617712.JANppmYUxZ@avalon>
In-Reply-To: <1399404095.4218.51.camel@jlt4.sipsolutions.net>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 06 May 2014 21:21:35 Johannes Berg wrote:
> On Tue, 2014-05-06 at 10:58 -0700, josh@joshtriplett.org wrote:
> > We need to have better processes for vetting new syscalls and ABIs far
> > more carefully than we currently do.
> 
> How far would you want to take this? New syscalls is one thing, but
> there are frequently additions to "subsystem APIs", e.g. in networking,
> that aren't really syscalls but part of netlink etc. Trying to vet all
> of that might very well end up just overwhelming the process, but on the
> other hand it's still something that probably should be done in some
> form.

Part of the issue is not an unwillingness of subsystem maintainers and 
developers to apply proper review procedure to their new APIs, but rather a 
lack of knowledge regarding what such a review procedure should be.

We have seen several review, test and documentation procedures being developed 
for different subsystems in the recent past (two examples are the DRM i915 
driver API test rules explained by Daniel Vetter in a reply to this mail 
thread, and the V4L test suite and documentation procedure) but I have seen 
little effort to consolidate good practice rules. The kernel would certainly 
benefit from both sharing information about how various subsystems tackle the 
API review/test/documentation problem.

Forcing all subsystems to adhere and enforce a superset of rules would likely 
put too much burden on maintainers and developers, especially for the smaller 
subsystems. However, I believe we could help by gathering and consolidating 
the good practice rules in a single location under Documentation/. Maintainers 
could then implement those rules (or a subset thereof) without having to 
reinvent the wheel. Rules such as "return -EINVAL when a reserved parameter is 
set" are not complex to implement in code, the real challenge is to implement 
them in the brain of all developers and reviewers.

-- 
Regards,

Laurent Pinchart
