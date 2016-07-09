Return-Path: <tytso@thunk.org>
Date: Sat, 9 Jul 2016 17:21:30 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160709212130.GC26097@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5781148F.1010102@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 09, 2016 at 08:13:19AM -0700, Guenter Roeck wrote:
> The proliferation of stable trees (or rather, how to avoid it) might be
> one of the parts of the puzzle. Yes, there are way too many right now.

Something that would really help is if there was some way to know who
is actually *using* each of the various stable trees.  It would
certainly help prioritize my work.  I started paying more attention to
3.10 and 3.18 kernels because I was directly involved with a projects
which had product kernels based on 3.10 and 3.18.  I do perform "fire
and forget" gce-xfstests runs on 3.10, 3.14, 3.18, 4.1, and 4.4
because it doesn't take much effort.

But actually going through and figuring out why we have a lot of test
failures on a particular test kernel (generally because there were
patches that were too dangerous or too complicated to backport via the
cc:stable route), and then trying to get the fixes to a specific
stable kernel takes a lot more time, and that I don't have.  So as a
results, 3.10.102 looks like this:

BEGIN TEST 4k: Ext4 4k block Wed Jul  6 12:33:11 EDT 2016
Failures: ext4/308 generic/067 generic/092 generic/135 generic/323 generic/324

... and 3.18.36 looks like this:

BEGIN TEST 4k: Ext4 4k block Tue Jul  5 16:17:29 EDT 2016
Failures: ext4/001 generic/313

... and 3.14.73 looks like *this*:

BEGIN TEST 4k: Ext4 4k block Tue Jul  5 15:52:48 EDT 2016
Failures: ext4/308 generic/034 generic/039 generic/040 generic/041 generic/056 generic/057 generic/059
generic/065 generic/066 generic/073 generic/090 generic/101 generic/104 generic/106 generic/107
generic/135 generic/177 generic/313 generic/321 generic/322 generic/324 generic/325 generic/335
generic/336 generic/341 generic/342 generic/343 generic/348


The other thing that I'll note which is very discouraging as an
upstream maintainer trying to get backports and fixes into stable
kernel is that I don't have any proof that it actually helps.  I've
lost count of the number of times when someone has asked me about a
bug or a test failure with a particular device kernel based on 3.10 or
3.18, and it will turn out that device kernels generally don't take
updates the stable kernels, and it's not obvious to me whether or not
SOC vendors update their BSP kernels to take into account fixes from
the latest stable kernel.  (But even if they do, apparently many
device vendors aren't bothering to merge in changes from the SOC's BSP
kernel, even if the BSP kernel is getting -stable updates.)

So if I'm going to invest more time into getting fixes into the many,
MANY stable kernels, and/or try to invest time in recruiting
volunteers and training them to do this task, can someone please tell
me how much difference it actually makes?

Thanks,

						- Ted

P.S.  For the recorder, the newer stable kernels are in much better
shape.  For example, 4.4.14 looks like this:

BEGIN TEST 4k: Ext4 4k block Tue Jul  5 23:02:09 EDT 2016
Passed all 223 tests

Of course, as far as I know there are **no** devices based on 4.4
yet....  for devices shipping for this Christmas season, I suspect
we'll be *lucky* if they are using 3.18....
