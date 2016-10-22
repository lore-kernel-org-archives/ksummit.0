Return-Path: <tytso@thunk.org>
Date: Fri, 21 Oct 2016 21:19:25 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: "Bird, Timothy" <Tim.Bird@am.sony.com>
Message-ID: <20161022011925.6n3nhq23vbrly364@thunk.org>
References: <ECADFF3FD767C149AD96A924E7EA6EAF0ABA11DA@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF0ABA11DA@USCULXMSG01.am.sony.com>
Cc: "fuego@lists.linuxfoundation.org" <fuego@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Some ideas on open source testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 21, 2016 at 05:15:11PM +0000, Bird, Timothy wrote:
> 
> I have some ideas on Open Source testing that I'd like to throw out there
> for discussion.  Some of these I have been stewing on for a while, while
> some came to mind after talking to people at recent conference events.

First of all, I'd love to chat with you about this in Santa Fe.  And
thanks for writing up all of your thoughts.

Some quick initial reactions.  Testing is complicated, and I don't
think having a single testing framework is realistic.  The problem is
that each test framework will be optimized for various specific use
cases, and will very likely not be very useful for other use cases.

Just to take one dimension --- certain kinds of tests will get a large
amount of value by running on a wide variety of hardware.  Other tests
are much less sensitive to hardware (at least at the CPU level), but
might be more sensitive to the characteristics of the storage device
(for example).

Another example is trying to accomodate multiple workflows.  Workflows
that are optimized for being run a large number of tests across large
number of machines, in a highly scalable fashion, often end up having
large setup overheads (in terms of time between kicking off a test run
and when you get an answer).  This might be because you are scheduling
the time run on a test machine; it could be because setting up a
reproducible runtime environment takes time, etc

And so you might have alarge number of workflows:

* Developers who want a fast smoke test after applying a patch or
  patch set.
* Developers who want to dig into a specific test failure, and who
  want to be able to very quickly iterate over running a specific test
  against a quick succession of test kernels.
* Maintainers who want to run a much more comprehensive test suite
  that might take hours to run.  * Release engineers who want some
  kind of continuous integration test.

A test runner framework which is good for one is very likely not going
to be good for another.

> 2) how do you connect people who are interested in a particular
> test with a node that can perform that test?
> 
> My proposal here is simple - for every subsystem of the kernel,
> put a list of test nodes in the MAINTAINERS file, to
> indicate nodes that are available to test that subsystem.  

Later on you talk about wanting tens of thousands of test nodes.  Is
putting a list in the MAINTAINERS file really going to be scalable to
that aspiration?

> Basically, in the future, it would be nice if when a person reported
> a bug, instead of the maintainer manually walking someone through
> the steps to identify the bug and track down the problem, they could
> point the user at an existing test that the user could easily run.

This seems to assume that test runs are highly hardware specific.  If
they aren't, it's highly likely that the developer will have found the
problem before the final release of the kernel.  This tends to be the
case for file system bugs, for example.  It's rare that when a user
reports a bug, that they would find a way of reproducing the problem
by their running xfstests locally.  The much more likely scenario is
that there is some gap in test coverage, or the failure is *extremely*
flaky, such that it might take 100-200 runs using the current set of
tests in xfstests to find the problem.  In some cases the failure is
more likely on a hardware with a certain speed of storage device, but
in that case, my strong preference at least for file system testing,
would be to see if we could emulate a larger range of devices by
adding delays to try to simulate what a slower device might look like,
and perhaps try using a faster storage device (up to and including a
large ramdisk) by using a VM.

That's the approach which I've used for gce-xfstests.  If you didn't
see my talk at LCNA, I'll be giving an updated version at Plumbers, or
you can take a look at the slide deck here:

	http://thunk.org/gce-xfstests

Personally, I find using a VM's to be a huge win for my personal
development workflow.  I like the fast that I can build a test kernel,
and then run "gce-xfstests smoke", and 15 minutes layer, the results
will get e-mailed to me.  I can even do speculative bisections by
kicking off multiple test runs of different kernels in parallel ---
since there since I can create a large number of cloud VM's, and they
are amazingly cheap: a smoke test costs 2 or 3 pennies at full retail
prices.  And I can if necessary simulate different storage devices by
using a HDD-backed Persistent disk, or a SSD-backed disk, or even use
a local PCIe-attached fast local flash device with the VM.  I can also
dial up an arbitrary number of CPU's and memory sizes, if I want to
try to test differently sized machines.

