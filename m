Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8FB6E9C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:36:10 +0000 (UTC)
Received: from mho-02-ewr.mailhop.org (mho-02-ewr.mailhop.org [204.13.248.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 112501F8BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:36:10 +0000 (UTC)
Date: Fri, 23 May 2014 14:36:05 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140523183605.GJ8664@titan.lakedaemon.net>
References: <537F3551.2070104@hitachi.com>
	<20140523133200.GY8664@titan.lakedaemon.net>
	<CAOesGMhZ-RNs0bQBTABOQhjk3R2EjiWsSBpJ5248Z5YS+RvrRA@mail.gmail.com>
	<537F8F2B.2060108@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <537F8F2B.2060108@hitachi.com>
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

On Sat, May 24, 2014 at 03:10:51AM +0900, Masami Hiramatsu wrote:
> (2014/05/24 1:24), Olof Johansson wrote:
> >> The boot farms that Kevin and Olof run currently tests booting to a
> >> command prompt.  We're catching a lot of regressions before they hit
> >> mainline, which is great.  But I'd like to see how we can extend that.
> >> And yes, I know those farms are saturated, and we need to bring
> >> something else on line to do more functional testing,  Perhaps break up
> >> the testing load:  boot-test linux-next, and runtime tests of the -rcX
> >> tags and stable tags.
> > 
> > I wouldn't call them saturated, but neither of us will be able to
> > scale to 10x the current size. 2-3x should be doable.
> 
> Right, the size of test should be considered. If the number of tests
> are too big and testing takes too long time, no one executes it.
> 
> >>> So, I'd like to discuss how we can standardize them for each subsystem
> >>> at this kernel summit.
> >>>
> >>> My suggestion are,
> >>> - Organizing existing in-tree kernel test frameworks (as "make test")
> > 
> > For my type of setup, I'd prefer a "make install_tests" target,
> > similar to modules/firmware that I can give a prefix to, and then
> > something in that directory to actually run them.
> 
> So it installs tests to /lib/testing/, similar to modules :) ?
> Yeah, that's also good, perhaps we can add "make testconfig" too.

Ideally, the kernel's .config could be used to determine which tests are
relevant.  I can also see the installed runtime tests being tied to the
kernel version they came from.

thx,

Jason.
