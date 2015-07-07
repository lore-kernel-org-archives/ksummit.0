Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66F79BA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 21:05:55 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 66AC1121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 21:05:54 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 07 Jul 2015 23:32:20 +0200
Message-ID: <4541757.2i2CVNfqPd@vostro.rjw.lan>
In-Reply-To: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Tuesday, July 07, 2015 10:42:36 PM Jiri Kosina wrote:
> Currently, the freezer has rather random semantics and there is no 
> rigorous definition that would provide clear guidance which kernel threads 
> should be freezable (and what rules they have to follow if they are).

That's with respect to kernel threads, right?

The primary purpose of the freezer is to get user space out of the way
and at least in principle there should be no fundamental need to freeze
any kernel threads.

> The long and complicated history of freezer resulted in the current state, 
> where many kernel threads are marked freezable "just because", with 
> freezing points randomly sprinkled all over the place, and it really 
> complicates any efforts in cleaning up kthreads (which is why I am 
> interested in it -- we'd love to have kthreads cleaned up to make live 
> patching easier).
> 
> There are various possible aproaches to this. One is basically ad-hoc, 
> going over all the existing kthreads one by one, and fixing (probably just 
> removing, in most cases) its usage of freezer. The obivous disadvantage is 
> that this doesn't prevent anyone to abusing it again the same way in the 
> future.
> 
> Tejun came up with a different aproach at [1] -- basically getting rid of 
> the freezer completely, and rather annotating those I/O requests which are 
> needed for writing the hibernation image out, so that they make it through 
> all the affected subsystems, while other I/O requests would be frozen.
> 
> This would be rather dramatic change both in a way how kthreads work, how 
> hibernation works, and it'd be necessary to have means to mark I/O 
> requests as "needed for hibernation", therefore I think this would be a 
> good cross-subsystem topic.
> 
> [1] http://lkml.kernel.org/r/20150613232222.GB346@mtj.duckdns.org

I'm not reading this as a proposal to drop the freezer completely, but
rather to stop using it for kernel threads (I may not understand the
full context correctly, though).

There are two basic resons to freeze user space before suspend in my view.
First, we don't want it to interfere with device driver's suspend/resume
callbacks in any way.  Second, we want to prevent silly stuff (like
active polling in a loop etc.) from running.

Both are valid as far as I can say.

Kernel threads are a totally different matter, however.

Thanks,
Rafael
