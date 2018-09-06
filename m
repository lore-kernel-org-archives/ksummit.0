Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63614BE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 21:37:36 +0000 (UTC)
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9B5E713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 21:37:35 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id r4-v6so10301131lff.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 14:37:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFztYx_jjbOCAJcrnej0Vq+S_0a+QZTbkcm9G1fJEn5_pg@mail.gmail.com>
References: <1536263073.6012.3.camel@HansenPartnership.com>
	<CA+55aFysTUkDByFx-dy=jz9OGURgUO=pTt_hUzOOBm7noNr9zg@mail.gmail.com>
	<1536267088.6012.7.camel@HansenPartnership.com>
	<CA+55aFztYx_jjbOCAJcrnej0Vq+S_0a+QZTbkcm9G1fJEn5_pg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 6 Sep 2018 14:37:32 -0700
Message-ID: <CAOesGMh8oni1GASydd5K=tN8Q-YkMkSooka5qT4-KUJQFa488A@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Sep 6, 2018 at 1:59 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, Sep 6, 2018 at 1:51 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
>>
>> It's happened occasionally, but it's not very traditional.  Usually
>> when people do a palace coup replacement, the tumbrels are waiting
>> outside to cart the old dictator off to their sticky end.
>
> This has taken a dark turn.
>
> I do want to point out that I brought the question up last year on the
> spot. I didn't get any reaction then. I was thinking me not being
> around would have been more conducive to discussion. But whatever.

Assuming here that the discussion is NOT about a coup-style immediate
takeover, but instead either:
1) Start sharing more work so that you can scale back sometimes, go
dive without worrying about internet connectivity etc.
or:
2) Prepare for disaster.

I know you have yourself said you don't care what happens in case of
(2) since you won't be around, but I think the best approach is to get
there through (1), if possible.

My suggestion if you want this: Have someone start out doing some of
the simpler mechanics, starting with merging non-controversial fixes
during non-merge window for a cycle or two, and take it from there. It
could even initially be a rotation where a few people try it out for a
bit of time. Some might realize they hate it and should be able to
change their minds without losing face.

I think it was two years ago you proposed having someone else
substitute for a bit, but I don't know if anyone ever volunteered?

You will probably need to approach some of the people you'd trust
enough to do it. Some might find it too intimidating, mistakes are
going to be fairly visible, and I doubt too many will be excited to
volunteer and be turned down, in particular if due to lack of trust.

I think all of that will be easier than finding a new solo maintainer
available at the strike of disaster -- but even if that's what the
goal is, having said person spin up in the same way (i.e. a group of
two for now), seems like the most robust approach.


-Olof
