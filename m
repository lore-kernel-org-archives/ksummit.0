Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E6A4E71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:04:57 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 289B071C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:04:57 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Date: Tue, 11 Sep 2018 02:05:06 +0300
Message-ID: <1939259.kNhvOyGpTJ@avalon>
In-Reply-To: <20180910211128.GH16557@thunk.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

On Tuesday, 11 September 2018 00:11:28 EEST Theodore Y. Ts'o wrote:
> On Mon, Sep 10, 2018 at 11:32:00PM +0300, Laurent Pinchart wrote:
> > On my side, there are three very important features that a communication
> > system should have:
> > 
> > - It should be push-based. I don't want to have to log in and pull
> > information from web UIs.
> > 
> > - It should be customizable, offering an easy way to script review, and
> > patch and pull request handling.
> > 
> > - It should offer an offline mode. Lots of us travel a lot or generally
> > have to work without an internet connection more often than we would
> > like, so any solution that requires being online won't work.
> > 
> > Emails provide all that, there may be good options I just fail to think
> > about right now.
> 
> One more requirement I would add is that messages should be archived,
> and should have a first class search system.  We should be able to
> reference a commit id in a communications thread, and then a search
> for that commit id (or commit description) should be able to turn up
> that message, and from there, be able to see the rest of the messages
> on that thread.
> 
> Being able to find the "legislative history" behind a particular
> change in the kernel is super-important.

Fully agreed. I would even go one step further, I'd like a system where 
relationships between messages are kept. This obviously means linking patches 
from the same series, but also detecting new versions of patch series (to the 
extent possible, as already discussed in this mail thread).

-- 
Regards,

Laurent Pinchart
