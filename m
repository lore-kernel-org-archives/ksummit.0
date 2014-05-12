Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B6984942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:16:51 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1DEC201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:16:50 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id B7B9C21F54
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:16:49 -0400 (EDT)
Date: Tue, 13 May 2014 01:16:48 +0200
From: Greg KH <greg@kroah.com>
To: Chris Mason <clm@fb.com>
Message-ID: <20140512231648.GA17027@kroah.com>
References: <5370DB7B.2040706@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5370DB7B.2040706@fb.com>
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

On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
> Hi everyone,
> 
> We're in the middle of upgrading the tiers here from older kernels 
> (2.6.38, 3.2) into 3.10 and higher.
> 
> I've been doing this upgrade game for a number of years now, with 
> different business cards taped to my forehead and with different target 
> workloads.
> 
> The result is always the same...if I'm really lucky the system isn't 
> slower, but usually I'm left with a steaming pile of 10-30% regressions.

How long have we been having this discussion?  8 years?  It's not like
people don't know that performance testing needs to be constantly
happening, we've been saying that for a long time.  It's just that no
one seems to listen to us :(

And that is the larger problem, what can we do about that issue.
Honestly, I don't think much, as it takes money from companies to commit
to do this work, which no one seems to ever want to do.  What make this
year the year that something different happens?

greg k-h
