Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6ABB58DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 12:52:28 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 550451F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 12:52:26 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.mail.srv.osa [10.202.2.43])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id BCE4621131
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:52:21 -0400 (EDT)
Date: Wed, 21 May 2014 21:52:18 +0900
From: Greg KH <greg@kroah.com>
To: Matt Fleming <matt@console-pimps.org>
Message-ID: <20140521125218.GA1206@kroah.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521075547.GA20121@kroah.com>
	<20140521090513.GK4798@console-pimps.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140521090513.GK4798@console-pimps.org>
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

On Wed, May 21, 2014 at 10:05:13AM +0100, Matt Fleming wrote:
> On Wed, 21 May, at 04:55:47PM, Greg KH wrote:
> > On Wed, May 21, 2014 at 12:48:48AM -0700, Dan Williams wrote:
> > > With regards to saying "no" faster, it seems kernel code rarely comes
> > > with tests.  However, maintainers today are already able to reduce the
> > > latency to "no" when the 0-day-kbuild robot emits a negative test.
> > > Why not arm that system with tests it can autodiscover?  What has held
> > > back unit test culture in the kernel?
> > 
> > The fact that no one has stepped up and taken maintainership of the
> > tests and ensure that they continue to work.
> 
> That's not usually how unit tests work. They're supposed to be owned by
> everyone, i.e. if your change breaks the test you are responsible for
> fixing your change, or the test, or both. Everyone needs to ensure the
> tests continue to work.

Ideal world meet the real world.

Today, the in-kernel tests are broken.  Now if that is a kernel problem,
or a test problem, no one seems to be stepping up to figure that out.
Someone needs to be on top of it to do that.  Given that no one has done
that for, well, ever, this needs to be fixed.

> Likewise, the person implementing a new feature is the most well
> equipped to write tests for it. Unfortunately that does require a
> certain amount of "buy-in" from the community.

We have that "buy-in", and have had it for a long time.  I've been
asking for this for years, and finally have the ear of people who are
able to allocate resources for it.  Which is a very nice chance that I
do not want to blow it.

> However, a maintainer role might make sense for collating test results,
> reporting failures or running the tests on a large number of hardware
> configurations, like how Fengguang Wu says "The 0-day infrastructure
> shows your commit introduced a regression" or Stephen Rothwell says "A
> merge of your tree causes these conflicts".
> 
> For anything other than trivial cases I wouldn't expect these guys to
> have to fixup the breakage to ensure the tests continue working - that
> kind of never ending battle would make a person's head explode.

Agreed, but given that no one has even tried, and that I know of someone
who has agreed to do this work, let's give it a chance.

thanks,

greg k-h