Of course, the diversity gap that I have is that I can only test x86
servers.  But as I've said, file systems tend to be mostly insensitive
to the CPU architecture, and while I can't catch (for example)
compiler code generation bugs that might be ARM-specific, the sheer
*convenience* of using Cloud VM's based testing means that it's highly
unlikely that you could tempt me to use a tens of thousands of
available "test nodes", just because it's highly likely that it won't
be as convenient.

One of the aspects of convenience is that because the VM's are under
my control, which means I can easily login to a VM for debugging
purposes.  If the test is running on some remote node, it's much less
likely that someone would let me login as root, because the potential
for abuse and the security issues involved with that are extremely
high.  And if you *did* let arbitrary kernel developers login as root
to the raw hardware, you'd probablly want to wipe the OS and reinstall
from scratch on a very frequent basis (probably after each kernel
developer is done with the test) and on real hardware, that takes
time.  (Another nice advantage of VM's, each time a new VM starts up,
it automatically gets a fresh root file system image each time, which
is great both from a security and test reproducibility perspective.)

Another version of the convenience is that if I want to do quickly
iterate over many test kernels, or if I want to do some poking and
proding using GDB, I can run the same test using kvm.  (GCE has a 30
second startup latency, where as the KVM startup latency is about 4-5
seconds.  And while in theory I could probably figure out how to plumb
remote gdb over SSH tunnels, it's way easier and faster to do so using
KVM.)

It's also helpful that all of the file system developers have
*already* standardized on xfstests for file system test development,
and using some other test framework will likely just add overhead
without providing enough benefit to interest most file system
developers.


One final thought --- if you are going to have tens of thousands of
nodes, something that's going to be critically important is how to
organize the test results.  Internally inside Google we have a test
system which is continuously running tests, and if a test fails, and
it is marked flaky, the test will be automatically rerun, and the fact
that a test was flaky and did flake is very clearly visible in a
web-based dashboard.  With that dashboard we can easily look at the
history of a specific test (e..g, generic/323 running on flash,
generic/323 running on a HDD, etc.) and whether the test was using a
dbg kernel, or normal kernel, whether it is running on an older server
with only a handful of CPU cores, or some brand new server with dozens
and dozens of CPU cores, etc.  If you have a huge number of test runs,
being able to query that data and then display it in some easily
viewable, graphical form, but where you can also drill down to a
specific test failure and get archived copies of the test artifacts is
critically important.  Unfortunately that system uses way too many
internal systems that for it to be made available outside of google,
but I can tell you having that kind of dashboard system is critically
important.

I'm hoping to have an intern try to create something like that for
gce-xfstests that would run on Google App Engine, over the next couple
of months.  So maybe by next year I'll have something that we'll be
able to show off.  We'll see....

Anyway, please take a look at my gce-xfstests slide deck, and feel
free to ask me any questions you might have.  I have experimented with
other ways of packaging up xfstests, including as a chroot using
Debian's armhf architecture, which can be dropped on an Android device
so we can run xfstests, either using an external disk attached via the
USB-C port, or using the internal eMMC and the In-line Crypto Engine
that the Pixel and Pixel XL use.

I've also experimented with packaging up xfstests using Docker, and
while there are use cases where I've had to use these alternate
systems, it's still **far** more convenient to test using a VM ----
enough so that my approach when I was working on ext4 encryption for
Android is to take a device kernel, curse at Qualcomm or Nvidia while
I made that vendor kernel compile and boot under x86 again, and then
run the xfstests on x86 running on KVM or on GCE.  For the sake of
end-to-end testing (for example, so we can test ext4 using the
Qualcomm's ICE hardware), of course we have to run on real hardware on
a real device.  But it's really, much, much less convenient and far
nastier to have to do so.  Fortunately we can catch the bulk of the
tests and do most of the debugging and development using an x86-based
VM.

Maybe someday an ARM64 system will have the necessary hardware
virtualization systems such that we can quickly test an ARM
handset/embedded kernel using kvm on an ARM64 server / workstation.
Maybe that would be a 90% solution for many file system and even
device driver authors, assuming the necesary SOC IP blocks could be
emulated by qemu.

Cheers,

						- Ted


P.S.  I've done a lot of work to make it possible for other developers
to use gce-xfstests.  Including creating lots of documentation:

	https://github.com/tytso/xfstests-bld/blob/master/README.md

And having public prebuilt images so that the end-user doesn't even
need build their own test appliance.  They can just do a git clone of
xfstests-bld, do a "make install" into their home directory, get a GCE
account which comes with $300 of free credits, and the use the
prebuilt image.  So it's quite turn key:

	 https://github.com/tytso/xfstests-bld/blob/master/Documentation/gce-xfstests.md

The reason why I did this was specifically so that downstream
developers could run the tests themselves, so I don't have to catch
problems at integration time.
