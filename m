Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33EA612AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 16:17:31 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0F227A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 16:17:30 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id c22-v6so1958572iob.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 09:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
In-Reply-To: <CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Sep 2018 09:17:18 -0700
Message-ID: <CA+55aFxJ5JVrNVA06BhpL9Q4y2uh5PVizuZtP6+9npLs15CZVQ@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 7, 2018 at 8:52 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> See? I'm just arguing that there can be correlations with problems
> that are much more likely than "it spent only 3 days in next before it
> got into mainline".

Btw, another source of these kinds of non-causal correlations might be
just how people work.

For example, for me, the merge window is my busiest season by far
(obviously).  I try to schedule my time off to coincide with late in
the rc, because it's just quieter: at that point I'm mostly waiting
for stuff.

But that's actually _supposed_ to be just me (and maybe Stephen Rothwell).

And for maintainers, it can be the exact reverse. In Vancouver Greg
said that normally, for him, the merge window is when he can take a
break, because the bulk of his work is the "leading up to merge
window" time, since that's when he works with people to set up the
branches for the next merge window.

So *during* the merge window, the development tree actually looks
really busy, but maintainers may be taking it easy and are basically
in the "my work is done, now I'm waiting for reports". So exactly the
reverse of my situation, and exactly the reverse of what it *looks*
like in the development tree.

Everybody thinks that the merge window is when all the work goes on,
but in reality, the reverse can true. The merge window and the early
rc's can (and almost certainly _should_) be the time when a maintainer
takes a breather.

And guess what? Last merge window was the exception to that rule. With
the timing of L1TF, we had the stable tree work happening on patches
that were merged during the merge window.

And honestly, I'd not be surprised at all if the usual "stable patches
that came in rc5+ caused more problems" is reversed this time around.
We already know that this time around, we had tons of issues with the
stable tree with patches that were merged in mainline during the merge
window.

Of course, there will - once again - be a very strong correlation with
"it wasn't in linux-next". But this time the correlation won't be with
"rc5+".

And - once again - the correlation is real, but it's incidental to the
*real* causal relationship. It's just that - correlation. The real
causality just happened to be different this time, and so you won't
find the usual "rc5+" correlation, but you will still find the "less
time in linux-next" one.

But normally, I'd actually expect that "late rc" is exactly when
maintainers are doing most of their work, and then they see "oh, this
patch needs to go in *now*, so I'll send it to Linus in a fixes pull".

So none of my arguments are "testing is bad". I really don't want it
to appear that I make that argument.

But honestly, my reaction remains that "late rc fixes are more likely
to cause nasty problems" sounds very natural to me, and sounds largely
independent of the testing issue.

           Linus
