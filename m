Return-Path: <linux@roeck-us.net>
Date: Mon, 11 Jul 2016 10:34:45 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Vinod Koul <vinod.koul@intel.com>
Message-ID: <20160711173445.GB27538@roeck-us.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<20160710162203.GA9681@localhost>
	<20160710170117.GI26097@thunk.org>
	<20160711050000.GC9681@localhost>
	<20160711051335.GQ26097@thunk.org>
	<20160711141833.GK9681@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160711141833.GK9681@localhost>
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

On Mon, Jul 11, 2016 at 07:48:34PM +0530, Vinod Koul wrote:
> 
> I do whole heartedly agree to your arguments and yes that is a big
> issue. *BUT* what is the solution then, Maintainers do not even have
> hardware to test.
> 

One solution would be to have test beds available for use by everyone
to run tests on real hardware. kernelci.org tries to do that. My concern
with that approach is that hardware breaks down and needs constant
maintenance.

My personal favorite is to use qemu. That is not a perfect replacement for
real hardware (and it will never be possible to use it for, say, graphics
tests), but it could be used much more than today. Of course, its downsides
are that it doesn't really reflect the behavior of real hardware, and that
it also needs maintenance. On the plus side, it scales much better than real
hardware (all you need is more servers), and it is (relatively) easy to add
support for new hardware to it.

Guenter
