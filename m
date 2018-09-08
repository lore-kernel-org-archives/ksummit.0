Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2251CF2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 12:21:21 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 28E6670D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 12:21:21 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id 139-v6so23182299itf.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 08 Sep 2018 05:21:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180908074708.249571f4@coco.lan>
References: <1536263073.6012.3.camel@HansenPartnership.com>
	<CAKMK7uFHOP+shcnAdHEEELOth+d3BR0LdUZ9rXdrhYueHdqF9A@mail.gmail.com>
	<1536263475.6012.5.camel@HansenPartnership.com>
	<20180908074708.249571f4@coco.lan>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 8 Sep 2018 14:21:19 +0200
Message-ID: <CAKMK7uGh6BLc8Mmq7R5t29L+6emshkWMJd91kGQrhbCmi2pz4Q@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
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

On Sat, Sep 8, 2018 at 12:47 PM, Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
> Em Thu, 06 Sep 2018 12:51:15 -0700
> James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
>
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
>> I also note that group maintainership seems only to work for you in
>> DRM; most of the other subsystems seem to have single leader
>> hierarchical maintainership.
>
> If we're seriously thinking on have a plan for maintainership
> replacement with a group, we need first to answer:
>
>         Q: How many Kernel developers does it take to replace Linus?
>
> That's said, I doubt that the DRM model would work outside DRM
> subsystem: too many people with commit rights can be hard, specially
> if they all can touch the core. Btw, we tried a similar model in
> the past on media (by the time we were using Mercurial, about
> 10 years ago): all core developers had commit rights. It worked
> smoothly for years, until one of the developers decided
> to commit a very intrusive patch touching all drivers at the
> subsystem and stepping on everyone else feet. Handling it was
> really painful. If our official model would be a group
> maintainership, it would probably take months for us to put the
> tree on a sane state. I ended by using my maintainership status
> to revert the patch, returning the tree to a sane state and allowing
> the others to keep sending patches. Yet, it took months, even
> years for us to recover from the disaster. Also, due to the
> heated discussions, we end by losing several developers due
> to that.

I'm not advocating for a committer model at the top level, but it
would be awesome if people bothered to look at the talks and blogs
we've done about what we're actually doing with commit rights, instead
of making assumptions. We don't just throw out commit rights like hot
candy, since that indeed is bound to fail. Instead:

- We have clearly documented merge criteria, and as much of that as
possible enforced using tooling.
- One of those is mandatory review, no one is allowed to do anything solo.
- We have massive CI, available to all contributors automatically -
that gives us mandatory in-depth testing way before committing is even
on the table.
- And finally we have a CoC to just ban people who don't get it and
cant work together in a group
- a bunch of smaller things all over to make it fit together

I know that the commit right thing is very radical by kernel
standards. But outside of the kernel, "how to make commit rights work"
is largely a solved problem. Of course if you ignore that trove of
experience from other open source projects, then you're bound to
repeat all the fail, no surprises.

Apologies for the interlude, back to the topic (which is apparently
... throwing Linus under the bus?!?).
-Daniel

> A triumvirate like x86 and arm might work, but I suspect that it
> would be easier to start with a more hierarchical model, like
> for example having one (sub-)maintainer for arch, another
> one for core and a third one for drivers.
>
> Also, if we want to consider the bus scenario and other disaster
> threats, it could be worth to consider having them geographically
> distributed (if possible even on different Countries).
>
> Thanks,
> Mauro



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
