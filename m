Return-Path: <marc.zyngier@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E01A9932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:14:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7D5C6A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:14:54 +0000 (UTC)
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20160726223054.GA30993@dtor-ws>
From: Marc Zyngier <marc.zyngier@arm.com>
Message-ID: <5799DB1B.5010307@arm.com>
Date: Thu, 28 Jul 2016 11:14:51 +0100
MIME-Version: 1.0
In-Reply-To: <20160726223054.GA30993@dtor-ws>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 26/07/16 23:30, Dmitry Torokhov wrote:
> I'd like to nominate myself for the kernel summit this year. I am part
> of Chrome OS kernel team and I also maintain drivers/input in mainline.

[...]

> - I would like to sync up with people and discuss [lack of] progress
>   on topic of device probe ordering (including handling of deferred
>   probes, asynchronous probes, etc).

I'm extremely interested in discussing this.

It has wide reaching consequences as (with my irqchip maintainer hat on)
we've had to pretend that some bits of HW (timers, interrupt
controllers) are not "devices". Not a massive issue for most, except
when your interrupt controller has requirements that are very similar to
the DMA mapping API (which you cannot use because "not a device"). Other
problems are introduced by things like wire-MSI bridges, and most people
end-up resorting to hacks like ad-hoc initcalls and sprinkling deferred
probes in specific drivers.

I've seen a number of proposal so far, but the subject seems to have
gone quiet (well, not really, but hardly any progress has been made).

Happy to make this a tech discussion or a hallway track.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...
