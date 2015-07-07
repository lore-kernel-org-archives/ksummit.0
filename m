Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7BCF6BC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 21:13:17 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFE2112D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 21:13:16 +0000 (UTC)
Date: Tue, 7 Jul 2015 23:13:01 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <4541757.2i2CVNfqPd@vostro.rjw.lan>
Message-ID: <alpine.LNX.2.00.1507072307110.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
	<4541757.2i2CVNfqPd@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Tue, 7 Jul 2015, Rafael J. Wysocki wrote:

> > Currently, the freezer has rather random semantics and there is no 
> > rigorous definition that would provide clear guidance which kernel threads 
> > should be freezable (and what rules they have to follow if they are).
> 
> That's with respect to kernel threads, right?

Yeah, sorry for not being verbose enough. I have been buried in kthread 
interactions with the rest of the kernel for too long, so my world view is 
now a bit distorted.

Yes, this is purely related to try_to_freeze() in !PF_NOFREEZE kernel 
threads.

> The primary purpose of the freezer is to get user space out of the way
> and at least in principle there should be no fundamental need to freeze
> any kernel threads.

Except those which are needed for hibernation image I/O. Which is 
difficult to pre-categorize in a rigorous way.

You need some parts of VM for that. You need the underlying block 
device. You name it.

-- 
Jiri Kosina
SUSE Labs
