Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42F194A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 14:12:12 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC3E81FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 14:12:11 +0000 (UTC)
Date: Thu, 22 Jun 2017 16:12:09 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5h8tkkqfn6.wl-tiwai@suse.de>
Message-ID: <alpine.LSU.2.20.1706221610000.30709@cbobk.fhfr.pm>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<s5h8tkkqfn6.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 22 Jun 2017, Takashi Iwai wrote:

> - The inconsistent bug tracking over the whole kernel areas:
>   which way to report purely depends on the subsystem.  Even inside a
>   subsystem, some prefer bugzilla while some don't.

Agreed that this might be annoying for the reporters, but I don't think we 
want to go towards pushing maintainers to use one unified solution. That'd 
be counter-productive.

> It would be great to have someone assigned helping for bug tracking in 
> both upstream (kernel subsystem) side, and in distributor side. We have 
> a better coordination regarding the security bugs, and it should be 
> extended for larger areas.

Completely agreed. But given the problems we've had finding someone who'd 
be tracking regressions (which is a small subset of the whole "bug 
handling"), I'm a bit skeptical.

Thanks,

-- 
Jiri Kosina
SUSE Labs
