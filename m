Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18C2CEC5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 02:31:32 +0000 (UTC)
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F89E7EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 02:31:31 +0000 (UTC)
Received: by mail-it0-f47.google.com with SMTP id f14-v6so18731977ita.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 19:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
In-Reply-To: <20180907014930.GE16300@sasha-vm>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 Sep 2018 19:31:18 -0700
Message-ID: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
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

On Thu, Sep 6, 2018 at 6:49 PM Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
>
> You're saying that patches that come in during -rc cycles are more
> difficult and tricky, and simultaneously you're saying that it's
> completely fine taking them in without any testing at all. Does that
> sound like a viable testing strategy?

It sounds like *reality*.

Note that I'm making the simple argument that there is a selection
bias going on. The patches coming in are simply different.

What do you suggest you do about a patch that is a bug fix? Delay it
until it has two weeks of testing? Which it won't get, because nobody
actually runs it until it is merged?

THAT is my argument. There _is_ no viable testing strategy once you're
in the bug fix territory.

The testing was hopefully done on the stuff in the merge window, so
that the bug fix territory might be smaller, but once you have a fix
for something, what are your choices?

Wait until the next merge window? Not apply it at all and have it
percolate back in stable?

That sounds _way_ crazier to me.

Revert? Which we do do, btw, but it has its own set of serious
problems too, and we've had bugs due to *that* (because then it turns
out there were patches that built on the code that weren't obvious and
so we had semantic conflicts).

But do you not realize what this means: this means *by*definition*
that the fixes get less testing. That's just how it is.

THAT is my argument. They are statistically very different animals
from the development patches. And they *will* stand out because they
are different, and you'd actually expect them to stand ou tout _more_
the further in the rc series you get.

And then when you look at percentages of breakage, yes, the fixes look
bad. But that, I think, really is because of the fundamental selection
bias.

> Look at v4.17-rc8..v4.18: how many of those commits fix something
> introduced in the v4.17 merge window vs fixing something older?

What is the relevance of that question?

Seriously.

What does it matter whether they fixed something older or something in
that release?

And notice also how it doesn't matter to the bias question. Sure,
fixes come in during the merge window too (and early rc too). But
there they are simply statistically not as noticeable.

> This is a *huge* reason why we see regressions in Stable.

No.

The *stable* people are the ones that were supposed to be the careful ones.

Instead, you use automated scripts and hoover things up, and then you
try to blame the development tree for getting stuff that regresses in
your tree.

What's the logic of that, again?

Now, don't get me wrong. I'd like to get even fewer changes in during
late rc, I do think we actually agree on that. But I don't think that
really changes the *problem*. It just shifts the problem around, it
doesn't change it in any fundamental way. You still end up with the
same situation eventually.

Also, don't get me wrong another way: I'm not actually blaming the
stable people either. Because I think you guys end up being in the
exact same situation - even if *you* are careful, and you delay
applying stable patches, it really doesn't make the problem go away,
it just shifts it later in time.

> Take a look at
> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2018-September/005287.html
> for a list of recent user visible regressions the CoreOS folks have
> observed this year. Do you want to know when they were merged? Let me
> help you: all but one were merged in -rc5 or later.

And hey, here's another way of looking at it: those were seen to be
serious fixes (there's at least one CVE in there) that came in late,
and then the fix had a subtle interaction that people didn't realize
or catch.

The "rc5 or later" is actually time-wise about 1/3 of everything. It's
not some insignificant fraction. And yes, the patches that come in in
that timeframe are often going to be _way_ subtler than the ones that
get delayed until later because people don't think they are as
critical.

> >So exactly what do you think it proves that late rc patches then might
> >be buggier than average?
>
> It proves that your rules on what you take during late -rc cycles make 0
> sense. It appears that once we passed -rc5 you will take anything that
> looks like a fix, even if it's completely unrelated to the current merge
> window or if it's riskier to take that patch than revert whatever new
> code that was merged in.

But that's not the rule.

Post-rc5 has nothing to do with "current merge window". You just made
that up. And that rule would make zero sense indeed.

Basically, during rc5, I should take anything that would be marked for
stable. The only difference between "current merge window" or
"previous" is that _if_ it was actually the current merge window,
there won't be a "stable" tag, because it isn't relevant for older
kernels.

See what I'm saying?

You're basically trying to make the rule be "don't take stuff that is
marked for stable". But *THAT* would be truly incredibly insane, and
actually cut down testing even further, because now you lose the
testing that mainline kernels *do* get (well, I hope they do - more
than linux-next, for sure).

So the "even if it's completely unrelated to the current merge window"
argument of yours makes absolute zero sense.

What would you actually want us to do?

Delay fixes until the next merge window?

> How can you justify sneaking a patch that spent 0 days in linux-next,
> never ran through any of our automated test frameworks and was never
> tested by a single real user into a Stable kernel release?

I'm not doing that. YOU ARE.

I'm putting it into the development release. You're not supposed to
take it without testing. Being *in* the development tree is what gets
it actual real-life testing, Sasha.

Really.

For *stable*, you should be waiting for a week or two before you
actually apply it. That's what Greg claims he does (ie he delays it
until a "one past" rc release - if it went into rc5, he'll take it
after rc6). Of course, there are exceptions there too, but that's my
understanding of what the default stable flow should be.

That way you get *way* better testing than linux-next ever gives you,
because hardly anybody runs linux-next outside of bots (which do find
a lot, don't get me wrong, but they miss a *ton*).

But at the same time, we should all admit that what gets even more
testing is not just when it hits stable, but when it hits a distro
_because_ it hit stable.

Anybody who thinks that that won't show problems that didn't get found
in testing is living in a dream world. It will. The regressions in
stable are inevitable.

It's called "reality". Tough, and we all wish it wasn't all nasty and
complex, but that messiness is fundamentally what makes reality
different from theory.

                     Linus
