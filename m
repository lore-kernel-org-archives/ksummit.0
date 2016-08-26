Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6493F258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 16:34:03 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE2621AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 16:34:02 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id s207so7329805oie.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 09:34:02 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <1472225332.2751.56.camel@redhat.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
	<CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
	<CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
	<CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 26 Aug 2016 09:34:00 -0700
Message-ID: <CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
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

On Fri, Aug 26, 2016 at 8:28 AM, Rik van Riel <riel@redhat.com> wrote:
> On Thu, 2016-08-25 at 22:24 -0700, Linus Torvalds wrote:
>>
>> What matters are the people - and companies - that actually develop
>> and contribute code, and make the future happen.
>
> Are you saying that the freedom of end users
> to modify the software running on their Linux
> devices is irrelevant?

Irrelevant? No. And are companies who violate the license a good thing? No.

But they really don't make a difference. In a very literal sense. They
aren't improving the code - even in the hidden product itself.

And the lawsuits definitely drove more people *away* from busybox (and
in a very real sense the GPL) than producing more useful source code.
So the lawsuits didn't actually help.

> The downstream freedoms seem to be generating
> new upstream communities all around us, for
> example OpenWRT.

And I call bullshit. Anybody who tries to point to the lawsuits and
say that they were a big factor in the success of OpenWRT is actively
ignoring all the other - and hugely *bigger* factors - in the
successes of OpenWRT.

That's the whole point. Even if you get some improvements, if you do
that while dismissing all the absolutely _huge_ negatives, you're not
doing good. You are making things worse.

The things that helped OpenWRT _enormously_ were things like

 (a) the general success of open source (over the FSF hardliner GPL stance).

Seriously.

Anybody who dismisses this historical fact either just crazy or blind.

The rms and the FSF actively pushed the whole industry away from the
GPL (and they still do). The reason you find lots and lots of
companies using the GPL and other open source today is very much the
fact that the groups that pushed "open source" instead of "free
software" were successful in showing companies how this was actually a
better development model, and in showing how you get such incredible
returns from participating in the process.

There are a lot of people talking up the advantages of the BSD license
in the industry. And it's not because they don't believe in giving
back - this is inside companies that rely on and love open source.
It's because they can't work with the crazies.

Really. Anybody who argues differently is deluded.

I don't actually think you are that deluded.

 (b) the "good guys".  The companies that actually ended up helping
(or at not least hindering - I'm not trying to delide myself either,
and a lot of companies are still pretty neutral and not actively
participating even if they are then happy to be in compliance).

Yeah, many of the good guys definitely needed nudging too. In fact,
most of them did. Most companies that we today consider some of the
biggest supporters of Linux have not necessarily always done the right
thing in the past.

I'm sure you've had many of the same discussions that I have had with
other open source people working in various places who are sharing
horror stories about how some project was a nightmare and parts of the
company was doing bad things.

So even the good companies tend to have their warts.

But don't tell me you don't drive 5mph over the speed limit or jaywalk
or do other illegal things every once in a while. Nobody is *that*
clean.

So there's been lots of nugding and discussions and talking to people
going on when companies sometimes need encouragement to behave well.
And public shaming too - I think the things that Matthew does when he
points out truly crap hardware or horrible security issues are
*wonderful*.

But the way those things have been successful has been by making
friends, not enemies. It's been by nudging people, not threatening
them with lawsuits (or by bringing them).

There's been a lot of people who have gone to companies, and tried to
explain why they should do the right thing. I've done so. I'm pretty
sure Greg has done so even more. There are lots and lots of people who
really have done a lot of nudging. And I can pretty much guarantee
that they'll all say that the lawsuits have made it _harder_ to do
those things, not easier.

When lawyers get involved, companies go into "turtle" mode, and just
pull everything inside the shell of the legal stuff. Just try it. If
you threaten a lawsuit, what you get back is "talk to our lawyers".
Not "let's try to work this out". That's just how things work.

And *THAT* is what I'm arguing.

We need to stop the antagonistic threatening stances, and we need to
stop having lawyers involved, and have people who can actually talk to
companies *without* getting that "turtle" response.

Because that approach really does have a proven track record.  And I'm
pretty sure you know that too.

                 Linus
