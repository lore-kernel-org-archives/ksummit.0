Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4ED9EB43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:15:32 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AE545D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:15:31 +0000 (UTC)
Date: Mon, 3 Jun 2019 23:15:17 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Sasha Levin <sashal@kernel.org>
In-Reply-To: <20190603211004.GU12898@sasha-vm>
Message-ID: <nycvar.YFH.7.76.1906032311500.27227@cbobk.fhfr.pm>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 3 Jun 2019, Sasha Levin wrote:

> > Apparently syzbot doesn't do well on the (a) side though. Honestly, 
> > any system that just keeps things open for 300+ days has something 
> > wrong with it. At some point it needs to be automatically either 
> > closed, or re-notified. The "just keep it around" is simply not an 
> > option.
> 
> My understanding is that syzbot closes a bug once the bot sees an
> annotated commit indicating that it fixes a certain bug. These
> annotations get lost/forgotten/etc so bugs remain open even after they
> were fixed.

A lot of such bugs get fixed (directly or totally indirectly) without 
authors of the fixes being even remotely aware of the syzbot report.

So being able to perform "ok, this is not an issue any more for whatever 
reason, I am closing myself as RESOLVED" operation would be really nice to 
have feature, which I think is currently missing.

-- 
Jiri Kosina
SUSE Labs
