Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 604D5158C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 20:12:34 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82EF987B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 20:12:33 +0000 (UTC)
Date: Fri, 5 Jul 2019 16:12:31 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190705201231.GI10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20190705164142.GC20625@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 05, 2019 at 05:41:42PM +0100, Mark Brown wrote:
>On Tue, Jul 02, 2019 at 09:35:57PM -0400, Sasha Levin wrote:
>
>> - Concerns about how well -stable kernels are tested.
>> - "Fixes for fixes" end up being missed.
>> - Saner AUTOSEL process.
>
>I'm a bit worried about these, especially pushed together - one
>of the things the AUTOSEL stuff does quite often is pull in
>driver changes and our coverage of drivers is especially weak.

Our driver coverage is indeed weak, but I don't think that the solution
is to leave drivers/ alone. On the contrary, I think that making
drivers/ move quickly together with the rest of the kernel will
encourage vendors to up their testing game.

This came up in the last MS, and the agreement there was that we expect
stable kernel users to test their workloads before throwing it into
production.

If we were to start avoiding driver updates, it would act as an
incentive for people not to upgrade their kernel.

Right now I'm working with a certain hardware vendor who does a crappy
job at tagging fixes for stable, and it's horribly painful. I end up
spending time triaging a bug, reporting it to the vendor, only to be
told "oh grab this fix from upstream".

This user experience is just bad, and I can't imagine how difficult it
is for users who are less familiar with the kerenl.

--
Thanks,
Sasha
