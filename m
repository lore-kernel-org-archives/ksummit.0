Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B28EDCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 10:05:51 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6827F8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 10:05:50 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id h3-v6so12351575ita.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 03:05:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uH54r6UATpEsVDT6VpBUe8FuwsXVy1mBzC3SWSVRax-7g@mail.gmail.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<20180918094332.2c0d066a@gandalf.local.home>
	<2926975.6qOp4mHNDQ@aspire.rjw.lan>
	<CAKMK7uH54r6UATpEsVDT6VpBUe8FuwsXVy1mBzC3SWSVRax-7g@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Sep 2018 12:05:48 +0200
Message-ID: <CAKMK7uFoNUGeWDb+TDN1+0X9+L6dh9Xz-wY2kpqimq_DnW=P=g@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 20, 2018 at 11:53 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Thu, Sep 20, 2018 at 11:12 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>> On Tuesday, September 18, 2018 3:43:32 PM CEST Steven Rostedt wrote:
>>> On Tue, 18 Sep 2018 15:55:23 +1000
>>> Dave Airlie <airlied@gmail.com> wrote:
>>>
>>> > I think there might be place for a report from the people who did sign
>>> > off the CoC about the thoughts/process involved in updating it (and/or
>>> > urgency) to the rest of the Maintainer group.
>>> >
>>> > Now I understand that having a public talk about such a thing will
>>> > likely descend into farce, there may be scope for something of a
>>> > Chatham House Rule style meeting, or just a non-recorded, non-public
>>> > session like we've done for sensitive subjects are previous kernel
>>> > summits.
>>>
>>> I believe this topic merits a discussion at Maintainer's Summit. It can
>>> probably be much more productive face to face with several maintainers
>>> in one room than what would result in a mailing list (both public and
>>> private) discussion.
>>>
>>> I'm willing to lead this if nobody else wants to do it.
>>>
>>>   (I don't know why I do this to myself)
>>>
>>>
>>> >
>>> > It might just be a readout from a similar meeting at Edinburgh summit
>>> > (maybe someone else can propose that), or maybe some sort of Q&A
>>> > session. Maybe Linus could record a piece to camera for the
>>> > maintainers that can't make Edinburgh, but would still like to
>>> > understand where everything currently sits. Said piece would of course
>>> > be burned afterwards.
>>>
>>> I would like to get an honest opinion from everyone involved, and
>>> remove any of the ambiguities that people still have.
>>>
>>> >
>>> > After the past 2-3 days I get the feeling there are maintainers unsure
>>> > about how this affects them and I think assuaging those fears might be
>>> > a good thing.
>>>
>>> Agreed.
>>>
>>> >
>>> > I'm also equally happy nailing the lid back on the can of worms and
>>> > never discussing it again.
>>>
>>> No no, the can is now open and you have released the worms ;-)
>>
>> Well, let's just pick one for that matter.
>>
>> Can anyone explain the exact meaning of the "Our Responsibilities" section of
>> the new CoC to me, please?
>>
>> Like what *exactly* am I expected to do, as a subsystem maintainer, when I spot
>> "unacceptable behavior" on a mailing list or elsewhere?  What would be generally
>> regarded as a "fair corrective action", in particular?
>
> We have a few years of operational experience on this in dri-devel
> (since defacto the fd.o CoC just encoded existing informal community
> norms of the drm subsystem). Generally what we do is send a public
> reply, pointing out what's problematic, quickly explaing why, and
> that's it. Generally, what happens then is a "oh right, that was too
> much, apologies" reply.
>
> If the problematic behaviour doesn't stop, tougher measure might be
> necessary. In some cases also a private chat helps a lot, when people
> never really thought about some topics and issues before.
>
> It's also important to note that this isn't just done by maintainers,
> but by (generally more senior) contributors all around.
>
> For a working community, where the CoC is solidly established (like I
> think it is on dri-devel), the next-level fd.o team essentially only
> serves as appeals body.
>
>> Also, the second paragraph in there openly suggests that maintainers are now
>> expected to reject contributions from the people who behave inappropriately
>> in their view.  Does this mean that I'm expected to reject correct code changes
>> (maybe including bug fixes and maybe even security-critical ones) from a person
>> whose behaviors "deem inappropriate, threatening, offensive, or harmful" in
>> my view?
>
> Ultimately, yes. On dri-devel we didn't yet have to pull out that
> threat yet. If you look at other communities, a permanent ban (which
> is what you defacto do if you reject all contributions from someone)
> is an extremely rare measure.
>
> What we have done is temporarily suspend people's commit rights, so
> they can cool down a bit. Or making it clear that we might remove them
> from maintainer duties. The amount of damage a maintainer/committer
> can do is much bigger than someone just submitting patches, so usually
> that's all that's needed. All while making it clear that their
> contributions are still very much welcome. But someone who really only
> wreaks a massive wake of destruction, even if their patches themselves
> are fine, will be thrown out completely from dri-devel. Just not worth
> to deal with.

Slightly more high level take: CoC enforcement is a skill like any
other. Takes a bit of learning and practice to get good enough at it.
There's also lots of people offering trainings, to walk through very
specific scenarios and discusss all these details. This might be
something we should consider for kernel summit.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
