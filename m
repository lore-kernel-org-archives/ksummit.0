Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1E5CE2A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:24:06 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59357A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 21:24:06 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id i21so3098705ljj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 14:24:06 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com.
	[209.85.208.170]) by smtp.gmail.com with ESMTPSA id
	x14sm3319524lfe.83.2019.06.03.14.24.03
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jun 2019 14:24:03 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id v29so6371555ljv.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 14:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
	<nycvar.YFH.7.76.1906032311500.27227@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.1906032311500.27227@cbobk.fhfr.pm>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 3 Jun 2019 14:23:47 -0700
Message-ID: <CAHk-=wh1sN4v3a=jfucUYvwdFQUc7ASiYrrbzXzZ3YMerN=7oQ@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

On Mon, Jun 3, 2019 at 2:15 PM Jiri Kosina <jikos@kernel.org> wrote:
>
> So being able to perform "ok, this is not an issue any more for whatever
> reason, I am closing myself as RESOLVED" operation would be really nice to
> have feature, which I think is currently missing.

Honestly, syzbot - or some related infrastructure - should just do
that automatically.

If the syzbot bug is old, and no longer reproduces with modern
kernels, then just close it. No human should waste any time on that.

As you say, syzbot can find things that others find independently, so
it's not even a "syzbot didn't get the credit, and didn't close things
as a result" issue. It can just as well be "bug was fixed without
syzbot being directly involved at all, and the syzbot report is just
stale old data".

                     Linus
