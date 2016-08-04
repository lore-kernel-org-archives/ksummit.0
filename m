Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C6F371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:14:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0149.hostedemail.com
	[216.40.44.149])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0107F281
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:14:20 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 947CC183D47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:14:19 +0000 (UTC)
Date: Thu, 4 Aug 2016 12:14:14 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160804121414.2466c31f@gandalf.local.home>
In-Reply-To: <20160804154444.GA10323@sirena.org.uk>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 4 Aug 2016 16:44:44 +0100
Mark Brown <broonie@kernel.org> wrote:


> If it's a choice between me taking a bugfix for mainline and me getting
> someone to give me a commit ID for exactly which commit introduced some
> change I'm probably not going to do the latter, especially when a lot of
> these things are more of the "we now understand the hardware better"
> variety.

Who said anything about a choice between one or the other?

> 
> > I don't buy this as burden on a maintainer. This should be part of the
> > maintenance procedure, regardless of sending to stable or not. Yes it
> > does take extra time, but I don't think that time is wasted.  
> 
> I'm really happy we've got people engaging upstream.  I'm happy if
> people fill in the extra information but really I'm way more interested
> in a clear changelog than in getting a Fixes tag, or in checking that
> the tags people are adding are accurate.

Having a clear change log is orthogonal to having a Fixes tag. Actually,
in my experience, change logs with Fixes tags tend to have clearer
explanations in the change log than those without. Because to get that
Fixes tag, one did some research to why the bug happened in the first
place.

> 
> One thing I've told driver authors before is that the big thing I'm
> looking at for drivers for hardware which has limited distribution is
> the impact it has on the subsystem and maintainability - to a great
> degree if nobody can tell if the driver works there's a limited extent
> to which I'm going to care about things.  That doesn't mean I'm not
> reviewing at all but there's always a point where I just can't tell.

For some exotic driver it is probably not as important for clear change
logs and fixes tags, as there's not many users and who knows, maybe the
hardware wont exist in the future when we would want to look into the
history of the code.

I mostly work in the core kernel, and any part of the kernel that has a
much larger area of use would greatly benefit from having clear change
logs as well as Fixes tags that point to regressions, or even if the
bug was there all along. It helps out in many areas besides just
stable. As James mentions, it helps for regression tracking which is
something that people have been wanting to return.

I found a bug in an old version of the kernel that I was using and when
I looked upstream, there was a fixes tag. Not only did I easily find
the proper fix, but it helped me see that the broken code was indeed in
the kernel I was playing with. That's something similar to having
stable releases, but it helps out any other users that are using older
kernels.

-- Steve
