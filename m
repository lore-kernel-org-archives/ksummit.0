Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97D5592B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:14:51 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8CB2D20242
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:14:50 +0000 (UTC)
Message-ID: <53FA2B98.1050003@roeck-us.net>
Date: Sun, 24 Aug 2014 11:14:48 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Grant Likely <grant.likely@secretlab.ca>,
	Fengguang Wu <fengguang.wu@intel.com>
References: <20140819163621.GA15109@linux.vnet.ibm.com>	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>	<20140823081245.GA16949@localhost>
	<CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
In-Reply-To: <CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
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

On 08/24/2014 10:12 AM, Grant Likely wrote:
> On 23 Aug 2014 09:12, "Fengguang Wu" <fengguang.wu@intel.com> wrote:
>>
>> Hi all,
>>
>> Sorry the conversation went too fast for me to jump in.
>> Hopefully it's not too late to have the below inputs.
>
> Absolutely! There's a lot of things we talked about and all of the
> topics are still up for discussion.
>
>>
>> On Fri, Aug 22, 2014 at 09:19:27AM -0500, Grant Likely wrote:
>>> Rough notes from the Testing discussion during the workshop day of
>>> Kernel Summit. Big thanks to Paul McKenney for writing all of this
>>> down.
>>>
>>> g.
>>>
>>> Testing session (unconference)
>>>
>>> o       In-kernel or out of kernel?  Bisection?  Can do either way,
>>>          one approach is to have two clones of the git tree, and another
>>>          is to "git checkout" a specific version of the tools directory.
>>
>> Yes. What I do when bisecting scripts/coccinelle static check errors
>> is to copy that directory out to some temp dir and use it as the
>> stable version to run.
>>
>>> o       Levels of tests:  1) get a login prompt, 2) kselftest.
>>>
>>> o       Should we have specified userspace?  No, quickly gets into
>>>          the distribution-building business.
>>
>> FYI, in lkp-tests, "bin/setup-local job.yaml" does all the necessary
>> download, build, .deb creation and installation that's required for
>> running the given job file. Its source code is at
>>
>> https://git.kernel.org/cgit/linux/kernel/git/wfg/lkp-tests.git
>>
>> mmtests and autotest has similar installation capabilities.
>
> I'll take a look at those, thanks.
>
>>
>>> o       Will Deacon: Can script using busybox, inittab, and so on.
>>>          Can run trinity on such a setup.
>>>
>>> o       Ted: Would be nice if other test frameworks built on top of
>>>          kselftest.  Therefore kselftest should not make any asssumptions.
>>>
>>> o       Shua: Goal of kselftest isn't to create something new, but
>>>          rather to gather up what we already have.
>>>
>>> o       Ted: Much of the code in tools/testing/selftest is unit tests
>>>          for a tiny part of the kernel.  These don't really belong
>>>          in LTP.
>>>
>>> o       Olof: Let's not reinvent the test-infrastructure wheel.
>>>
>>> o       Aneesh: Autotest.  Others: Lots of such tests, but lots of
>>>          different ones that are relatively difficult to set up.
>>>
>>> o       Paul: Don't need rootfs.  rcutorture runs out of initrd.
>>>
>>> o       Olof: Often easier just to write a script.
>>>
>>> o       Ted: If we are going to lightweight, need to focus on kernel
>>>          unit tests.
>>>
>>> o       What kind of tool can we depend on?  Busybox?  Just busybox,
>>>          has everything it needs.  (This means scripting must be in
>>>          dash.)
>>>
>>> o       Arnd: klibc has its own set of binaries, cannot support
>>>          busybox.  Need libc.
>>>
>>> o       Josh: Only C and standard C library supported.
>>
>> lkp-tests currently depends on ruby to turn a job file into execution.
>> However it could be converted to shell script. Then there comes an
>> interesting question: will that make lkp-tests eligible for an
>> out-of-tree kselftest?
>
> I think we still want kselftest to live in tree. The issue here I
> think is what is the simplest possible environment on the target. I
> want to be able to cross build a really simple initrd that works for
> any architecture that Linux supports. This gets test coverage out to
> the less common architectures like microblaze.
>
Absolutely agree. That doesn't prevent out-of-tree usage; my plan is
to use whatever we come up with all the way back to 3.2 kernels.
Getting additional test coverage is essential, and the best way to
achieve it is to have the necessary environment available in the tree.

> I want to avoid c++, ruby, python, etc. Simply because it brings in a
> lot of dependencies and things that can break. Shell script isn't a
> problem.
>
> For the simple rootfs that I'm trying to build, we can simply exclude
> any tests that require extra libraries or interpreters. Anyone needing
> something more complete should bring in a proper distro.
>
>>
>>> o       Paul:  Host or guest?
>>>
>>> o       Discussion: apparently need both.  Assume full-fledged distro
>>>          on host, minimal on guest/target.  UART, retrieve a file.
>>>          Some targets don't have persistent mass storage.
>>>
>>> o       Grant:  Needs to work on separate hardware, on qemu, on
>>>          fast models.
>>>
>>> o       Need stdio output, input optional (some tests take input
>>>          from kernel boot parameters.)
>>
>> Same here: the lkp-tests post-processing scripts work on stdio output
>> of its test cases.
>>
>>> o       How to parse success or failure?  How to know what to ignore?
>>>          Ted: What are high-level requirements rather than low-level
>>>          implementation?  Need host to easily parse the information
>>>          from the target on the host.
>>>
>>> o       Mauro: Need something for performance tests as well.
>>
>> lkp-tests is designed for performance tests.
>>
>> LKP = Linux Kernel Performance.
>>
>> In fact it runs every workload as performance/power tests, including
>> the functionality tests. For example, yesterday LKP reported an ext4
>> performance improvement when running xfstests:
>>
>>          Re: [ext4] 71d4f7d0321: -49.6% xfstests.generic.274.seconds
>>          https://lkml.org/lkml/2014/8/21/726
>>
>>> o       Ted: Group the tests.  "Quick" group.  Groups associated with
>>>          given function (e.g., suspend-resume).  Have profiles based
>>>          on types of tests needed and time allotted.
>>>
>>> o       Josh: Add test types to the MAINTAINERS file.
>>>
>>> o       Tim: Requirements around cross-building?  People make their
>>>          own?  We supply some in-tree?  We supply pointers to known
>>>          good cross-build toolchains?  Grant: "Yes".
>>>
>>> o       Tim:  The need is to enable people who have never cross-built
>>>          in their life to successfully cross-build and test with
>>>          minimal effort.
>>
>> Sorry I may missed some background: given the ktest and aiaiai tools
>> to help with cross-builds, what's the gap that we are discussing here?
>
> Cross building the kernel isn't the problem. That's easy. Getting a
> rootfs and the tests into the rootfs can be hard, depending on the
> platform (a problem for some embedded targets).
>
Plus getting a toolchain which is able to not only build the kernel
but also busybox as well as any other required binaries.

> ktest depends on a rootfs from elsewhere. I'm only mildly familiar
> with aiaiai, but it appears to be the same situation. The gap I see is
> the ability to cross compile the kselftest test cases and the ability
> to create a rootfs including the test cases for any architecture. A
> tool to solve that problem should be usable by both ktest and aiaiai.
>
Exactly.

Wonder if it would be possible to publish prebuilt toolchains on kernel.org
which are suitable to create the root file system.

Guenter
