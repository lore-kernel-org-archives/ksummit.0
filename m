Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8905B1207
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:57:02 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45C802D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:57:02 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id h23-v6so17000951ita.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 13:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 Sep 2018 13:56:50 -0700
Message-ID: <CA+55aFx635GmuiojjD-dvqCvHBfGCt4zwSR5k8PyznSoy1xYWg@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 12:18 PM Jiri Kosina <jikos@kernel.org> wrote:
>
> I am not completely sure what we could do to improve this, especially with
> our kernel community hats on -- I am pretty sure a lot is happening on the
> corporate level between individual "corporate stakeholders".

One particular pain point this last time around were the stable
backports, I feel.

A lot of that was that the actual *fixes* were marked for stable, but
quite often they were preceded by cleanups and other updates that
didn't actually fix things directly, and that weren't in themselves
explicitly marked for stable and didn't have a Fixes: tag, because
they were prep-work.

So we had _several_ nasty regressions in stable that never showed up
in mainline, because there was some non-obvious dependency that didn't
cause a merge conflict, but did cause a "this commit needed that other
commit to work right".

We should probably at least think about having a way to mark those.
Something like a "for-stable-because-of-subsequent-patches" tag?

Or just more eager use of the table cc? I often feel bad about adding
"cc: stable" to preparatory patches that don't actually fix the bug,
but I think it was bad this time around.

Of course, I also hope that we're over the worst.

               Linus
