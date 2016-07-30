Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A84E83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 22:21:08 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D99CCFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 22:21:07 +0000 (UTC)
Date: Sat, 30 Jul 2016 15:21:00 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Herrmann <dh.herrmann@gmail.com>
Message-ID: <20160730222100.6me2tt54w3e234wu@x>
References: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
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

On Fri, Jul 29, 2016 at 12:24:03AM +0200, David Herrmann wrote:
> Tom Gundersen and I would like to propose a technical session on
> in-kernel IPC systems. For roughly half a year now we have been
> developing (with others) a capability-based [1] IPC system for linux,
> called bus1 [2]. We would like to present bus1, start a discussion on
> open problems, and talk about the possible path forward for an upstream
> inclusion.
> 
> While bus1 emerged out of the kdbus project, it is a new, independent
> project, designed from scratch.

I'd heard that the plan for bus1 was to provide DBus-compatible
semantics via a userspace compatibility layer.  Do you still plan to do
that, so that current users of DBus can run on bus1 without
modification, or will current users of DBus need to port to bus1?

- Josh Triplett
