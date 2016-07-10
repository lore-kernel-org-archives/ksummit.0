Return-Path: <tytso@thunk.org>
Date: Sun, 10 Jul 2016 18:39:41 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160710223941.GK26097@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<20160710162203.GA9681@localhost>
	<20160710170117.GI26097@thunk.org> <578293C5.1090503@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <578293C5.1090503@roeck-us.net>
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

On Sun, Jul 10, 2016 at 11:28:21AM -0700, Guenter Roeck wrote:
> > There are **eleven** stable or longterm trees listed on kernel.org.
> 
> I think this is one of the problems we are having: There are way too many
> stable / longterm trees.

Part of this is because it's too easy for someone to say, "I want to
support [34].XX as a stable kernel".  Maybe it will only be for one
architecture and only used for one platform (e.g. Yacto, or some other
random distribution), but it's not immediately obvious (a) who is
going to be using the stable kernel, and (b) what sort of testing it is
actually getting.

This is fine if stable kernels are advertised as being "best efforts
only; whatever an individual stable kernel maintainer feels like
putting into the project".  Which is fine, but then it's also no
surprise if device kernel maintainers and BSP kernel maintainers
aren't aren't taking the -stable kernel series.  And it also becomes
surprising if other people are expecting that stable trees are
supposed to be more stable than that, and then get indignant when
there are regressions, bug fixes that aren't backported, bug fixes
that work fine on the tip but which break after getting backported,
etc.

To be clear, though: That's the way things are right now, and someone
who wants to change it is going to have to propose a procedure which
ends up taking less work on maintainers and individual patch
submiters, and/or volunteers to do the extra work, or realistically,
it's not going to happen.

> I think we are having kind of a circular problem: Device/BSP kernels
> don't track stable because stable branches are considered to be not stable
> enough, and stable branches are not tested well enough because they are not
> picked up anyway. The only means to break that circle is to improve
> stable testing to the point where people do feel comfortable picking it up.
> 
> The key to solving that problem might be automation. There are lots of tools
> available nowadays which could be used for that purpose (gerrit, buildbot, ...).
> Patch submissions to stable releases could be run through an automated test
> system and only be applied to stable release candidates after all tests passed.
> This is widely done with vendor kernels today, and should be possible for
> stable kernels as well. Such a system could even pick up patches tagged
> with Fixes: or with Cc: stable from mainline automatically.

Testing works fine for core kernel features and for things like file
systems.  But it really doesn't work with real hardware, and Olaf
described a couple of scenarios where fixes to device drivers broke
older hardware supported by the same driver.  If what we are most
worried about is "no regressions", one really extreme approach would
be for a particular stable kernel series, to have a branch which
*only* has patches for which reliable and comprehensive tests exist.
This branch would at least get all of the security fixes and other bug
fixes which are applicable to the core kernel, and but it would filter
out, at least initially, all or most device driver patches.

We could have another branch which includes the device driver fixes,
and perhaps over time we could figure out some scheme by which if the
significant device kernel and BSP kernel users could be convinced to
contribute hardware and some test engineer resources, maybe some of
the device driver fixes could go into the "tested" stable branch as
well.

Or maybe we just leave a clean separation between "core" and "device
driver" stable branches, since in practice the answer seems to be that
once an embedded device kernel maintainer gets things working, they
**really** don't want to touch the device drivers ever again, since if
there are any hardware or software issues, they want users buying an
upgraded device every 12-18 months anyway.  :-)    At least that way
maybe the users will get the core security and stability fixes....

Or maybe we have a different policy for x86-specific device drivers
than we do for the embedded architectures, since in practice we have
more end users testing the x86 stable kernels, where as the embedded
architectures tend to get things like OTA updates, and so it's not
surprising that those maintainers are much more paranoid about driver
changes which might brick their devices.

(Yes, I know that some drivers are shared between x86 and ARM; and I
suspect that's one of the places where we could easily have a problem
where a bugfix that fixes things for an device on an x86 base might
accidentally cause a regression for the same device hanging off of a
different bus in a SOC configuration....  and no amount of test
automation has any *hope* of catching thoes sorts of problems.)

      	  	     	     	  	       - Ted
