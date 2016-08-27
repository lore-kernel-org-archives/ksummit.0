Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 74B8D71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:04:05 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0FDD14E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:04:04 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id 9A47F203B6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:04:03 +0000 (UTC)
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B30A120394
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:04:00 +0000 (UTC)
Received: by mail-ua0-f173.google.com with SMTP id l94so100598195ual.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 17:04:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160826233443.bmdnmlrq2hiimdgn@thunk.org>
References: <1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
	<1472230114.2751.67.camel@redhat.com>
	<CA+55aFxedcKe7q1SsVK48zkrzmUHwb8p3g8oKAHR4nUsbsobxA@mail.gmail.com>
	<CAPeXnHswT0dSvdzvc1p7yr_cewXrX1mHi0dQE=p1E4sFkjn=HQ@mail.gmail.com>
	<CA+55aFyOSV0cRGEHWjsKMxsxjs6Kp6oghpE+-ueVFi7irnmSCA@mail.gmail.com>
	<CAPeXnHvKF2sPoiBiDCMEiguR1QScn5wNpQ7deaz=MDxofReNOw@mail.gmail.com>
	<1472241199.5189.86.camel@HansenPartnership.com>
	<20160826214136.e6oeapzxzwzichdb@thunk.org>
	<20160826230413.GJ3296@wotan.suse.de>
	<20160826233443.bmdnmlrq2hiimdgn@thunk.org>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Fri, 26 Aug 2016 17:03:39 -0700
Message-ID: <CAB=NE6XEdYOuCD4NcGrNHAEZ-W+Fiz2u2XE-V2_EDR_AWYaDdg@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
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

On Fri, Aug 26, 2016 at 4:34 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Sat, Aug 27, 2016 at 01:04:13AM +0200, Luis R. Rodriguez wrote:
>> Its important these summits take into consideration to all sides, equally.
>
> Agreed, but will the Conservancy take into considerations all sides
> and all copyright holders?

I was actually talking about the Linux Foundation legal summits, as
you suggested. I had given up at this point of any of this spoken
about at KS...

But -- since you insist on considering this for KS -- let me make it
clear that I am personally not a fan of any of these topics spoken
about *loosely* to at KS, but "best tactics for compliance" seems
sensible and neutral (Linus gave a few good tactical ideas on vouching
for good citizens, etc), and letting folks ask questions sounds like
another nice opportunity for folks to get information about SFC does.
I'll note Karen particularly just offered a Q&A session. That's all...
That seemed fair and neutral. It didn't seem to be agend'ish..

Is a Q&A not OK? Is that agenda'ish?

Perhaps talking about "when has last resort line been reached?" a bit
too sensitive to a few corporate copyright holders, but I suspect
having a friendly discussion over this with a majority of developers
present might be a win for the community. Not up to me -- just saying,
it seems these are the things most folks are interested in helping
chime in.

> Or will it pick and choose which
> developers it will listen to?

If a Q&A is offered I think you can be moderator as you coordinate KS.

> And how will it decide if there is
> disagreement amongst the copyright holders in their clubhouse?

Well you mean internally on the mailing list? Currently -- just as is
done here, through a list. As the group grows I suspect we may need
something more efficient though... One idea is to use the kernel web
of trust and an encrypted survey mechanism, to collect polls and get
results. In fact if we wanted to do this with all of Linux's
contributors today we could easily do this as well using similar
survey practice, you can even anonymize the actual data of responses
from individuals -- you'd just list the results. We could even keep
results private to KS.

> Saying that you will striving for consensus is nice, but it's pretty
> clear from these threads that there won't be 100% agreement all the
> time.

Just like Linux development.

> If consensus can't be achieved, what then?  Will there be
> voting?

Its a good question, we haven't had to scale yet but above I give a
simple algorithmic example of a possible solution if we needed to.

> Will it be weighted by how much code various copyright
> holders might own?

That's another great question, should the answer be ironed out at KS ?
If we had tools to help us with this what should it look like? What
would folks like it to look like ?

> Does the Conservancy reserve the right to throw
> out copyright holders who don't vote the right way?

The Principles (recently linked) are new and are followed, it was
inspired by the recent Patrick crap. Is that fair? Are there questions
on the Principles?

https://sfconservancy.org/blog/2016/jul/19/patrick-mchardy-gpl-enforcement/

> I would think a responsible person would want to know answers to these
> and similar questions before lending their name/reputation to the
> Conservancy.

Indeed!

> After all, these are pretty critical governance issues.

100% agreed. I don't think anyone part of the alliance takes any of
this lightly. If you do -- let us know.

> Maybe this is something that should be on the Conservancy's web site,
> along with a list of those copyriht holders who have already agreed to
> support the Conservancy?

A few can and have publicly done this already, for obvious reasons,
some prefer for this to not be disclosed. Its not different than the
corporate mumbo jumbo stuff.

  Luis
