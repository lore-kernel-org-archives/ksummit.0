Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 78611102D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 07:33:54 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4EA4756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 07:33:53 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id f17so17808021otq.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 00:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
In-Reply-To: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2019 09:33:41 +0200
Message-ID: <CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
To: Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Dmitry,

On Tue, Aug 27, 2019 at 2:30 AM Dmitry Vyukov via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
> A somewhat related point re UUID/Change-ID.
> For syzbot (or any other bug tracking system) we want to associate
> bugs with fixes. It turned out there is no good identity of a change
> that we could use. Commit hash is an obvious first thing to consider,
> but (1) it changes in linux-next, (2) sometimes the change is not
> committed yet when we do the association, (3) it is different when
> backported to LTS (so not possible to say if a fix is in that stable
> tree or not).

For (3): LTS commits have "commit <sha1> upstream" in their description
(perhaps some have "cherry picked from commit <sha1>"?).

> We decided to use commit subject, which works to some degree, but also
> has problems: (1) not necessary unique, (2) sometimes people change
> subject during backporting (e.g. prepend some prefix), (3) has all the
> same problems of email clients messing with text (e.g. I can't issue
> #syz fix command for loo long commit subjects with my email client).
> Some real UUID/Change-ID would solve all of these problems by giving
> us capability to refer to changes rather than a commit in a particular
> tree only.

"git patch-id --stable <sha1>" may help, too.

For quick lookups, you need to generate/append to an index regularly.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
