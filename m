Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B5AC77AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:43:33 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4090E16E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:43:33 +0000 (UTC)
Date: Tue, 2 Aug 2016 10:43:31 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: David Herrmann <dh.herrmann@gmail.com>
In-Reply-To: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1608021033200.22028@cbobk.fhfr.pm>
References: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Bus IPC
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 29 Jul 2016, David Herrmann wrote:

> While bus1 emerged out of the kdbus project, it is a new, independent
> project, designed from scratch. Its main goal is to implement an n-to-n
> communication bus on linux. A lot of inspiration is taken from both
> DBus, as well as the the most commonly used IPC systems of other OSs,
> and related research projects (including Android Binder, OS-X/Hurd Mach
> IPC, Solaris Doors, Microsoft Midori IPC, seL4, Sandstorm's Cap'n'Proto,
> ..).
[ ... ]
>  o Andy Lutomirski
>  o Greg Kroah-Hartman
>  o Steven Rostedt
>  o Eric W. Biederman
>  o Jiri Kosina

So I've given dbus1 a cursory look, and I fully agree that this would be 
an excellent topic; most importantly to make sure that maintainers who 
have been involved in previous kdbus discussions / reviews get an overview 
that this is indeed substantially different (and how exactly), and throw 
away any prejudice they might have gathered in the previous review rounds.

Thanks,

-- 
Jiri Kosina
SUSE Labs
