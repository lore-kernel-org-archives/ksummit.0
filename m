Return-Path: <mgorman@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 573AD85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 15:37:08 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CAD482019B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 15:37:07 +0000 (UTC)
Date: Wed, 28 May 2014 16:37:02 +0100
From: Mel Gorman <mgorman@suse.de>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140528153702.GU23991@suse.de>
References: <537F3551.2070104@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
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

On Fri, May 23, 2014 at 08:47:29PM +0900, Masami Hiramatsu wrote:
> Hi,
> 
> As I discussed with Greg K.H. at LinuxCon Japan yesterday,
> I'd like to propose kernel testing standard as a separated topic.
> 
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
> 
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
> 

I'm not sure we can ever standardise all forms of kernel testing. Even
a simple "make test" is going to run into problems and it will be
hamstrung. It'll either be too short-lived with poor coverage in which case
it catches nothing useful or too long-lived in which case no one will run it.

For example, I have infrastructure that conducts automated performance
tests which I periodically dig through looking for problems. IMO, it is
only testing the basics of the areas I tend to work in and even then it
takes about 4-5 days to test a single kernel. Something like that will
never fit in "make test".

make test will be fine for feature verification and some functional
verification that does not depend on hardware. So new APIs should have test
cases that demonstrate the feature works and make test would be great for
that which is something that is not enforced today. As LTP is reported to
be sane these days for some tests, it could conceivably be wrapped by "make
test" to avoid duplicating effort there. I think that would be worthwhile
if someone had the time to push it because it would be an unconditional win.

However, beware of attempting to put all testing under its banner as
performance testing is never going to fully fit under its umbrella.
I'd even be wary of attempting to mandate a "standard testing method"
because it's situational. I'd even be wary of specifying particular
benchmarks as the same benchmark in different configurations may test
completely different things. fsmark with the most basic tuning options can
test metadata update performance, in-memory page cache performance or IO
performance depending on the parameters given. Similarly, attempting to
define tests on a per-subsystem basis will also be hazardous because any
interesting test is going to cross multiple subsystems.

-- 
Mel Gorman
SUSE Labs
