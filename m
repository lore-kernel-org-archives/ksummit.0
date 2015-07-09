Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B686E305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 04:23:55 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3986FF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 04:23:55 +0000 (UTC)
Message-ID: <1436415833.23558.4.camel@ellerman.id.au>
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kevin Hilman <khilman@kernel.org>
Date: Thu, 09 Jul 2015 14:23:53 +1000
In-Reply-To: <7hlheqfvqo.fsf@deeprootsystems.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<1436347639.29626.4.camel@ellerman.id.au>
	<559D2B02.9020508@roeck-us.net> <7hlheqfvqo.fsf@deeprootsystems.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Dan Carpenter <dan.carpenter@oracle.com>,
	Tyler Baker <tyler.baker@linaro.org>,
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

On Wed, 2015-07-08 at 09:40 -0700, Kevin Hilman wrote:
>
> Speaking for kernelci.org... with limited time/resources, we'd like to
> focus less on building (others are doing this faster/better) and more on
> boot testing across a wide variety of hardware (e.g for the latest -next
> build, we did ~430 boots on 88 unique boards covering 23 different
> SoCs[1]).  We're also in the process of automating kselftest runs on our
> boards.
> 
> If we could consume the output of other builders, we'd happily do that
> instead of doing our own builds.  Ideally, the builders should produce
> some sort of machine readable data with the build artifacts.. 

Unfortunately providing build artifacts means you're distributing binaries, and
so life just got complicated. At least for folks like me who work at a company
with too many lawyers.

cheers
