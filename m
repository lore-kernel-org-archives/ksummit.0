Return-Path: <metan@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 82EF3ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Jun 2014 14:44:23 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 928FB201D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Jun 2014 14:44:19 +0000 (UTC)
Date: Mon, 9 Jun 2014 16:44:15 +0200
From: chrubis@suse.cz
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140609144415.GA3947@rei>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
	<1401977409.2207.7.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401977409.2207.7.camel@dabdike.int.hansenpartnership.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!
> > Is there a reason not to run the latest version of LTP (unless bisecting
> > LTP ;-)? The syscall API is supposed to be stable.
> 
> I think not, and we have strong reasons for wanting to run the latest
> LTP against every kernel (including stable ones), not just the version
> in the test directory, so in practise, it looks like this doesn't meet
> the changes with the kernel test for inclusion.  On the other hand,
> having the tests available is also useful.   Perhaps we just need a
> tests repo which pulls from all our other disparate tests so there's one
> location everyone knows to go for the latest?

That sounds good to me. But as allready said, creating some
scripts/repos that pulls and runs all the tests is relatively easy.
Creating configurations and figuring out who needs to run which parts is
not.

I think that the main problem here is the communication and information
sharing. Maybe we can start with a wiki page or a similar document that
summarizes maintained testsuites, their purpose and structure. Because
just now, if there is any information about kernel testing, it is
scattered around the web, forums, etc.

Also I would like to see more communication between the Kernel and QA.

It's getting a bit better as we have linux-api mailing list and (thanks
to Michaal Kerrisk) commits that change kernel API are starting to CC
it. Which I consider as a great improvement because now we at least know
what we need to write tests for. However I still think that there is
some work lost in the process, particulary because the kernel devs who
wrote the userspace API have surely implemented some kind of tests for
it and these may have been adapted and included into LTP which would be
far less work than writing testcases from scratch.

-- 
Cyril Hrubis
chrubis@suse.cz
