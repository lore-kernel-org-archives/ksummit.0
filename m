Return-Path: <linux@roeck-us.net>
To: Theodore Ts'o <tytso@mit.edu>, Vinod Koul <vinod.koul@intel.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk> <20160710162203.GA9681@localhost>
	<20160710170117.GI26097@thunk.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <578293C5.1090503@roeck-us.net>
Date: Sun, 10 Jul 2016 11:28:21 -0700
MIME-Version: 1.0
In-Reply-To: <20160710170117.GI26097@thunk.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
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

On 07/10/2016 10:01 AM, Theodore Ts'o wrote:
> On Sun, Jul 10, 2016 at 09:52:04PM +0530, Vinod Koul wrote:
>>
>> For patch merge, the expectation is that it is tested against upstream.
>> For stable, should we also mandate that it be verified against the stable
>> tree(s) as well, or if Maintainer feels it is stable material then we
>> can ask Submitters to test before CCing stable...
>
> This is simply not realistic.
>
Agreed. Testing has to happen on the back-end side.

> There are **eleven** stable or longterm trees listed on kernel.org.

I think this is one of the problems we are having: There are way too many
stable / longterm trees.

> If you are going to ask patch submitters to test on all of the stable
> trees, that pretty much guarantees that nothing at all will be cc'ed
> to stable.
>
> And this doesn't into account patches that don't apply cleanly on
> stable, so someone has to bash the patches until they apply.  The real
> problem here is that there is a significant tax which needs to be
> imposed by each stable tree.  You can either force maintainers to pay
> the tax, or pay the patch submitters to pay the tax, or put that
> burden on the stable tree maintainers.  It's not clear any of this is
> viable.
>
> And if device kernels or BSP kernels aren't bothering to track
> -stable, it becomes even more unfair to force that work on the
> maintainers or patch submitters.  If they are just going to be cherry
> picking random patches out of the -stable kernel when they notice a
> problem, does it make sense to do invest in doing full QA's for every
> single commit before it goes into -stable?
>

I think we are having kind of a circular problem: Device/BSP kernels
don't track stable because stable branches are considered to be not stable
enough, and stable branches are not tested well enough because they are not
picked up anyway. The only means to break that circle is to improve
stable testing to the point where people do feel comfortable picking it up.

The key to solving that problem might be automation. There are lots of tools
available nowadays which could be used for that purpose (gerrit, buildbot, ...).
Patch submissions to stable releases could be run through an automated test
system and only be applied to stable release candidates after all tests passed.
This is widely done with vendor kernels today, and should be possible for
stable kernels as well. Such a system could even pick up patches tagged
with Fixes: or with Cc: stable from mainline automatically.

That system could start with a single kernel release, with more releases added
as its capacity and capabilities are improved. Test coverage could be increased
over time, starting with build tests and adding qemu boot tests and runtime
tests as they are made available. The only limitations of such a system would
be money to build and run it, and time for people to set up, maintain,
and enhance it.

Sure, that would not be perfect, but it would be a vast improvement over
what is available today, and its automation would ensure that maintainers
only have to get involved when there is a problem.

Guenter
