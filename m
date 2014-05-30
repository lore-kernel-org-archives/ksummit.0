Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 618788A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 05:39:18 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 140871F8C2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 05:39:18 +0000 (UTC)
Message-ID: <1401428346.2163.43.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>
Date: Fri, 30 May 2014 09:39:06 +0400
In-Reply-To: <20140530050448.GB2505@kroah.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
	<20140529233004.GB11741@kroah.com>
	<alpine.DEB.2.02.1405300056000.8897@utopia.booyaka.com>
	<20140530050448.GB2505@kroah.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Thu, 2014-05-29 at 22:04 -0700, Greg KH wrote:
> On Fri, May 30, 2014 at 01:12:06AM +0000, Paul Walmsley wrote:
> > On Thu, 29 May 2014, Greg KH wrote:
> > 
> > > On Thu, May 29, 2014 at 02:03:16PM -0700, Olof Johansson wrote:
> > > > What are we really trying to fix here? Is the current process really
> > > > broken or are we trying to create more process that's not needed for
> > > > some other reason?
> > > 
> > > I think the latter.
> > > 
> > > Somehow, we seem to be constantly increasing our rate of change, are
> > > people thinking we are having problems here?  If so, exactly where?
> > 
> > If "increasing our rate of change" was the only metric that we cared 
> > about, we wouldn't be discussing how to attract more reviewers.
> 
> I'm not saying it's the only metric, but just pointing out that while we
> constantly ask for more reviewers, it doesn't seem to be slowing us
> down.

It depends whether you believe every patch has to be reviewed.  If you
do (and I certainly believe we have to in order to maintain code
quality), we have to increase our review bandwidth at the same rate we
increase our commits, otherwise the imbalance causes a backlog of
unreviewed patches.

What I see at the moment is that the number of patches exceeds the
number of reviewers quite substantially.  By and large the reviewers
mostly get through the backlog between merge windows (but the process is
an exhausting one which will lead to reviewer burn out), but I can see a
time arriving soon when they can't and we start wrapping ourselves
around the axle because of too few reviewers.

James
