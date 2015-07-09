Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D87D5ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 09:56:41 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AB76AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 09:56:41 +0000 (UTC)
Date: Thu, 9 Jul 2015 11:56:19 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Kamezawa Hiroyuki <kamezawa.hiroyu@jp.fujitsu.com>
In-Reply-To: <559DE9E5.20204@jp.fujitsu.com>
Message-ID: <alpine.LNX.2.00.1507091155450.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
	<559D4C35.6070709@hitachi.com> <559DE9E5.20204@jp.fujitsu.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] live patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 9 Jul 2015, Kamezawa Hiroyuki wrote:

> I'm sorr if this is off-topic.
> 
> I think the problem of "freezer v.s. FUSE" will happen if we neet to 
> stop user proceesses. AFAIK, the problem is a deadlock that fuse daemon 
> freezes even while its client wating for a reply.
> 
> example)
>    client -> page-fault -> GUP -> fuse daemon -> gethostbyname() -> nscd.8
> 
> We can't detect this kind of dependency if we need to freeze userland.

Freezing of userspace is happening every time system goes through 
hibernation.

-- 
Jiri Kosina
SUSE Labs
