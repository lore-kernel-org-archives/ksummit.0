Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B2DC91A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:15:11 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80FA02A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:15:10 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 28 Jul 2016 19:15:22 +0300
Message-ID: <5486315.Z6uhQZYKqJ@avalon>
In-Reply-To: <20160727145027.GB2273@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de>
	<20160725202343.GJ11405@piout.net>
	<20160727145027.GB2273@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Fengguang,

On Wednesday 27 Jul 2016 22:50:27 Fengguang Wu wrote:
> On Mon, Jul 25, 2016 at 10:23:43PM +0200, Alexandre Belloni wrote:
> >On 25/07/2016 at 21:01:25 +0200, Luis R. Rodriguez wrote :
> >> It surprises Fengguang Wu <fengguang.wu@intel.com> hasn't been nominated
> >> yet, so I'd like to nominate him. The mechanical process should probably
> >> include in the future a scrape for top Reported-by contributors.
> >
> > That's a good point.
> >
> >> Fengguang's 0-day infrastructure is invaluable to day to day kernel
> >> development, having him present would be great for any questions that may
> >> come up. Getting a statistical overview / update of impact / any major
> >> architectural changes of the 0-day infrastructure would also be very
> >> useful. If maintainers are not yet using 0-day it would be great to hear
> >> why. If your contributors are not using 0-day (I know some of you exist)
> >> I'd like to know why you don't use it, I often run into issues on
> >> linux-next which at times I have to fix, if 0-day would have been used a
> >> folowup fix would not have been needed.
> >
> > Well, I think it would also help to know how the patch/git tree
> > selection is done. Lately, I've been receiving less reports from 0-day
> > and some issues were found by Arnd's autobuilders after hitting
> > linux-next. I used to get report of compilation breakage 10-15 minutes
> > after the patch submission.
> 
> Yeah sorry about that! There are many things that can impact 0-day
> system's stability: regressions, hard disk replacement, proxy issues,
> mailing list kicking off, vocations, etc. Which should improve over
> time as we add monitoring and self-test facilities. On the other hand,
> if you find such issues, please don't hesitate forwarding the error
> emails to us, so that we can check and take action quickly.

There's no need to apologize, really. You've done and keep doing an amazing 
work for which we're all thankful. The biggest problem I see that would stop 
me from fully relying on 0-day is the lack of information about such 
downtimes, leading me to wonder if the absence of a report really means that 
everything is fine. A 0-day status page with information about the current 
status and the planned downtime, as well as possibly the list of trees covered 
by 0-day (I don't know whether part of that information could be considered as 
confidential), would help a lot.

-- 
Regards,

Laurent Pinchart
