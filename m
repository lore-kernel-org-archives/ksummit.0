Return-Path: <phillip@lougher.demon.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 664578CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jun 2014 01:17:04 +0000 (UTC)
Received: from smtp.demon.co.uk (mdfmta010.mxout.tch.inty.net [91.221.169.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 84BBC1F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jun 2014 01:17:03 +0000 (UTC)
Message-ID: <539BA32A.8090104@lougher.demon.co.uk>
Date: Sat, 14 Jun 2014 02:19:38 +0100
From: Phillip Lougher <phillip@lougher.demon.co.uk>
MIME-Version: 1.0
To: Christoph Lameter <cl@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<53994FED.1080106@lougher.demon.co.uk>
	<alpine.DEB.2.10.1406131158490.913@gentwo.org>
In-Reply-To: <alpine.DEB.2.10.1406131158490.913@gentwo.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 13/06/14 18:02, Christoph Lameter wrote:
> On Thu, 12 Jun 2014, Phillip Lougher wrote:
>
>>> 1. The need to use larger order pages, and the resulting problems with
>>> fragmentation. Memory sizes grow and therefore the number of page structs
>>> where state has to be maintained. Maybe there is something different? If
>>> we use hugepages then we have 511 useless page structs. Some apps need
>>> linear memory where we have trouble and are creating numerous memory
>>> allocators (recently the new bootmem allocator and CMA. Plus lots of
>>> specialized allocators in various subsystems).
>>>
>>
>> This was never solved to my knowledge, there is no panacea here.
>> Even in the 90s we had video subsystems wanting to allocate in units
>> of 1Mbyte, and others in units of 4k.  The "solution" was so called
>> split-level allocators, each specialised to deal with a particular
>> "first class media", with them giving back memory to the underlying
>> allocator when memory got tight in another specialised allocator.
>> Not much different to the ad-hoc solutions being adopted in Linux,
>> except the general idea was each specialised allocator had the same
>> API.
>
> It is solvable if the objects are inherent movable. If any object
> allocated provides a function that makes an object movable then
> defragmentation is possible and therefore large contiguous area of memory
> can be created at any time.
>
>
>>> Can we develop the notion that subsystems own certain cores so that their
>>> execution is restricted to a subset of the system avoiding data
>>> replication and keeping subsystem data hot? I.e. have a device driver
>>> and subsystems driving those devices just run on the NUMA node to which
>>> the PCI-E root complex is attached. Restricting to NUMA node reduces data
>>> locality complexity and increases performance due to cache hot data.
>>
>> Lots of academic hot-air was expended here when designing distributed
>> systems which could scale seamlessly across heterogeneous CPUs connected
>> via different levels of interconnects (bus, ATM, ethernet etc.), zoning,
>> migration, replication etc.  The "solution" is probably out there somewhere
>> forgotten about.
>
> We have the issue with homogenous cpus due to the proliferation of cores
> on processors now. Maybe that is solvable?
>
>> Case in point, many years ago I was the lead Linux guy for a company
>> designing a SOC for digital TV.  Just before I left I had an interesting
>> "conversation" with the chief hardware guy of the team who designed the SOC.
>> Turns out they'd budgeted for the RAM bandwidth needed to decode a typical
>> MPEG stream, but they'd not reckoned on all the memcopies Linux needs to do
>> between its "separate address space" processes.  He'd been used to embedded
>> oses which run in a single address space.
>
> Well maybe that is appropriate for some processes? And we could carve out
> subsections of the hardware where single adress space stuff is possible?
>

Apologies, maybe what I was trying to say wasn't clear :)  I wasn't arguing
against it, but rather should we be trying to do this at the Linux kernel
level.

Embedded systems have long had the need to carve out (mainly heterogenous)
processors from Linux.  Media systems have VLIW media processors (i.e.
Philips Trimedia), and mobile phones typically have separate baseband
processors.  This is done without any core support necessary from the kernel.
Just write a device driver that presents a programming & I/O channel
to the carved out hardware.

Additionally, where Linux kernel has been too heavy weight with its
slow real-time response, and/or expensive paged multi-address spaces, the
solution is often to use a nano-kernel like ADEOS or RTLinux,
running Linux as a separate OS, leaving scope to run lighter weight
real-time single address operating systems in parallel.

In otherwords if we need more efficiency, do it outside of Linux, rather
than try to rewrite the strong protection model in Linux.  That way
leads to pain.

My point about the hardware engineer is people can't have their cake
and eat it.  Unix/Linux has been successful partly because of its
strong protection/paged model.  It is difficult to be both secure
and efficient.  If you want to both then you need to design
it into the operating system from the outset.  Linux isn't a good
place to start.

Phillip

>
