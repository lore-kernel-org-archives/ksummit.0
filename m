Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C0A9B98F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 14:15:10 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CD302019A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 14:15:10 +0000 (UTC)
Date: Fri, 30 May 2014 10:14:55 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140530141455.GB24054@tuxdriver.com>
References: <CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
	<20140530050220.GA2505@kroah.com>
	<1401427998.2163.37.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401427998.2163.37.camel@dabdike>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 09:33:18AM +0400, James Bottomley wrote:

> We need to design programs for new people that draw them in, not keep
> them on the periphery.  That's why I think bug fixing is a better
> activity: it means they have to understand some of the code; the change
> can be small and isolated, so they don't have to understand all the code
> and it often encourages people to find out more about whatever they're
> fixing, hence draws them in.
> 
> We're way off the topic of encouraging reviewers, but the bottom line
> for me is I don't believe starting people out with cleanup type changes
> is a good way to get wider engagement.  It is a good way to increase the
> number of overall patches, all of which need to be reviewed, hence the
> need for more reviewers.

You may have a good point -- people that have spent time finding
and fixing bugs may actually have an incentive to keep new bugs out.
But someone looking to boost their patch count may be perfectly happy
to observe _some_ (hopefully only minor) things slip through only
for the observer to later post a patch to correct them.

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
