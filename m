Return-Path: <tytso@thunk.org>
Date: Sun, 10 Jul 2016 13:01:17 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Vinod Koul <vinod.koul@intel.com>
Message-ID: <20160710170117.GI26097@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<20160710162203.GA9681@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160710162203.GA9681@localhost>
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

On Sun, Jul 10, 2016 at 09:52:04PM +0530, Vinod Koul wrote:
> 
> For patch merge, the expectation is that it is tested against upstream.
> For stable, should we also mandate that it be verified against the stable
> tree(s) as well, or if Maintainer feels it is stable material then we
> can ask Submitters to test before CCing stable...

This is simply not realistic.

There are **eleven** stable or longterm trees listed on kernel.org.
If you are going to ask patch submitters to test on all of the stable
trees, that pretty much guarantees that nothing at all will be cc'ed
to stable.

And this doesn't into account patches that don't apply cleanly on
stable, so someone has to bash the patches until they apply.  The real
problem here is that there is a significant tax which needs to be
imposed by each stable tree.  You can either force maintainers to pay
the tax, or pay the patch submitters to pay the tax, or put that
burden on the stable tree maintainers.  It's not clear any of this is
viable.

And if device kernels or BSP kernels aren't bothering to track
-stable, it becomes even more unfair to force that work on the
maintainers or patch submitters.  If they are just going to be cherry
picking random patches out of the -stable kernel when they notice a
problem, does it make sense to do invest in doing full QA's for every
single commit before it goes into -stable?

						- Ted
