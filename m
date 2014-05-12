Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BD7EDAB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:57:04 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 155EE20335
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:57:04 +0000 (UTC)
Date: Mon, 12 May 2014 17:57:01 +0200
From: Jan Kara <jack@suse.cz>
To: Chris Mason <clm@fb.com>
Message-ID: <20140512155701.GC3685@quack.suse.cz>
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

  Hello,

On Mon 12-05-14 10:32:27, Chris Mason wrote:
> We're in the middle of upgrading the tiers here from older kernels
> (2.6.38, 3.2) into 3.10 and higher.
> 
> I've been doing this upgrade game for a number of years now, with
> different business cards taped to my forehead and with different
> target workloads.
> 
> The result is always the same...if I'm really lucky the system isn't
> slower, but usually I'm left with a steaming pile of 10-30%
> regressions.
  I'd be interested in this discussion as well. We are in a similar
situation in SUSE now when moving our enterprise kernel from 3.0 to 3.12
base. So me, Jiri Kosina, or Mel Gorman can fill in things we found and you
didn't ;) Plus we are slowly working on setting up some more systematic and
continuous way of tracking performance in kernels so sharing experiences
with what is useful to run would be interesting as well.

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
