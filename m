Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22DE9CD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Sep 2016 10:42:55 +0000 (UTC)
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E0D5E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Sep 2016 10:42:54 +0000 (UTC)
Received: by mail-wm0-f67.google.com with SMTP id w84so2133737wmg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Sep 2016 03:42:54 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <20160808110741.GA18936@red-moon>
References: <20160726223054.GA30993@dtor-ws> <5799DB1B.5010307@arm.com>
	<20160808110741.GA18936@red-moon>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Fri, 23 Sep 2016 11:42:32 +0100
Message-ID: <CACxGe6tV_MmZ6q5yY6WhiJwTBr6vK2cBLbf5v8A0WSEjeUaHUA@mail.gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 8, 2016 at 12:07 PM, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
> On Thu, Jul 28, 2016 at 11:14:51AM +0100, Marc Zyngier wrote:
>> On 26/07/16 23:30, Dmitry Torokhov wrote:
>> > I'd like to nominate myself for the kernel summit this year. I am part
>> > of Chrome OS kernel team and I also maintain drivers/input in mainline.
>>
>> [...]
>>
>> > - I would like to sync up with people and discuss [lack of] progress
>> >   on topic of device probe ordering (including handling of deferred
>> >   probes, asynchronous probes, etc).
>>
>> I'm extremely interested in discussing this.
>>
>> It has wide reaching consequences as (with my irqchip maintainer hat on)
>> we've had to pretend that some bits of HW (timers, interrupt
>> controllers) are not "devices". Not a massive issue for most, except
>> when your interrupt controller has requirements that are very similar to
>> the DMA mapping API (which you cannot use because "not a device"). Other
>> problems are introduced by things like wire-MSI bridges, and most people
>> end-up resorting to hacks like ad-hoc initcalls and sprinkling deferred
>> probes in specific drivers.
>>
>> I've seen a number of proposal so far, but the subject seems to have
>> gone quiet (well, not really, but hardly any progress has been made).
>>
>> Happy to make this a tech discussion or a hallway track.
>
> I am very interested in this discussion too in whatever form it takes
> place and I really think it is the right time to find a way forward
> for DT and ACPI probing alike given that we have started facing
> these probe ordering issues in ARM/ACPI world too, it would be nice to
> find a solution that works seamlessly.

[Responding very late to this thread]

I also want to be involved with this discussion. We've got to come up
with something better than what we've got now.

g.
