Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DC168D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 19:45:54 +0000 (UTC)
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA7C223F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 19:45:52 +0000 (UTC)
Received: by mail-yw0-f169.google.com with SMTP id u134so54715554ywg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:45:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFyOSV0cRGEHWjsKMxsxjs6Kp6oghpE+-ueVFi7irnmSCA@mail.gmail.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
	<CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
	<CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
	<CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
	<1472230114.2751.67.camel@redhat.com>
	<CA+55aFxedcKe7q1SsVK48zkrzmUHwb8p3g8oKAHR4nUsbsobxA@mail.gmail.com>
	<CAPeXnHswT0dSvdzvc1p7yr_cewXrX1mHi0dQE=p1E4sFkjn=HQ@mail.gmail.com>
	<CA+55aFyOSV0cRGEHWjsKMxsxjs6Kp6oghpE+-ueVFi7irnmSCA@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Fri, 26 Aug 2016 15:45:50 -0400
Message-ID: <CAPeXnHvKF2sPoiBiDCMEiguR1QScn5wNpQ7deaz=MDxofReNOw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 3:03 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Fri, Aug 26, 2016 at 10:49 AM, Matthew Garrett <mjg59@coreos.com> wrote:
>>
>> And yet Linksys were still in violation (even on the WRT54GL!) in
>> 2008, resulting in a lawsuit (which they settled). That was after two
>> and a half years of quiet negotiation between the FSF and Linksys.
>> People had raised a stink. Discussions happened. Linksys didn't come
>> into compliance until the suit was filed, and to this day they
>> continue to distribute Linux-based routers and provide the source.
>>
>> Which part of this was inappropriate? What should have been done instead?
>
> So note how I said earlier that it's not an entirely black-and-white thing.
>
> I do think that there is some final point where lawyers do need to get
> involved. But it really should be seen as a last effort thing. It's
> the nuclear option.

As far as I know, the last time the SFC was involved in a lawsuit was
in 2010. Since then they've worked with a large number of vendors and
secured the release of significant quantities of code. We're not
talking about ambulance chasers, here.

> It is *not* something we should be belligerent about, and something
> you use as a threat. It is very much not a "we can all decide to give
> up on the GPL, or we can enforce it in Courts".

It's hyperbole, but there's truth to it. Some vendors will be
receptive to quiet negotiation, especially in cases where there's very
similar precedent (router vendors seem to be well behaved here). But
if vendors start pushing back, and if it becomes known that there are
no consequences for pushing back, that's likely to change. If it's
viewed as socially beneficial to release GPLed source, but not viewed
as a hard requirement, the distinction between the GPL and a BSD-style
license vanishes, which is what Bradley means by "giving up on the
GPL". For companies that don't see any social or technical benefit in
releasing their source (vendors producing cheap short-term products
who'll never have to rebase patches, for instance), the only incentive
is the legal one. I understand why you're just not that interested in
that case, but there are huge numbers of users who are. Doing what we
can to help them is worthwhile.

> And the thing is, I think that the reasons to bring in lawyers have
> weakened markedly over time. I'm sure you remember back when some
> people used to argue that the GPL was invalid and unenforceable. It
> was a completely bullshit argument, and had absolutely no sane
> thinking behind it, but it definitely existed.

Oh, I agree, and it's much easier *because* lawyers were involved in
the past. But there's still plenty of edge cases, and the VMWare case
demonstrates that there are still significant vendors who won't do the
right thing even if there's been plenty of quiet negotiation.

> At the same time, when we've obviously convinced people the GPL is
> serious and real, I'm actually seeing *more* noise to go to war, not
> less. That makes no sense.

I think you're misinterpreting what people are saying. People want to
make sure that if we do go to war, that we win. That means having a
strong cohort of copyright holders who can't be weakened by corporate
pressure, and making it clear that lawsuits won't be ruled out. Nobody
*wants* to go to court, not even Bradley. It's only happening because
everything that could be done before that was done, and failed.

> As a result, we should be much *less* inclined to make legal threats,
> since so much of the industry has been convinced. Not all, no, but the
> GPL has actually become an accepted license inside a lot of companies.
> Some of those companies used to rant against it and call it "cancer".

The number of companies using Linux has increased significantly since
2010. The number of lawsuits has decreased. Evidence suggests that
everybody involved *is* less inclined to make legal threats.

> I'm sure you've heard the term "GPL maximalist". It's not a pretty
> thing, and it's hurting us. We were successful exactly because we were
> *not* maximalists.
>
> We absolutely should fight that fringe movement.

We agree that quiet negotiation is the preferred tactic. We agree that
lawsuits may be necessary as a final resort. It doesn't seem like
we're disagreeing on anything fundamental in that respect. What Karen
has suggested is an opportunity for the kernel community to give clear
input into when that final resort should be acceptable.
