Return-Path: <bkuhn@sfconservancy.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B3A4905
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 19:46:12 +0000 (UTC)
Received: from pine.sfconservancy.org (pine.sfconservancy.org [162.242.171.33])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B87823F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 19:46:11 +0000 (UTC)
From: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <8737lrl8os.fsf@ebb.org>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<CA+55aFxedcKe7q1SsVK48zkrzmUHwb8p3g8oKAHR4nUsbsobxA@mail.gmail.com>
	<CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
	<CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
	<CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
	<CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
Date: Fri, 26 Aug 2016 12:36:12 -0700
In-Reply-To: <CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
	(Linus Torvalds's message of "Fri, 26 Aug 2016 09:34:00 -0700")
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

> On Fri, Aug 26, 2016 at 8:28 AM, Rik van Riel <riel@redhat.com> wrote:
>> The downstream freedoms seem to be generating new upstream
>> communities all around us, for example OpenWRT.

Linus Torvalds replied at 09:34 (PDT) on the same day:
> And I call bullshit. Anybody who tries to point to the lawsuits and
> say that they were a big factor in the success of OpenWRT is actively
> ignoring all the other - and hugely *bigger* factors - in the
> successes of OpenWRT.

It's tough to know what factors made OpenWRT *more* successful in the years
after the enforcement action in 2003 against Linksys and Cisco.  However,
it's a fact that the WRT54G enforcement action bootstrapped that community.
Specifically, the first checkin to the original OpenWRT SVN repository was
the source release that we received out of that enforcement action [0].
There was a similar outcome for Samsung TV's [1].

WRT54G was the first ever enforcement action with a coalition of copyright
holders -- including Harald Welte, (primary BusyBox developer) Erik
Andersen, FSF, and others.  These days, Conservancy models our coalitions
after the 2003 one that Harald and I coordinated -- with as many
transparency improvements as we can think of (e.g., the publication of the
Principles).  BTW, funny story from that enforcement action: Harald ended
every conference call with "Why have we not sued Cisco yet?"  I fought
*Harald* to talk him *out* of filing a lawsuit on that one, and in the end,
we succeeded by *not* filing a lawsuit.  Lawsuits are always a last resort
*after* nothing else works.

I'm not a lawyer; I'm a developer-turned-community-activist-&-organizer.
Linux developers for *years* came up to me at conferences and say: "Why do
you only enforce for BusyBox?  Why don't you help *me* enforce for Linux? I
know of products that violate GPL and no one is doing anything about it!"
After almost a decade, I stopped ignoring them, because I believe the
developers who write Linux are important.  Their views matter, and what they
want done about their license matters.

Relatedly, Linus, I even changed my position on copyright assignment over
time because of your arguments.  When I was young, I thought upholding GPL
required universal, mandatory copyright assignment, which has the downside
of creating inequities in a community -- no matter how carefully constructed
that assignment document.  I now believe copyright assignment -- to one's
employer, to another developer, or to a charity like Conservancy or FSF --
should always be 100% optional.  The upshot, though, is a democratic system;
all copyright holders' opinions are relevant.

Those copyright holders will disagree with each other, but we should all
keep talking, rather than ostracizing some opinions.  A KS session where we
can do so face-to-face seems the best venue -- rather than falling into the
actual discussion in a thread on a list intended only to discuss the
meta-issue of the merits of having the discussion. :)

Linus Torvalds wrote further in another part of the thread:
>  I believe the SFLC (and now SFC) approach is poison.

SFLC has not been Conservancy's law firm for a long while.  Karen and I have
learned from past mistakes.  We published the Principles to lead the charge
on avoiding lawsuits as much as possible, and encouraging GPL enforcement
transparency .  (Personally, I'm very disappointed that Patrick McHardy
isn't answering to the Linux community about what he's up to.)

> a bit of public shaming is not bad.

I believe public shaming is the second-to-last resort, because public
shaming is sometimes worse for a company's responsiveness and willingness to
reconcile than a lawsuit.  It depends on the situation.

> [a lawsuit] is very much a last resort. It has huge negative consequences.
> ...I do think that there is some final point where lawyers do need to get
> involved. But it really should be seen as a last effort thing.

I agree completely.  In its more than a decade of existence, Conservancy has
only participated directly in one lawsuit (with Erik Andersen, over
BusyBox), and helped fund another one (Christoph's against VMware).  That's
it.  We don't take a litigation decision lightly, we do it very rarely, and
only after every other idea has been tried over a long time period.

That's my position, and my position on lawsuits hasn't changed since 2003.
If you thought my position was something different, you've misunderstood.


[0] At the time I took the source release that we got from the
    enforcement action -- which was made public within a few weeks of when I
    first got it -- and the diff was 100% clean against what the OpenWRT
    developers checked in as r1.  I didn't coordinate with those developers;
    they chose on their own to download that source release and start
    building a Free Software project around it.

[1] https://www.samygo.tv/ -- which is based on sources Conservancy got
    released in the BusyBox lawsuit against Samsung.  I didn't coordinate
    with those developers; I don't even know them.  They found the release
    we got from Samsung in the lawsuit and built a firmware-mod community
    around it.  And, BTW, Samsung participates regularly upstream now.
-- 
Bradley M. Kuhn
Distinguished Technologist of Software Freedom Conservancy
========================================================================
Become a Conservancy Supporter today: https://sfconservancy.org/supporter
