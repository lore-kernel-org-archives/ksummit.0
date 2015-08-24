Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7986D98D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:39:54 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F0FA12E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:39:53 +0000 (UTC)
Date: Mon, 24 Aug 2015 19:39:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <CALCETrViOGGjkzgNBLAc-XW7UkjQraa6t=4QQW094tfhB6Jf7Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1508241938400.2022@localhost6.localdomain6>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<CALCETrViOGGjkzgNBLAc-XW7UkjQraa6t=4QQW094tfhB6Jf7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Jiri Kosina <jkosina@suse.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> One thing that grsecurity addresses (partially or fully?  I haven't
> looked that closely): we have tons of static, non-const data structure
> that contain function pointers, and we can't make them const because
> they get filled in when things are initialized.  Grsecurity mitigates
> this with some combination of compiler plugins and pax_open_kernel,
> but we could probably come up with a more straightforward solution.
> We could add an ro_after_init section, or we could even have a section
> for things that are const but are writable through a special function.

Would it be helpful/possible to make a substructure for the constant parts?

julia
