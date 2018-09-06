Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 180AA10BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:35:23 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A77F70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:35:22 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id e23-v6so10180901lfc.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 13:35:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVuMEVuUt3AFE3YLMpz5+r2KUcxBBtae8egLpw+20X7AA@mail.gmail.com>
References: <1536263073.6012.3.camel@HansenPartnership.com>
	<CAKMK7uFHOP+shcnAdHEEELOth+d3BR0LdUZ9rXdrhYueHdqF9A@mail.gmail.com>
	<1536263475.6012.5.camel@HansenPartnership.com>
	<CAMuHMdVuMEVuUt3AFE3YLMpz5+r2KUcxBBtae8egLpw+20X7AA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 6 Sep 2018 13:35:19 -0700
Message-ID: <CAOesGMgpXaPDn7gPWXdHJ1+_2UWPYDhDckni4CTqvZBLP79yzw@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] Succession Planning: Is It
 time to Throw Linus Under a Bus?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 1:06 PM, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Thu, Sep 6, 2018 at 9:51 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
>> On Thu, 2018-09-06 at 21:47 +0200, Daniel Vetter wrote:
>> > On Thu, Sep 6, 2018 at 9:44 PM, James Bottomley
>> > <James.Bottomley@hansenpartnership.com> wrote:
>> > > Since our fearless leader apparently can't even remember the dates
>> > > of
>> > > the only conference he goes to, perhaps now might be a good time to
>> > > talk about how we'd run an orderly succession process (purely
>> > > theoretically, of course ...)
>> > >
>> > > I think a vote amongst the Maintainer Summit attendees might be the
>> > > way
>> > > to elect a new leader, but others probably have different ideas.
>> >
>> > Why I single leader?
>> >
>> > This group maintainer ship thing ... it  works.
>>
>> Well, lets talk about that.  I like the single leader model because it
>> doesn't lead to the cabal cult like the group maintainer model does in
>> BSD.  However, if we have a plan that can avoid that, I think it would
>> be a reasonable thing to try out.

Group maintainership can be dysfunctional, just like single
maintainers can be. And pockets of cabals exist already in some areas.

Worst case is probably selecting a single maintainer that turns out to
be a bad choice, and be stuck. With groups, it's easier to adjust if
needed.

I'd argue that having a group would be substantially more robust,
especially since the pool of people are likely to come from industry
and not just LF. We're all pretty good at leaving company politics and
influence out of our community work, but it's still desirable to have
a bit of balance in the higher maintainer roles.

>> I also note that group maintainership seems only to work for you in
>> DRM; most of the other subsystems seem to have single leader
>> hierarchical maintainership.
>
> Arm-soc has a triumvirate doing round-robin releases/pull-requests.

x86 is spread among several people as well (in fact, we originally
based arm-soc on their model but over time the practical
implementation has drifted somewhat).


-Olof
