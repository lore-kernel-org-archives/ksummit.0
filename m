Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5C003988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 12:27:28 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C96BC20253
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 12:27:27 +0000 (UTC)
Date: Tue, 13 May 2014 14:27:24 +0200
From: Jan Kara <jack@suse.cz>
To: Greg KH <greg@kroah.com>
Message-ID: <20140513122724.GB22070@quack.suse.cz>
References: <5370DB7B.2040706@fb.com>
 <20140512231648.GA17027@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140512231648.GA17027@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue 13-05-14 01:16:48, Greg KH wrote:
> On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
> > Hi everyone,
> > 
> > We're in the middle of upgrading the tiers here from older kernels 
> > (2.6.38, 3.2) into 3.10 and higher.
> > 
> > I've been doing this upgrade game for a number of years now, with 
> > different business cards taped to my forehead and with different target 
> > workloads.
> > 
> > The result is always the same...if I'm really lucky the system isn't 
> > slower, but usually I'm left with a steaming pile of 10-30% regressions.
> 
> How long have we been having this discussion?  8 years?  It's not like
> people don't know that performance testing needs to be constantly
> happening, we've been saying that for a long time.  It's just that no
> one seems to listen to us :(
  I agree with you that this is coming over and over again for quite a few
years.

> And that is the larger problem, what can we do about that issue.
> Honestly, I don't think much, as it takes money from companies to commit
> to do this work, which no one seems to ever want to do.  What make this
> year the year that something different happens?
  So what I found interesting about the topic is:
1) What has regressed this time in particular? This might be interesting
for a broader audience I believe. With my SUSE hat on, I can learn which
problems should I expect our customers to see that we didn't find during
our testing.  With my community hat on, I can possibly learn some things
which are easy enough to test for...

2) We are looking into some more continuous testing in SUSE so learning
what others have tested would be interesting for me.

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
