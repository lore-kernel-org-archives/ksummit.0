Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3AB2A47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 11:05:32 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 832CD201B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 11:05:32 +0000 (UTC)
Date: Mon, 25 Aug 2014 13:05:30 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
In-Reply-To: <53FB17A7.9090209@hitachi.com>
Message-ID: <alpine.LNX.2.00.1408251304260.2992@pobox.suse.cz>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<53FB17A7.9090209@hitachi.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 25 Aug 2014, Masami Hiramatsu wrote:

> What I found is that the module unloading involving 2 stop_machine()s 
> for each module removing. It must not be needed. However, since the 
> module's ref-counter is over-optimized for BIG SMP machine, we can't 
> remove it without replacing it. But it means some performance regression 
> can happen on such big-scale SMP machines (not the laptop nor normal smp 
> machine).

Is that really a big problem in practice?

I.e. are there valid usecase scenarios where module load / unload should 
be considered a hotpath where every ms of performance would matter?

Thanks,

-- 
Jiri Kosina
SUSE Labs
