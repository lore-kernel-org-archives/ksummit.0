Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF0192C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 18:38:20 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43DAF21F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 18:38:20 +0000 (UTC)
Date: Thu, 21 Jul 2016 20:38:17 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
In-Reply-To: <1469094899.120686.101.camel@infradead.org>
Message-ID: <alpine.LNX.2.00.1607212031430.24757@cbobk.fhfr.pm>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<1469094899.120686.101.camel@infradead.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 21 Jul 2016, David Woodhouse wrote:

> Apart from resolutely not wanting to implement variable length arrays on 
> the stack, the LLVM folks actually seem quite keen to make things work. 
> I'm interested in the problem you report above.. and note the absence of 
> a bug number. Can you provide it?

I am currently on vacation and on super-lousy internet connection, so 
looking through my archives is a bit complicated ... I *think* it started 
in "[PATCH] usbhid: Fix lockdep unannotated irqs-off warning" thread on 
lkml.

In case you're not able to find it from there, I'll do my homework 
mid-next week when I am back properly online.

Thanks,

-- 
Jiri Kosina
SUSE Labs
