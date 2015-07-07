Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08152BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:46:08 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 1482B155
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:46:06 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jiri Kosina <jkosina@suse.com>
Date: Wed, 08 Jul 2015 01:12:33 +0200
Message-ID: <9412727.0bKgPF9YKr@vostro.rjw.lan>
In-Reply-To: <alpine.LNX.2.00.1507072307110.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
	<4541757.2i2CVNfqPd@vostro.rjw.lan>
	<alpine.LNX.2.00.1507072307110.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Tuesday, July 07, 2015 11:13:01 PM Jiri Kosina wrote:
> On Tue, 7 Jul 2015, Rafael J. Wysocki wrote:
> 
> > > Currently, the freezer has rather random semantics and there is no 
> > > rigorous definition that would provide clear guidance which kernel threads 
> > > should be freezable (and what rules they have to follow if they are).
> > 
> > That's with respect to kernel threads, right?
> 
> Yeah, sorry for not being verbose enough. I have been buried in kthread 
> interactions with the rest of the kernel for too long, so my world view is 
> now a bit distorted.
> 
> Yes, this is purely related to try_to_freeze() in !PF_NOFREEZE kernel 
> threads.
> 
> > The primary purpose of the freezer is to get user space out of the way
> > and at least in principle there should be no fundamental need to freeze
> > any kernel threads.
> 
> Except those which are needed for hibernation image I/O.

I don't quite see why there's a need to freeze those particular ones.

OK, it is necessary to ensure that the contents of the image will be consistent
with the state of filesystems on the storage media, so everything that may
change that state should be "frozen" before the image is created, but "frozen"
in terms of "no persistent state changes from now on" rather than in terms of
"no forward progress from now on".

Thanks,
Rafael
