Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B893AEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 31 Oct 2017 19:28:25 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D4F39A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 31 Oct 2017 19:28:24 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id n137so1228169iod.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 31 Oct 2017 12:28:24 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CAL_Jsq+sHCAAzcQH3piRquiSWCjMdXwbk_XtzMp8n5+Td1OCgw@mail.gmail.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
	<1508888508.1955.16.camel@perches.com>
	<CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
	<CAL_Jsq+sHCAAzcQH3piRquiSWCjMdXwbk_XtzMp8n5+Td1OCgw@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Tue, 31 Oct 2017 12:28:21 -0700
Message-ID: <CAGXu5jLS-SqH3U_NZEi0U1qgz+=gfAZh_0t2E+2ny6zq_29bmQ@mail.gmail.com>
To: Rob Herring <robherring2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 31, 2017 at 12:19 PM, Rob Herring <robherring2@gmail.com> wrote:
> On Tue, Oct 24, 2017 at 7:54 PM, Kees Cook <keescook@chromium.org> wrote:
>> On Tue, Oct 24, 2017 at 4:41 PM, Joe Perches <joe@perches.com> wrote:
>>> On Tue, 2017-10-24 at 16:03 -0700, Kees Cook wrote:
>>>> On Fri, Oct 6, 2017 at 8:27 AM, James Bottomley
>>>> <James.Bottomley@hansenpartnership.com> wrote:
>>>> > On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
>>>> > > Appendix: Other topics that were brought up
>>>> > > [...]
>>>> > > Developing across multiple areas of the kernel
>>>> >
>>>> > I've got a couple of extra possibilities
>>>> > [...]
>>>> > 2) Trivial patches (again).
>>>>
>>>> Given that the "trivial patches" topic's discussion ended up boiling
>>>> down to a discussion about developing across multiple areas of the
>>>> kernel, maybe we should make space for a "tree-wide changes"
>>>> discussion? Even after the earlier thread about it, I tripped all over
>>>> this in the last couple months while doing timer conversions, so I
>>>> would at least have some more strong opinions on the subject. ;)
>>>
>>> It's a ripe area (like months old limburger cheese) for discussion.
>>>
>>> There's currently no good way to do tree-wide changes.
>>
>> Some things stand out for me:
>>
>> 1) I would like a standard way to distinguish patch submissions
>> between "please ack this (it's going into my tree)" and "please apply
>> this to your tree." I have tried post-"---"-line notes, cover letter
>> notes, etc, and maintainers still miss it. It can sometimes be very
>> disruptive (to both me and the maintainer) to have a maintainer take a
>> patch out of the middle of a series that was intending to land via a
>> different tree. Would "[ACK-PLEASE][PATCH]" be sufficient? Or
>> "[MY-TREE]" or something?
>
> I've used To vs. Cc to distinguish that, but that seems to be not
> explicit enough.

Yeah, same for me.

> Perhaps a "Needs-Acked-by:" tag. That would have the advantage of
> being stored in the commit rather than having to be added when
> sending. It's also easy for the person needing to ack it to filter for
> it. The more we can automate the process from having a git branch of
> commits to sending mails, the less variation we have and the easier it
> will be for new people.

I tend to be faced with not knowing which person I need for an Ack. :P

The idea proposed at Kernel Summit was to add a new subject tag
"Request for Ack", as:

[RFACK][PATCH] subsystem: title...

>> 2) When you have a 200+ patch series, it is outrageously difficult to
>> figure out where to send things. The MAINTAINERS file is at best an
>> approximation. I use a subset of the get_maintainer output plus my own
>> parsing of MAINTAINERS to try to organize patches. The results tend to
>> be somewhat okay, but there are still bouncing addresses, or MIA
>> maintainers. And then a patch isn't met with silence, it might get met
>> with an "Ack", but no attention from a committer. Having a
>> representation of the "tree" of maintainership would be much more
>> helpful. In other words, for every section with an "M:" line, also
>> something "U:" ("upstream"?) that indicates either another section or
>> a person that is the "upstream" for that maintainer. This would allow
>> for a sane set of "Cc"s not based on git log guessing, and provide an
>> obvious "escalation" path in the face of silence (or uncommitted
>> Acks).
>
> I think distinguishing between subsystem maintainers and maintainers
> of individual things (e.g. a driver) would be good. I think that's
> what you are saying. Ideally, that distinction would make it to the Cc

Yeah, exactly. And time times (wireless comes to mind) you have a
couple levels of maintainers of the "individual thing" maintainers.

> list somehow. I usually add Cc's from get_maintainers.pl to commits,
> but then by the time I'm sending things I may not know who in the list
> has the upstream tree.
>
> The git log guessing is pretty useless for the purpose of Cc'ing
> people and should be off by default IMO. I've touched things tree wide
> a number of times and now get Cc'ed on things I've touched once 3
> years ago.

Yeah, I fear my inbox after timer conversions start landing...

-Kees

-- 
Kees Cook
Pixel Security
