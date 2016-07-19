Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 524B9323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 15:53:24 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A041D18B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 15:53:23 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Jann Horn <jann@thejh.net>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<20160711173329.GA8240@pc.thejh.net>
Date: Tue, 19 Jul 2016 10:40:26 -0500
In-Reply-To: <20160711173329.GA8240@pc.thejh.net> (Jann Horn's message of
	"Mon, 11 Jul 2016 19:33:29 +0200")
Message-ID: <87y44xr5zp.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Jann Horn <jann@thejh.net> writes:

> On Sun, Jul 10, 2016 at 09:28:53PM -0700, Andy Lutomirski wrote:
>> Are there useful things to discuss in person about hardening? [...]
>
> I think that an interesting question to discuss might be whether, and
> if so, how, it makes sense to add restrictions to namespaces.
>
> Namespaces, as a concept, aren't very scary when you keep in mind that
> they only grant privileges to otherwise unprivileged users when they
> interact with things inside their namespaces. However, in their
> implementation, they are somewhat scary because they expose code to
> unprivileged users that was written as code only root could reach. As
> an example, have a look at NCC Group's netfilter bugs (and netfilter
> in general; iirc, the filter parsing code has exponential complexity
> without process death checks, which afaik shouldn't happen in any
> code normal users can reach).
>
> User namespaces alone are pretty simple. I don't know everything
> about mount namespaces, but I think they also don't expose big masses
> of kernel code, and IPC, PID and UTS namespaces are pretty simple.

Mount namespaces share a lot by default and as such there have been a
lot of hard to resolve semantic difficulties that had to be sorted out.

I am very grateful right now that the issues we are primary issues we
are seeing now are primarily human error.

> I think that network namespaces, compared to other namespace types,
> expose a lot of code. Grepping for CAP_SYS_ADMIN with
> `egrep -R '(ns_capable|netlink_net_capable).*CAP_NET_ADMIN'`
> returns a bunch of things, including netlink stuff, netfilter,
> sysctls, AF_KEY stuff, bridges, routing, socket repair, ARP and
> tunnel devices. At the same time, they are one of the lesser-used
> namespace types: Containers need them, but sandboxes don't really
> need them for much apart from making abstract unix sockets and
> networking in general inaccessible.

Sort of.  A lot of the code is already exposed as the networking stack,
and is exposed from the underside to packets from random strangers from
the internet if not from the control side.

Eric
