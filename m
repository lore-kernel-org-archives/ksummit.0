Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66277884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 14:21:35 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F10471CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 14:21:34 +0000 (UTC)
Date: Thu, 21 Jul 2016 07:21:28 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160721142127.GA23563@x>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
	<20160721111917.GA20006@x>
	<1469102358.120686.142.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469102358.120686.142.camel@infradead.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 21, 2016 at 12:59:18PM +0100, David Woodhouse wrote:
> On Thu, 2016-07-21 at 04:19 -0700, Josh Triplett wrote:
> > I've run into various cases where "console=ttyS0,115200" didn't produce
> > any serial output at all, but "earlyprintk=ttyS0,115200,keep" did.
> 
> Note that those are very different things. Because 'ttyS0' for
> earlyprintk really means '16x50 UART at 0x3f8'. While the later one
> actually depends on it being discovered by the various options we have
> for finding them, some of which are only available quite late.

Given the discussion in this thread about wanting to eliminate
earlyprintk in favor of a unified mechanism that works as early as
possible, how would this case work on the system I described above where
earlyprintk works and console doesn't?

- Josh Triplett
