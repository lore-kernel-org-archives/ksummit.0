Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EF14E26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:32:06 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 135FB1F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:32:06 +0000 (UTC)
Date: Fri, 23 May 2014 09:32:00 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140523133200.GY8664@titan.lakedaemon.net>
References: <537F3551.2070104@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <537F3551.2070104@hitachi.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Masami,

On Fri, May 23, 2014 at 08:47:29PM +0900, Masami Hiramatsu wrote:
> Issue:
> There are many ways to test the kernel but it's neither well documented
> nor standardized/organized.
> 
> As you may know, testing kernel is important on each phase of kernel
> life-cycle. For example, even at the designing phase, actual test-case
> shows us what the new feature/design does, how is will work, and how
> to use it. This can improve the quality of the discussion.
> 
> Through the previous discussion I realized there are many different methods/
> tools/functions for testing kernel, LTP, trinity, tools/testing/selftest,
> in-kernel selftest etc. Each has good points and bad points.

* automated boot testing (embedded platforms)
* runtime testing

A lot of development that we see is embedded platforms using
cross-compilers.  That makes a whole lot of tests impossible to run on
the host.  Especially when it deals with hardware interaction.  So
run-time testing definitely needs to be a part of the discussion.

The boot farms that Kevin and Olof run currently tests booting to a
command prompt.  We're catching a lot of regressions before they hit
mainline, which is great.  But I'd like to see how we can extend that.
And yes, I know those farms are saturated, and we need to bring
something else on line to do more functional testing,  Perhaps break up
the testing load:  boot-test linux-next, and runtime tests of the -rcX
tags and stable tags.

> So, I'd like to discuss how we can standardize them for each subsystem
> at this kernel summit.
> 
> My suggestion are,
> - Organizing existing in-tree kernel test frameworks (as "make test")
> - Documenting the standard testing method, including how to run,
>   how to add test-cases, and how to report.
> - Commenting standard testing for each subsystem, maybe by adding
>   UT: or TS: tags to MAINTAINERS, which describes the URL of
>   out-of-tree tests or the directory of the selftest.

 - classify testing into functional, performance, or stress
    - possibly security/fuzzing

> Note that I don't tend to change the ways to test for subsystems which
> already have own tests, but organize it for who wants to get involved in
> and/or to evaluate it. :-)

And make it clear what type of testing it is.  "Well, I ran make test"
on a patch affecting performance is no good if the test for that area is
purely functional.

On the stress-testing front, there's a great paper [1] on how to
stress-test software destined for deep space.  Definitely worth the
read.  And directly applicable to more than deep space satellites.

> I think we can strongly request developers to add test-cases for new features
> if we standardize the testing method.
> 
> Suggested participants: greg k.h., Li Zefan, test-tool maintainers and
>                        subsystem maintainers.

+ Fenguang Wu, Kevin Hilman, Olof Johansson

thx,

Jason.

[1] http://messenger.jhuapl.edu/the_mission/publications/Hill.2007.pdf
