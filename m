Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D53F48A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 08:12:51 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D3C221F88C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 08:12:50 +0000 (UTC)
Date: Sat, 23 Aug 2014 16:12:45 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Grant Likely <grant.likely@secretlab.ca>
Message-ID: <20140823081245.GA16949@localhost>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

Sorry the conversation went too fast for me to jump in.
Hopefully it's not too late to have the below inputs.

On Fri, Aug 22, 2014 at 09:19:27AM -0500, Grant Likely wrote:
> Rough notes from the Testing discussion during the workshop day of
> Kernel Summit. Big thanks to Paul McKenney for writing all of this
> down.
> 
> g.
> 
> Testing session (unconference)
> 
> o       In-kernel or out of kernel?  Bisection?  Can do either way,
>         one approach is to have two clones of the git tree, and another
>         is to "git checkout" a specific version of the tools directory.

Yes. What I do when bisecting scripts/coccinelle static check errors
is to copy that directory out to some temp dir and use it as the
stable version to run.

> o       Levels of tests:  1) get a login prompt, 2) kselftest.
> 
> o       Should we have specified userspace?  No, quickly gets into
>         the distribution-building business.

FYI, in lkp-tests, "bin/setup-local job.yaml" does all the necessary
download, build, .deb creation and installation that's required for
running the given job file. Its source code is at

https://git.kernel.org/cgit/linux/kernel/git/wfg/lkp-tests.git

mmtests and autotest has similar installation capabilities.

> o       Will Deacon: Can script using busybox, inittab, and so on.
>         Can run trinity on such a setup.
> 
> o       Ted: Would be nice if other test frameworks built on top of
>         kselftest.  Therefore kselftest should not make any asssumptions.
> 
> o       Shua: Goal of kselftest isn't to create something new, but
>         rather to gather up what we already have.
> 
> o       Ted: Much of the code in tools/testing/selftest is unit tests
>         for a tiny part of the kernel.  These don't really belong
>         in LTP.
> 
> o       Olof: Let's not reinvent the test-infrastructure wheel.
> 
> o       Aneesh: Autotest.  Others: Lots of such tests, but lots of
>         different ones that are relatively difficult to set up.
> 
> o       Paul: Don't need rootfs.  rcutorture runs out of initrd.
> 
> o       Olof: Often easier just to write a script.
> 
> o       Ted: If we are going to lightweight, need to focus on kernel
>         unit tests.
> 
> o       What kind of tool can we depend on?  Busybox?  Just busybox,
>         has everything it needs.  (This means scripting must be in
>         dash.)
> 
> o       Arnd: klibc has its own set of binaries, cannot support
>         busybox.  Need libc.
> 
> o       Josh: Only C and standard C library supported.

lkp-tests currently depends on ruby to turn a job file into execution.
However it could be converted to shell script. Then there comes an
interesting question: will that make lkp-tests eligible for an
out-of-tree kselftest?

> o       Paul:  Host or guest?
> 
> o       Discussion: apparently need both.  Assume full-fledged distro
>         on host, minimal on guest/target.  UART, retrieve a file.
>         Some targets don't have persistent mass storage.
> 
> o       Grant:  Needs to work on separate hardware, on qemu, on
>         fast models.
> 
> o       Need stdio output, input optional (some tests take input
>         from kernel boot parameters.)

Same here: the lkp-tests post-processing scripts work on stdio output
of its test cases.

> o       How to parse success or failure?  How to know what to ignore?
>         Ted: What are high-level requirements rather than low-level
>         implementation?  Need host to easily parse the information
>         from the target on the host.
> 
> o       Mauro: Need something for performance tests as well.

lkp-tests is designed for performance tests.

LKP = Linux Kernel Performance.

In fact it runs every workload as performance/power tests, including
the functionality tests. For example, yesterday LKP reported an ext4
performance improvement when running xfstests:

        Re: [ext4] 71d4f7d0321: -49.6% xfstests.generic.274.seconds
        https://lkml.org/lkml/2014/8/21/726

> o       Ted: Group the tests.  "Quick" group.  Groups associated with
>         given function (e.g., suspend-resume).  Have profiles based
>         on types of tests needed and time allotted.
> 
> o       Josh: Add test types to the MAINTAINERS file.
> 
> o       Tim: Requirements around cross-building?  People make their
>         own?  We supply some in-tree?  We supply pointers to known
>         good cross-build toolchains?  Grant: "Yes".
> 
> o       Tim:  The need is to enable people who have never cross-built
>         in their life to successfully cross-build and test with
>         minimal effort.

Sorry I may missed some background: given the ktest and aiaiai tools
to help with cross-builds, what's the gap that we are discussing here?

> Next steps:  Grant to send call for volunteers for various efforts
>         to ksummit-discuss, interested people to reply.

We have a team behind lkp-tests actively running tests for all kernel
git trees we are aware of. We look forward to cooperate with everyone
to make it better at catching upstream regressions. Any tests you
would like to keep running for your subsystem, please let me know.

Performance/power tests are in particular suitable for being added
into lkp-tests -- it has very descriptive job file for running a workload
with different parameter sets. Together with elaborate statistics
collection and comparison capabilities, it allows people to catch
subtle changes between different kernels/kconfigs/test parameters.

Thanks,
Fengguang

> o       Josh: Can we pick an existing test output format that already
>         has tools, infrastructure, and so on.
> 
>         Tim: Hudson!
> 
>         Andy: PASS, FAIL, XFAIL, ...
> 
>         Shua: Must fit into the primary goal of being a good kernel
>         developer unit test.
> 
>         Ted: Proposed requirement: Simplest use case must have simple
>         tool that parses output.  Must not include a JRE for output
>         parsing.
> 
>         Tim: Must be human reasable.
> 
>         Andy: Must be short boilerplate, so that it can be generated
>         and read quickly.
> 
>         Paul: Willing to make reasonable adaptations to rcutorture output.
>         But it must not require an in-kernel JRE.
> 
>         Arnd: Would like self-test entry for drivers.
> 
>         Ben: Have seen similar things in other operating systems, would
>         be good in Linux.  Mauro: Would like to separate hardware and
>         software tests for drivers.   Arnd: Could be separate profile.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
