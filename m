Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B9D47BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 05:22:16 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5431C1D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 05:22:15 +0000 (UTC)
Message-ID: <1436592120.3948.168.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Jiri Kosina <jkosina@suse.com>
Date: Sat, 11 Jul 2015 15:22:00 +1000
In-Reply-To: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] giving freezer well-defined
 semantics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2015-07-07 at 22:42 +0200, Jiri Kosina wrote:
> Tejun came up with a different aproach at [1] -- basically getting rid of 
> the freezer completely, and rather annotating those I/O requests which are 
> needed for writing the hibernation image out, so that they make it through 
> all the affected subsystems, while other I/O requests would be frozen.
> 
> This would be rather dramatic change both in a way how kthreads work, how 
> hibernation works, and it'd be necessary to have means to mark I/O 
> requests as "needed for hibernation", therefore I think this would be a 
> good cross-subsystem topic.

I like that approach. In the early days, when we put together what
eventually became our power management, I was against the freezer to
begin with :-) I always had the feeling that it was an incomplete band
aid which was mostly trying to hide the problem rather than solve it.

In part because just stopping threads isn't a guarantee that things
stop, "driver" requests can be issued in theory from anything such as
timers, external interrupts, etc... threads are only part of the
problem. It's also non obvious whether a given thread is needed to write
the suspend image or not. A single thread can have multiple behaviours
associated with it. It can monitor link health and be necessary for
keeping things working but can also deal with hotplug which might not be
desirable.

So all in all, I agree with Tejun.

Cheers,
Ben.
