Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7A14C9A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:32:08 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C164B200AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 18:32:07 +0000 (UTC)
Date: Fri, 23 May 2014 14:32:02 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140523183202.GI8664@titan.lakedaemon.net>
References: <537F3551.2070104@hitachi.com>
	<20140523133200.GY8664@titan.lakedaemon.net>
	<537F8E2B.1060805@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <537F8E2B.1060805@hitachi.com>
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

On Sat, May 24, 2014 at 03:06:35AM +0900, Masami Hiramatsu wrote:
> (2014/05/23 22:32), Jason Cooper wrote:
> > On Fri, May 23, 2014 at 08:47:29PM +0900, Masami Hiramatsu wrote:
> >> Issue:
> >> There are many ways to test the kernel but it's neither well documented
> >> nor standardized/organized.
> >>
> >> As you may know, testing kernel is important on each phase of kernel
> >> life-cycle. For example, even at the designing phase, actual test-case
> >> shows us what the new feature/design does, how is will work, and how
> >> to use it. This can improve the quality of the discussion.
> >>
> >> Through the previous discussion I realized there are many different methods/
> >> tools/functions for testing kernel, LTP, trinity, tools/testing/selftest,
> >> in-kernel selftest etc. Each has good points and bad points.
> > 
> > * automated boot testing (embedded platforms)
> > * runtime testing
> > 
> > A lot of development that we see is embedded platforms using
> > cross-compilers.  That makes a whole lot of tests impossible to run on
> > the host.  Especially when it deals with hardware interaction.  So
> > run-time testing definitely needs to be a part of the discussion.
> 
> Yeah, standardizing how we do run time/boot time testing is good
> to be discussed :) And I'd like to focus on standardization process
> at this point, since for each implementation there are many hardware
> specific reasons why we do/can't do something I guess.

I'm not sure standardization is the correct word.  It may be better to
implement generic test harnesses for each scenario.  Then, use the
harness for things you care about and submit bugfixes mentioning the use
of the harness.  iow, this is something best socialized, not mandated.

Developers tend to gravitate to things that are made easy for them.  eg,
no one ever told me to use get_maintainers.pl, but I use it all the
time.  Why?  Because it's useful, not because I was told to.

The same can be said of the Link: tag, the Cc: stable tag, and
checkpatch.pl.  The last is a great example of the double-edged sword of
'thinks for you'. ;-)

> > The boot farms that Kevin and Olof run currently tests booting to a
> > command prompt.  We're catching a lot of regressions before they hit
> > mainline, which is great.  But I'd like to see how we can extend that.
> > And yes, I know those farms are saturated, and we need to bring
> > something else on line to do more functional testing,  Perhaps break up
> > the testing load:  boot-test linux-next, and runtime tests of the -rcX
> > tags and stable tags.
> 
> Yeah, it's worth to share the such testing methods. For boot-time
> testing, I think we can have a script which packs tests and builds a
> special initrd which runs the tests and makes reports :)

Like Olof alluded to, I could see a 'make tests_install' which would put
the Kconfig-selected runtime tests into a directory.  Said directory
could then be built into an initrd.  Or, some IT shops may want to have
the tests run after each upgrade before resuming normal operations.  In
either case, there's benefit to have those tests kept in the kernel
repository.

Classifying tests as functional/performance/stress would help end users
run only the type of tests they feel they need to be comfortable with an
upgrade.

It also doesn't make sense to run performance tests before determining
if there are any functional regressions. ;-)

...
> >> I think we can strongly request developers to add test-cases for new features
> >> if we standardize the testing method.
> >>
> >> Suggested participants: greg k.h., Li Zefan, test-tool maintainers and
> >>                        subsystem maintainers.
> > 
> > + Fenguang Wu, Kevin Hilman, Olof Johansson

I guess I should also explicitly mention:

 + Jason Cooper

thx,

Jason.
