Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A2F49F1C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:52:53 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16FCA7A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:52:53 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id p129-v6so20467424ite.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 08:52:52 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
In-Reply-To: <20180907145437.GF16300@sasha-vm>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Sep 2018 08:52:40 -0700
Message-ID: <CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
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

On Fri, Sep 7, 2018 at 7:54 AM Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
>
> 1. You argue that fixes for features that were merged in the current
> window are getting more and more tricky as -rc cycles go on, and I agree
> with that.

Well, yes, and no. There's two sides to my argument.

Yes, for the current merge window, one issue is that the fixes get
trickier as time goes on (just based on "it took longer to find"). But
that wasn't actually the *bulk* of the argument.

The bulk of the argument is that there's a selection bias, which shows
up as "fixes look worse", and that *also* gets worse as you get later
in the rc period.

> 2. You argue that stable fixes (i.e. fixes for bugs introduced in
> previous kernel versions) are getting trickier as -rc cycles go on -
> which I completely disagree with.

No, this is not the "trickier because it took longer to find". This is
mostly the "fixes during the merge window get lost in the noise"
argument.

Why does rc5+ look worse than the merge window when you do statistics?
Because when you look for fixes *early* in the release, you are simply
mixing those fixes up with a lot of "background noise".

Note that this is true even if you were to look _only_ at fixes. The
simple non-critical fixes don't tend to get pushed to me during the
later rc series at all. If it's not critical, but simply fixes some
random issue, people put it in their "next" branch.

And *that* gets more common as the rc series gets later.

So you have a double whammy. Later rc's get fewer patches overall -
obviously there shouldn't be anything *but* fixes, but we all know
that's not entirely true - and even when it comes to fixes it gets
fewer of the of the trivial non-critical ones.

What are left? During the later rc series, I argue that even for
stable fixes, you *should* expect to see more of the nasty kinds of
fixes, and - again, BY DEFINITION - fixes that got less testing time
in linux-next.

Why the "BY DEFINITION"? Simply exactly because of that simple issue
of "people thought this was a critical issue, so they pushed it late
in the rc rather than putting it in their pile for the next merge
window" issue.

Don't you see how that *directly* translates into your "less testing
time" metric?

It's not even a correlation, it's literally just direct causation.

But this is not something we can or we should change. A more important
fix *should* go on earlier, for chrissake! That's such an obvious
thing that I really don't see anybody seriously arguing anything else.

Put another way: of _course_ the simple and less important stuff gets
delayed more, and of _course_ that means that they look better in your
"testing time metrics".

And of _course_ the simple stuff causes less problems.

So this is what my argument really boils down to: the more critical a
patch is, the more likely it is to be pushed more aggressively, which
in turn makes it statistically much more likely to show up not only
during the latter part of the development cycle, but it will directly
mean that it looks "less tested".

And AT THE SAME TIME, the more critical a patch is, the more likely it
is to also show up as a problem spot for distros. Because, by
definition, it touched something critical and likely subtle.

End result: BY DEFINITION you'll see a correlation between "less
testing" and "more problems".

But THAT is correlation. That's not the fundamental causation.

Now, I agree that it's correlation that makes sense to treat as
causation. It just is very tempting to say: "less testing obviously
means more problems". And I do think that it's very possibly a real
causal property as well, but my argument has been that it's not at all
obviously so, exactly because I would expect that correlation to exist
even if there was absolutely ZERO causality.

See what my argument is? You're arguing from correlation. And I think
there is a much more direct causal argument that explains a lot of the
correlation.

> Stable fixes look the same whether they showed up during the merge
> window, -rc1 or -rc8, they are disconnected from whatever stage we're at
> in the release cycle.

See above. That's simply not true. An unimportant stable fix is less
likely to show up in rc8 than in the merge window. Again, for the
selection bias.

The stuff that shows up in late rc's really is supposed to be somewhat special.

Will there be critical stable fixes during merge window and early
rc's? Yes. But they will be statistically fewer, simply because
there's a lot of the non-critical stuff.

> If you agree with me on that, maybe you could explain why most of the
> stable regressions seem to show up in -rc5 or later? Shouldn't there be
> an even distribution of stable regressions throughout the release cycle?

First off, I obviously don't agree with your.

But secondly, an N=5 is likely not statistically relevant anyway.

And thirdly, clearly some of the problems stable has isn't about the
patch itself, which was fine in mainline. Even in your N=5 case, we
had at least one of those (the TCP one), where the problem was that
another patch it depended on hadn't been backported.

That, btw, might be another "later rcs look worse in stable". Simply
because fixes in later rcs obviously have way more of the "we found
this in this cycle because of the _other_ changes we were working on
during this release". Maybe the other changes _triggered_ the problem
more easily, for example. So then you find a (subtle) bug, and realize
that the bug has been there for years, and mark it for stable.

And guess what? That fix for a N-year-old bug is now fundamentally
more likely to depend on all the changes you just did, which weren't
necessarily marked for stable, because they supposedly weren't
bugfixes.

See? I'm just arguing that there can be correlations with problems
that are much more likely than "it spent only 3 days in next before it
got into mainline".

> Sure, the various bots cover much less ground than actual users testing
> stuff out.
>
> However, your approach discourages further development of those bots.

So that I absolutely do *not* want to do, and not want to be seen doing.

But honestly, I do not think "it got merged early" should even be seen
as that kind of argument. There should be *more* bots testing things I
merge. Because even when you test linux-next, you're by implication
testing the stuff I'm merging, since mainline too gets merged into
linux-next.

So I do think that it's true that

 (a) bots generally haven't hit the issues in question, because if
they had, they would have been seen and noted _before_ they made it to
stable

 (b) bots potentially *cannot* hit it in mainline or linux-next,
because what gets back-ported is not "mainline or linux-next", but a
tiny tiny percentage of it, and the very act of backporting may be the
thing that introduces the problem

but neither of those arguments is an argument to discourage further
development of bots. Quite the reverse.

                 Linus
