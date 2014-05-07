Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7026195A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 13:30:20 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 505E020278
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 13:30:16 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 07 May 2014 15:30:38 +0200
Message-ID: <2168265.ezyDqFgGPA@avalon>
In-Reply-To: <CAKMK7uE3212a8hvrqFRtod7hh-7s27ZzMTUJKLTBfv8vMtF2sw@mail.gmail.com>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<2617712.JANppmYUxZ@avalon>
	<CAKMK7uE3212a8hvrqFRtod7hh-7s27ZzMTUJKLTBfv8vMtF2sw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Wednesday 07 May 2014 14:36:27 Daniel Vetter wrote:
> On Wed, May 7, 2014 at 12:12 PM, Laurent Pinchart wrote:
> > We have seen several review, test and documentation procedures being
> > developed for different subsystems in the recent past (two examples are
> > the DRM i915 driver API test rules explained by Daniel Vetter in a reply
> > to this mail thread, and the V4L test suite and documentation procedure)
> > but I have seen little effort to consolidate good practice rules. The
> > kernel would certainly benefit from both sharing information about how
> > various subsystems tackle the API review/test/documentation problem.
> > 
> > Forcing all subsystems to adhere and enforce a superset of rules would
> > likely put too much burden on maintainers and developers, especially for
> > the smaller subsystems. However, I believe we could help by gathering and
> > consolidating the good practice rules in a single location under
> > Documentation/. Maintainers could then implement those rules (or a subset
> > thereof) without having to reinvent the wheel. Rules such as "return
> > -EINVAL when a reserved parameter is set" are not complex to implement in
> > code, the real challenge is to implement them in the brain of all
> > developers and reviewers.
> 
> I'd be very interested in a discussions about existing best practices
> already developed in different subsystems and figuring out what
> minimal standards we should requires across the board.

So would I. The same topic is being discussed in the "stable issues" mail 
thread, it thus looks like a good candidate to me. On the V4L side Hans 
Verkuil (CC'ed) would likely be interested as a core V4L reviewer and 
userspace test case developer.

-- 
Regards,

Laurent Pinchart
