Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E609CB1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 21:22:04 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 89EA8101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 21:22:03 +0000 (UTC)
Date: Wed, 8 Jul 2015 23:21:42 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
In-Reply-To: <559D4C35.6070709@hitachi.com>
Message-ID: <alpine.LNX.2.00.1507082319250.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
	<559D4C35.6070709@hitachi.com>
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

On Thu, 9 Jul 2015, Masami Hiramatsu wrote:

> > - stack unwinding has so far been deemed purely debugging facility, with 
> >   no correctness guarantees whatsoever. One of the possible aproaches to
> >   improving the coverage of live patching infrastructure would assume
> >   100% reliability of in-kernel stack unwinding.
> > 
> >   Is this something that should be pursued further? Especially opinions 
> >   and comments from various arch maintainers would be welcome
> 
> Yeah, at least the live patch would be better to depend on a frame-pointer
> to improve correctness...

I actually think that Josh is planning to add dwarf2 CFI support as well 
(but yes, first step is getting frame pointer based unwinding to work 
properly).

Thanks,

-- 
Jiri Kosina
SUSE Labs
