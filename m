Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30B95BD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 01:54:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D38E2157
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 01:54:47 +0000 (UTC)
Date: Thu, 9 Jul 2015 18:54:41 -0700
From: Darren Hart <dvhart@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20150710015441.GF111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150709193951.GE9169@vmdeb7> <20150709202152.GE1237@dtor-ws>
	<20150710001411.GJ9417@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710001411.GJ9417@thunk.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 08:14:11PM -0400, Theodore Ts'o wrote:
> On Thu, Jul 09, 2015 at 01:21:52PM -0700, Dmitry Torokhov wrote:
> > 
> > No, that is not always true. If I see a naked "reviewed-by" from a
> > person who's been working on the subsystem quite a bit and shown a good
> > judgement it is enough for me. I do not need them to find something to
> > nitpick over so that there is "meat" to the review.
> 
> Absolutely.  If I'm looking at a patch for ext4, and I see a bare
> Reviewed-by: from Jan Kara, I treat that very differently compared to
> a Reviewed-by: coming from someone like Nick Krause.
> 
> The challenge is if we are using a scheme that uses some kind of
> automated counting of Reviewed-by lines, how do we make the system
> smart enough so it counts the former, but not the latter?  Or worse,
> *encourages* more of the latter, which just adds more noise which
> actually increases the load on Maintainers, not decreases.

I suppose the scan should read the tags from what is committed, not from LKML,
then the maintainers are responsible to include only meaningful tags in the
commit history? You then of course run the risk of putting someone off by
ignoring their work - and I'd rather err in favor of the reviewer (false
positive).

-- 
Darren Hart
Intel Open Source Technology Center
