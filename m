Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B2D498F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 01:09:00 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F4CC201E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 01:09:00 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 67AAE2038B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 21:08:59 -0400 (EDT)
Date: Fri, 30 May 2014 16:39:47 -0700
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140530233947.GF25854@kroah.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
	<20140529233004.GB11741@kroah.com>
	<alpine.DEB.2.02.1405300056000.8897@utopia.booyaka.com>
	<20140530050448.GB2505@kroah.com>
	<1401428346.2163.43.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401428346.2163.43.camel@dabdike>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
 Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 09:39:06AM +0400, James Bottomley wrote:
> On Thu, 2014-05-29 at 22:04 -0700, Greg KH wrote:
> > On Fri, May 30, 2014 at 01:12:06AM +0000, Paul Walmsley wrote:
> > > On Thu, 29 May 2014, Greg KH wrote:
> > > 
> > > > On Thu, May 29, 2014 at 02:03:16PM -0700, Olof Johansson wrote:
> > > > > What are we really trying to fix here? Is the current process really
> > > > > broken or are we trying to create more process that's not needed for
> > > > > some other reason?
> > > > 
> > > > I think the latter.
> > > > 
> > > > Somehow, we seem to be constantly increasing our rate of change, are
> > > > people thinking we are having problems here?  If so, exactly where?
> > > 
> > > If "increasing our rate of change" was the only metric that we cared 
> > > about, we wouldn't be discussing how to attract more reviewers.
> > 
> > I'm not saying it's the only metric, but just pointing out that while we
> > constantly ask for more reviewers, it doesn't seem to be slowing us
> > down.
> 
> It depends whether you believe every patch has to be reviewed.

Well, aside from people I "trust", yes, the patch better be reviewed,
that's what a subsystem maintainer's job is.

> If you do (and I certainly believe we have to in order to maintain
> code quality), we have to increase our review bandwidth at the same
> rate we increase our commits, otherwise the imbalance causes a backlog
> of unreviewed patches.
> 
> What I see at the moment is that the number of patches exceeds the
> number of reviewers quite substantially.  By and large the reviewers
> mostly get through the backlog between merge windows (but the process is
> an exhausting one which will lead to reviewer burn out), but I can see a
> time arriving soon when they can't and we start wrapping ourselves
> around the axle because of too few reviewers.

As was pointed out, push back, and ask for help.  We have people asking
for what they can do to help out, give them something to do!

greg k-h
