Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 940238A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 14:19:48 +0000 (UTC)
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 10AB11FB50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 14:19:47 +0000 (UTC)
Received: by mail-ig0-f181.google.com with SMTP id h3so14562485igd.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 07:19:47 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <20140819163621.GA15109@linux.vnet.ibm.com>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Fri, 22 Aug 2014 09:19:27 -0500
Message-ID: <CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset=ISO-8859-1
Subject: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Rough notes from the Testing discussion during the workshop day of
Kernel Summit. Big thanks to Paul McKenney for writing all of this
down.

g.

Testing session (unconference)

o       In-kernel or out of kernel?  Bisection?  Can do either way,
        one approach is to have two clones of the git tree, and another
        is to "git checkout" a specific version of the tools directory.

o       Levels of tests:  1) get a login prompt, 2) kselftest.

o       Should we have specified userspace?  No, quickly gets into
        the distribution-building business.

o       Will Deacon: Can script using busybox, inittab, and so on.
        Can run trinity on such a setup.

o       Ted: Would be nice if other test frameworks built on top of
        kselftest.  Therefore kselftest should not make any asssumptions.

o       Shua: Goal of kselftest isn't to create something new, but
        rather to gather up what we already have.

o       Ted: Much of the code in tools/testing/selftest is unit tests
        for a tiny part of the kernel.  These don't really belong
        in LTP.

o       Olof: Let's not reinvent the test-infrastructure wheel.

o       Aneesh: Autotest.  Others: Lots of such tests, but lots of
        different ones that are relatively difficult to set up.

o       Paul: Don't need rootfs.  rcutorture runs out of initrd.

o       Olof: Often easier just to write a script.

o       Ted: If we are going to lightweight, need to focus on kernel
        unit tests.

o       What kind of tool can we depend on?  Busybox?  Just busybox,
        has everything it needs.  (This means scripting must be in
        dash.)

o       Arnd: klibc has its own set of binaries, cannot support
        busybox.  Need libc.

o       Josh: Only C and standard C library supported.

o       Paul:  Host or guest?

o       Discussion: apparently need both.  Assume full-fledged distro
        on host, minimal on guest/target.  UART, retrieve a file.
        Some targets don't have persistent mass storage.

o       Grant:  Needs to work on separate hardware, on qemu, on
        fast models.

o       Need stdio output, input optional (some tests take input
        from kernel boot parameters.)

o       How to parse success or failure?  How to know what to ignore?
        Ted: What are high-level requirements rather than low-level
        implementation?  Need host to easily parse the information
        from the target on the host.

o       Mauro: Need something for performance tests as well.

o       Ted: Group the tests.  "Quick" group.  Groups associated with
        given function (e.g., suspend-resume).  Have profiles based
        on types of tests needed and time allotted.

o       Josh: Add test types to the MAINTAINERS file.

o       Tim: Requirements around cross-building?  People make their
        own?  We supply some in-tree?  We supply pointers to known
        good cross-build toolchains?  Grant: "Yes".

o       Tim:  The need is to enable people who have never cross-built
        in their life to successfully cross-build and test with
        minimal effort.

Next steps:  Grant to send call for volunteers for various efforts
        to ksummit-discuss, interested people to reply.

o       Josh: Can we pick an existing test output format that already
        has tools, infrastructure, and so on.

        Tim: Hudson!

        Andy: PASS, FAIL, XFAIL, ...

        Shua: Must fit into the primary goal of being a good kernel
        developer unit test.

        Ted: Proposed requirement: Simplest use case must have simple
        tool that parses output.  Must not include a JRE for output
        parsing.

        Tim: Must be human reasable.

        Andy: Must be short boilerplate, so that it can be generated
        and read quickly.

        Paul: Willing to make reasonable adaptations to rcutorture output.
        But it must not require an in-kernel JRE.

        Arnd: Would like self-test entry for drivers.

        Ben: Have seen similar things in other operating systems, would
        be good in Linux.  Mauro: Would like to separate hardware and
        software tests for drivers.   Arnd: Could be separate profile.
