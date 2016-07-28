Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 051F1413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:38:49 +0000 (UTC)
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A729ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:38:48 +0000 (UTC)
Received: by mail-pa0-f67.google.com with SMTP id cf3so4146718pad.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 15:38:48 -0700 (PDT)
Date: Thu, 28 Jul 2016 15:38:45 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160728223845.GI16852@dtor-ws>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2443703.ScQNYO34Bz@avalon>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 11:59:13PM +0300, Laurent Pinchart wrote:
> Hi Fengguang,
> 
> On Friday 29 Jul 2016 04:53:24 Fengguang Wu wrote:
> > On Thu, Jul 28, 2016 at 07:15:22PM +0300, Laurent Pinchart wrote:
> > > On Wednesday 27 Jul 2016 22:50:27 Fengguang Wu wrote:
> > >> On Mon, Jul 25, 2016 at 10:23:43PM +0200, Alexandre Belloni wrote:
> > >>> On 25/07/2016 at 21:01:25 +0200, Luis R. Rodriguez wrote :
> > >>>> It surprises Fengguang Wu <fengguang.wu@intel.com> hasn't been
> > >>>> nominated yet, so I'd like to nominate him. The mechanical process
> > >>>> should probably include in the future a scrape for top Reported-by
> > >>>> contributors.
> > >>> 
> > >>> That's a good point.
> > >>> 
> > >>>> Fengguang's 0-day infrastructure is invaluable to day to day kernel
> > >>>> development, having him present would be great for any questions that
> > >>>> may come up. Getting a statistical overview / update of impact / any
> > >>>> major architectural changes of the 0-day infrastructure would also be
> > >>>> very useful. If maintainers are not yet using 0-day it would be great
> > >>>> to hear why. If your contributors are not using 0-day (I know some of
> > >>>> you exist) I'd like to know why you don't use it, I often run into
> > >>>> issues on linux-next which at times I have to fix, if 0-day would have
> > >>>> been used a folowup fix would not have been needed.
> > >>> 
> > >>> Well, I think it would also help to know how the patch/git tree
> > >>> selection is done. Lately, I've been receiving less reports from 0-day
> > >>> and some issues were found by Arnd's autobuilders after hitting
> > >>> linux-next. I used to get report of compilation breakage 10-15 minutes
> > >>> after the patch submission.
> > >> 
> > >> Yeah sorry about that! There are many things that can impact 0-day
> > >> system's stability: regressions, hard disk replacement, proxy issues,
> > >> mailing list kicking off, vocations, etc. Which should improve over
> > >> time as we add monitoring and self-test facilities. On the other hand,
> > >> if you find such issues, please don't hesitate forwarding the error
> > >> emails to us, so that we can check and take action quickly.
> > >
> > > There's no need to apologize, really. You've done and keep doing an
> > > amazing work for which we're all thankful. The biggest problem I see that
> > > would stop me from fully relying on 0-day is the lack of information about
> > > such downtimes, leading me to wonder if the absence of a report really
> > > means that everything is fine. A 0-day status page with information about
> > > the current status and the planned downtime, as well as possibly the list
> > > of trees covered by 0-day (I don't know whether part of that information
> > > could be considered as confidential), would help a lot.
> > 
> > For that purpose you may subscribe to the BUILD SUCCESS notification
> > by sending me an "opt-in" email with your tree URL.
> > 
> > That notification will be sent 1-2 hours after each branch's git push,
> > which contains the build test progress on that branch. Based on which
> > (or missing of it) you'll know if everything is on the track.
> 
> I know that such a feature exists, but I'm not sure all developers would 
> appreciate the additional e-mail traffic. That's why I proposed a status page 
> that could be polled when needed.

I for one really appreciate that I do not need to poll anything and
instead I am notified when stuff that I pushed passed/failed some tests.
So, even if there are status pages and what's not, please do keep opt-in
email notifications.

Thanks Fengguang!

-- 
Dmitry
