Return-Path: <matt@arkanian.console-pimps.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E994C4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 09:05:17 +0000 (UTC)
Received: from arkanian.console-pimps.org (arkanian.console-pimps.org
	[212.110.184.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8E1221F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 09:05:17 +0000 (UTC)
Date: Wed, 21 May 2014 10:05:13 +0100
From: Matt Fleming <matt@console-pimps.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20140521090513.GK4798@console-pimps.org>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521075547.GA20121@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140521075547.GA20121@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 21 May, at 04:55:47PM, Greg KH wrote:
> On Wed, May 21, 2014 at 12:48:48AM -0700, Dan Williams wrote:
> > With regards to saying "no" faster, it seems kernel code rarely comes
> > with tests.  However, maintainers today are already able to reduce the
> > latency to "no" when the 0-day-kbuild robot emits a negative test.
> > Why not arm that system with tests it can autodiscover?  What has held
> > back unit test culture in the kernel?
> 
> The fact that no one has stepped up and taken maintainership of the
> tests and ensure that they continue to work.

That's not usually how unit tests work. They're supposed to be owned by
everyone, i.e. if your change breaks the test you are responsible for
fixing your change, or the test, or both. Everyone needs to ensure the
tests continue to work.

Likewise, the person implementing a new feature is the most well
equipped to write tests for it. Unfortunately that does require a
certain amount of "buy-in" from the community.

However, a maintainer role might make sense for collating test results,
reporting failures or running the tests on a large number of hardware
configurations, like how Fengguang Wu says "The 0-day infrastructure
shows your commit introduced a regression" or Stephen Rothwell says "A
merge of your tree causes these conflicts".

For anything other than trivial cases I wouldn't expect these guys to
have to fixup the breakage to ensure the tests continue working - that
kind of never ending battle would make a person's head explode.

-- 
Matt Fleming, Intel Open Source Technology Center
