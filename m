Return-Path: <tytso@thunk.org>
Date: Mon, 11 Jul 2016 13:03:33 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160711170333.GE3890@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160711151300.GB3701@sirena.org.uk>
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

On Mon, Jul 11, 2016 at 04:13:00PM +0100, Mark Brown wrote:
> On Sat, Jul 09, 2016 at 05:21:30PM -0400, Theodore Ts'o wrote:
> 
> > the latest stable kernel.  (But even if they do, apparently many
> > device vendors aren't bothering to merge in changes from the SOC's BSP
> > kernel, even if the BSP kernel is getting -stable updates.)
> 
> It would be pretty irresponsible for device vendors to be merging BSP
> trees, they're generally development things with ongoing feature updates
> that might interact badly with things the system integrator has done
> rather than something stable enough to just merge constantly.

So the question is who actually uses -stable kernels, and does it make
sense for it even to be managed in a git tree?

Very few people will actually be merging them, and in fact maybe
having a patch queue which is checked into git might actually work
better, since it sounds like most people are just cherry-picking
specific patches.

						- Ted
