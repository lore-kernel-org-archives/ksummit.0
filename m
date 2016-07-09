Return-Path: <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>, Jiri Kosina <jikos@kernel.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <5781148F.1010102@roeck-us.net>
Date: Sat, 9 Jul 2016 08:13:19 -0700
MIME-Version: 1.0
In-Reply-To: <20160709093626.GA6247@sirena.org.uk>
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

On 07/09/2016 02:36 AM, Mark Brown wrote:
> On Sat, Jul 09, 2016 at 10:43:05AM +0200, Jiri Kosina wrote:
>
>> If maintainers are overwhelmed by extra work needed for stable,
>> "offloading to Greg" doesn't sound like a proper solution to me at all.
>> "Fixing a maintainer workflow for that particular subsystem" (such as
>> extending the group of maintainers) does.
>
> I think one of the big things we're missing here is QA.  I don't
> personally have the hardware that would allow me to test a huge chunk of
> the code in my subsystems, I'm relying on things like kernelci.org for
> the bulk of it.  There's some work going on on getting Greg's stable
> queue tested more which will hopefully make things better but it's not
> 100% there yet.
>
Improving QA is very much part of it. Yes, there is kernelci.org, there is
kerneltest.org, there are the 0day builders, and there are various individuals
testing the trees. This all helped a lot in stabilizing both mainline and
the stable trees, but is not enough. We are pretty well covered with build
tests, but runtime tests are for the most part limited to "it boots, therefore
it works". We still have a long way to go to get real QA testing. As I
suggested earlier, we'll have to find a way to convince companies to actively
invest in QA.

> There's also the volume of stable trees to consider here - we've got a
> large number of stable trees which seem to be maintained in different
> ways with different tooling.  One big advantage from my point of view
> as a maintainer with the current model is that I don't have to figure
> out which I care about or anything like that.
>
The proliferation of stable trees (or rather, how to avoid it) might be
one of the parts of the puzzle. Yes, there are way too many right now.

Guenter
