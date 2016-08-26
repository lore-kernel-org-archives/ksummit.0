Return-Path: <bkuhn@sfconservancy.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EE72D71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:08:22 +0000 (UTC)
Received: from pine.sfconservancy.org (pine.sfconservancy.org [162.242.171.33])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3F2812C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:08:21 +0000 (UTC)
From: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
Date: Fri, 26 Aug 2016 16:54:15 -0700
In-Reply-To: <CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	(Linus Torvalds's message of "Fri, 26 Aug 2016 14:51:16 -0700")
Message-ID: <87inunxf14.fsf@ebb.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Linus,

Linus Torvalds wrote at 14:51 (PDT):
> For example, we had a really nasty issue with Patrick McHardy, and
> sadly, the companies involved apparently didn't dare talk about it for
> fear of bad press (even if the badness was from our side). I was
> actually informed by Karen that the SFC finally made the thing public
> (thanks Karen - I really appreciated that), but when I went looking
> for it

The link to that statement, which Karen and I made jointly, is here:
   https://sfconservancy.org/blog/2016/jul/19/patrick-mchardy-gpl-enforcement/

> So _excuse_ me for not finding Bradley Kuhn very trustworthy on this
> issue.

I don't expect you to trust me; we don't know each other very well.

However, you don't need to trust me to examine my or Conservancy's
actions, because they're very transparent and any mandate that I have to
do GPL enforcement for Linux comes from Conservancy's agreements with
Linux developers who signed agreements that ask Conservancy to act.

> He's on public record on doing exactly that I am arguing we should
> *NOT* be doing.

No, that's not what I've said, neither on nor off the public record.

To step back, the chain of events of what Conservancy does in Linux GPL
enforcement is a simple flowchart:

0. Talk to the Linux developers in our coalition about the violation until
   there's general consensus about what to do next.

1. Approach violating company and ask nicely for them to comply, and offer
   help them do so.

    (a) If they do comply, thank them and (if they want) help them upstream
        the code and/or form a community to help work on it (for firmwares).
        "goto all_the_other_work_Conservancy_does_that_is_not_enforcement;"

    (b) If they don't comply, try to help them comply by giving them detailed
        technical reports about what parts of their product aren't in
        compliance.

2. If still no compliance & a long time has yet to go by: goto 0.

3. After that long time has passed, talk to the Linux developers in our
   coalition to see if someone feels a lawsuit is necessary.

4. After all that & much time has passed, support any Linux developer(s) who
   wants to file a lawsuit, in the way they specify they want that help.

And, in the four years that Conservancy has run the GPL Compliance program
for Linux developers, we got to (4) *exactly once*, with VMware, and we even
sat in (3) for quite a while, until Christoph joined the coalition and
decided he wanted to act [0].

In your last email, you quoted me (out of context) on a comment I made
regarding a situation where *we were already at step 4* (i.e., VMware's
violation).  There are lots of tactics and details to consider when we reach
steps 3 and 4, and those include: how the GPL appears to the Courts, whether
they can achieve clarity in interpretation of the GPL, what venue makes
sense, and whether we'll get a certain decision.  Also, it's likely that
true clarity won't come until steps (3) and (4) are a hit multiple times,
which may never happen (in history, any novel legal instrument has
required multiple Court cases to understand fully).  However, my
observation of that does not mean I'm *seeking* to hit steps (3) & (4).
Anyone who has done GPL enforcement with me can tell you that I *loathe*
Steps 1(b), (2), (3) and (4).  For the record, step 1(a) is the only
one I *want*, and I always try everything I can think of to get to 1(a).

Meanwhile, I do suspect you would rather Conservancy operate transparently
and comment publicly as much as we can.  Of course, Conservancy *could* just
do our work silently, communicate only with our coalition of developers, and
refuse to talk to the wider Linux community.  We *don't* do that because we
believe in openness and transparency.

Speaking just for myself, I'm *glad* to be held accountable by the Linux
developer community.  That's why I'm bothering to respond in this thread, why
I've done many calls over the years with LF's TAB, and why I propose talks to
every single Linux Foundation conference and leave plenty of time for Q&A.  I
believe if I'm involved in enforcing the GPL on Linux, the Linux community
has a right to question my activities and expect answers.

But, please, don't take open and transparent comments out of context and
assume that such statements on narrow issues of specific situations implies a
conspiratorial agenda.  It doesn't, and the *actions* show that...

> Because right now, I'm getting some _very_ mixed messages.

... a wise man once said, "talk is cheap; show me the code".  So, judge me by
my actual actions, not by twisting my words.  It's easy to do because all
this work has been done transparently.  As a public charity, you can look at
Conservancy's 990s and see all financial details related to GPL enforcement.
As I said in another post, in more than ten years, Conservancy has been
involved in exactly *two* lawsuits, with plenty of public documentation of
what happened there.  Recently, I and Karen were the *only* ones who were
willing to publicly criticized Patrick McHardy for being unnecessarily
litigious and non-transparent [1].  Overall, we only began the GPL Compliance
program for Linux developers because developers *asked* for it.  We remain
accountable to them.  We published the Principles of Community-Oriented GPL
Enforcement, which were endorsed and/or lauded by many Linux developers,
including the entire Netfilter team, as well as other charitable
organizations including FSF, FSF Europe and the Open Source Initiative.


I *think* you are saying that I'm doing something wrong and hurting Linux.
I'm not only willing to hear you on that -- in fact, I am alarmed and want to
understand immediately what it is.  But, you've not pointed to any specific
problematic action that I've taken.  Plus, before moving to Step (4) with
VMware, I asked you in person how you felt about enforcement against VMware,
and you said "what they're doing is in bad taste and someone should probably
do something about it".  You certainly did *not* say "please don't pursue
that!"  I am delighted to be accountable for my actions, but I'm baffled here
trying to figure out what action you're criticizing and why you didn't tell
me to stop when I explicitly sought your opinion.

Regardless, I'm happy to keep discussing the details with you and everyone
else, saying as much as is appropriate publicly.  I and Karen both were
hoping everyone who is stakeholder regarding Linux (i.e., the copyright
holders and developers) could have a discussion at KS about this.

Linus Torvalds wrote elsewhere in the thread:
> But as I started out saying, I actually support discussing this at the
> kernel summit, it's just that I absolutely do *not* think it's about
> having lawyers present.

IANAL, and I also agree that everyone showing up at KS with their
lawyers by their side is a _horrible_ idea.  Anyway, there are no actual
legal questions to discuss -- rather, nearly every issue raised are
*policy* questions.  Policy discussion should include actual
stakeholders (which, with regard to GPLv2, means anyone who is a
copyright holder in Linux).


[0] https://sfconservancy.org/copyleft-compliance/vmware-lawsuit-faq.html#why-lawsuit
    has the full story on how these steps went with VMware.
    
[1] Company representatives of all sorts have been thanking us for
    weeks, BTW, for finally coming forward and criticizing McHardy's
    lawsuits, because, as Linus mentioned, companies have been freaked out
    about it and "didn't dare talk about for fear of bad press".  (And,
    Conservancy did get some bad press and aggressive complaints from a few
    for our statement on it.)  But we did it because we believed it was right
    for the community, and because companies that try hard to comply with the
    GPL were asking us to do so.  We felt it important to go public about
    what we knew and had learned, because companies were scared and many
    didn't know what was going on, therefore creating a net-search-findable
    explanation about the situation was essential for the community.
-- 
Bradley M. Kuhn
President & Distinguished Technologist of Software Freedom Conservancy
========================================================================
Become a Conservancy Supporter today: https://sfconservancy.org/supporter
