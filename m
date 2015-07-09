Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5368FAAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:08:32 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F34251B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:08:31 +0000 (UTC)
Date: Thu, 9 Jul 2015 11:08:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20150709180828.GA788@roeck-us.net>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<1436347639.29626.4.camel@ellerman.id.au>
	<559D2B02.9020508@roeck-us.net>
	<7hlheqfvqo.fsf@deeprootsystems.com>
	<1436415833.23558.4.camel@ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436415833.23558.4.camel@ellerman.id.au>
Cc: Shuah Khan <shuah.kh@samsung.com>, Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 02:23:53PM +1000, Michael Ellerman wrote:
> On Wed, 2015-07-08 at 09:40 -0700, Kevin Hilman wrote:
> >
> > Speaking for kernelci.org... with limited time/resources, we'd like to
> > focus less on building (others are doing this faster/better) and more on
> > boot testing across a wide variety of hardware (e.g for the latest -next
> > build, we did ~430 boots on 88 unique boards covering 23 different
> > SoCs[1]).  We're also in the process of automating kselftest runs on our
> > boards.
> > 
> > If we could consume the output of other builders, we'd happily do that
> > instead of doing our own builds.  Ideally, the builders should produce
> > some sort of machine readable data with the build artifacts.. 
> 
> Unfortunately providing build artifacts means you're distributing binaries, and
> so life just got complicated. At least for folks like me who work at a company
> with too many lawyers.
> 
Never thought about that aspect, but you are right, there would be some hoops
to go through if the test infrastructure runs in a corporate environment.
Should not be too difficult, though, at least if the lawyers are reasonable.
And if not, maybe they just need a different set of guildelines.

Guenter
