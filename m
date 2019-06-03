Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF6F7E70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:28:48 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B58D83A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:28:48 +0000 (UTC)
Date: Mon, 3 Jun 2019 23:28:45 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <CAHk-=wh1sN4v3a=jfucUYvwdFQUc7ASiYrrbzXzZ3YMerN=7oQ@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.1906032326330.27227@cbobk.fhfr.pm>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
	<nycvar.YFH.7.76.1906032311500.27227@cbobk.fhfr.pm>
	<CAHk-=wh1sN4v3a=jfucUYvwdFQUc7ASiYrrbzXzZ3YMerN=7oQ@mail.gmail.com>
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

On Mon, 3 Jun 2019, Linus Torvalds wrote:

> > So being able to perform "ok, this is not an issue any more for whatever
> > reason, I am closing myself as RESOLVED" operation would be really nice to
> > have feature, which I think is currently missing.
> 
> Honestly, syzbot - or some related infrastructure - should just do
> that automatically.
> 
> If the syzbot bug is old, and no longer reproduces with modern
> kernels, then just close it. No human should waste any time on that.
> 
> As you say, syzbot can find things that others find independently, so
> it's not even a "syzbot didn't get the credit, and didn't close things
> as a result" issue. It can just as well be "bug was fixed without
> syzbot being directly involved at all, and the syzbot report is just
> stale old data".

Agreed.

At the same time, I definitely don't want this to sound as if syzbot is 
just reporting random things that people will be fixing anyway. That's 
definitely not the case in general.

But the volume is simply so overwhelming, that syzbot needs to be able to 
cope with the fact that bugs are also fixed independently.

That'll help the state / usefulness of the reported bugs a lot IMO.

-- 
Jiri Kosina
SUSE Labs
