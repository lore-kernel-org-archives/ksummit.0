Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8A97982A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:38:40 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20D3A1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:38:40 +0000 (UTC)
Date: Fri, 2 May 2014 21:38:36 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20140502193314.GA24108@thunk.org>
Message-ID: <alpine.LNX.2.00.1405022136130.29834@pobox.suse.cz>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2 May 2014, Theodore Ts'o wrote:

> Furthermore, given that low level progams programs like systemd have 
> grown to require control groups, it's not like you can even 
> realistically strip it from potentially even many embedded kernels, 
> since there seems to be a movement to have systemd infect even smaller 
> embedded applications.
> 
> Anyone want to lay odds on when systemd will start using various
> namespaces for its own purposes?  :-)

This is actually interesting topic on its own (but I am not completely 
what kernel maintainers could be realistically doing about it) -- 
userspace _strictly_ depending on _optional_ kernel features.

systemd and cgroups is a good example, but not the only one, I think. A 
few weeks ago I was struggling to boot a systemd-based userspace, to find 
out that fanotify needs to be turned on.

-- 
Jiri Kosina
SUSE Labs
