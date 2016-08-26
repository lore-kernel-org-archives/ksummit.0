Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE59A258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 16:52:18 +0000 (UTC)
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3143C8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 16:52:18 +0000 (UTC)
Received: by mail-oi0-f45.google.com with SMTP id f189so117981209oig.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 09:52:18 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
	<CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
	<CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
	<CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 26 Aug 2016 09:52:16 -0700
Message-ID: <CA+55aFz9J973mQSO8qmdhLF=CrDrE59w7moJT+JQ1to5dXp5Qw@mail.gmail.com>
To: Rik van Riel <riel@redhat.com>
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

On Fri, Aug 26, 2016 at 9:34 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> So there's been lots of nugding and discussions and talking to people
> going on when companies sometimes need encouragement to behave well.
> And public shaming too - I think the things that Matthew does when he
> points out truly crap hardware or horrible security issues are
> *wonderful*.

I'd like to just highlight this, because (obviously) I and Matthew
disagree on lots of things quite violently, but that doesn't mean that
we have to disagree on everything. Not at all.

When a company (or individual) does something bad, I'll be the last
person to say that you shouldn't speak out about it. That would indeed
be very hypocritical.

I'm not at all a believer in some kind of "dark backroom deals" kind
of behavior either.

When people violate the license (or do other really questionable
things - I think Matthew had an epic rant about just plain shit code,
which isn't exactly _illegal_ but perhaps should be ;), a bit of
public shaming is not bad.

It's literally "bringing in the legal guns" that I argue against. It's
very much a last resort. It has huge negative consequences.

Telling a company "btw, you know that that is actually illegal" is one
thing. Go ahead. Do it publicly. Shame them in public, or talk to them
strongly in private if you have the connections. Talk to other people,
and tell them to not buy the crap.

Make a stink.

Companies are big and complex things, and parts of the company may not
even have *realized* what was going on (or may not have realized it
was illegal).

Or they may be actively working on fixing things, but can't do it
until the next version, or whatever.

Sometimes it's a bit like software bugs: we can't fix what's out there
right now, but we can try to make the next release better.

It's when you have lawyers threatening lawsuits that you get that
turtle response, and get the managers saying "we can't afford to do
open source" or "maybe we should push a BSD alternative instead".

That's the thing that kills the next version and kills the project,
rather than fixing it.

          Linus
