Return-Path: <stephen@networkplumber.org>
Date: Wed, 20 Jul 2016 10:50:03 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160720105003.5c50aa96@xeon-e3>
In-Reply-To: <20160711170333.GE3890@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk>
	<20160711170333.GE3890@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Mon, 11 Jul 2016 13:03:33 -0400
Theodore Ts'o <tytso@mit.edu> wrote:

> On Mon, Jul 11, 2016 at 04:13:00PM +0100, Mark Brown wrote:
> > On Sat, Jul 09, 2016 at 05:21:30PM -0400, Theodore Ts'o wrote:
> >   
> > > the latest stable kernel.  (But even if they do, apparently many
> > > device vendors aren't bothering to merge in changes from the SOC's BSP
> > > kernel, even if the BSP kernel is getting -stable updates.)  
> > 
> > It would be pretty irresponsible for device vendors to be merging BSP
> > trees, they're generally development things with ongoing feature updates
> > that might interact badly with things the system integrator has done
> > rather than something stable enough to just merge constantly.  
> 
> So the question is who actually uses -stable kernels, and does it make
> sense for it even to be managed in a git tree?
> 
> Very few people will actually be merging them, and in fact maybe
> having a patch queue which is checked into git might actually work
> better, since it sounds like most people are just cherry-picking
> specific patches.
> 

Actually, at Brocade they regularly merge stable kernels into the code base
without any serious issues. Mostly because Linux is a platform, and there is
very little vendor specific changes. The kernel major version is selected early
in the release process, then stable kernels are merged during development. Has
never been a big issue. Like most distro's it is a continual battle to keep
the number of patches down, but never as big a problem as RHEL, or SLES.

I think a lot of people actually use and depend on stable kernels, you
just never hear from the happy users. Only the 1% who get hit complain.
Not that it wouldn't be good to make that .001% instead.
