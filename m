Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B01B9ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:45:18 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87B6BEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:45:17 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: NeilBrown <neilb@suse.com>
Date: Wed, 08 Jul 2015 22:45:28 +0300
Message-ID: <2879113.fraeuJIr2M@avalon>
In-Reply-To: <20150708114011.3a1f1861@noble>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 08 July 2015 11:40:11 NeilBrown wrote:
> On Tue, 07 Jul 2015 17:50:39 -0700 Guenter Roeck wrote:
> > On 07/07/2015 04:49 PM, Laurent Pinchart wrote:
> >> On Wednesday 08 July 2015 01:21:40 Peter Huewe wrote:
> >>> Hi,
> >>> 
> >>> In order to continue our traditions I would like to propose again the
> >>> topic of recruitment, but this time not only limiting to the hobbyists
> >>> market.
> >>> 
> >>> We are definitely short on reviewers and thus have mostly overloaded
> >>> maintainers.
> >> 
> >> I was about to propose a related core topic.
> >> 
> >> The reviewing and maintainership process seems to have a hard time
> >> scaling to the amount of contributions we receive, to the point where
> >> even well known and respected kernel developers get discourages.
> >> 
> >> Quoting http://www.spinics.net/lists/cpufreq/msg10609.html,
> >> 
> >> --------------------------------
> >> 
> >>> I'm trying to convince management that one of the advantages
> >>> of mainlining the port is that it is easier to switch to newer
> >>> kernels. Do you agree with this assertion?
> >> 
> >> Yes and no.  If you can get stuff upstream, it should make things
> >> easier.
> >> 
> >> The difficult bit - and time consuming bit - is getting code upstream.
> >> Even in my position, I'd suggest allowing about five years for that
> >> activity, and even then don't have expectations of getting everything
> >> upstream.
> >> 
> >> Frankly now, my advice to people would be to just not bother, it's
> >> *way* too much effort to get everything to an acceptable state,
> >> especially if the SoC has no support what so ever.
> >> --------------------------------
> >> 
> >> That's a very serious red warning in my opinion.
> >> 
> >> Throwing more maintainers, co-maintainers or sub-maintainers at the
> >> kernel won't magically solve this, as the more core developers a
> >> subsystem has the more difficult it will be for them to synchronize. I
> >> would like share experience about good practice rules that have proved to
> >> be effective.
> >> 
> >>> For testers it's usually even worse - how many patches are actually
> >>> tested? Judging from what I read on LKML not that many.
> >>> 
> >>> So we should definitely discuss:
> >>> - how can we encourage hobbyists to become regular contributors
> >>> -- how to keep people interested, the drop-out rates are huge.
> >> 
> >> We can't keep people interested if even maintainers get discouraged.
> >> Solving (or at least relieving) that problem won't be enough to keep
> >> people interested, but it's a prerequisite in my opinion.
> > 
> > Problem is multi-dimensional.
> 
> Indeed!  I wonder if we can list the dimensions.
> 
> Variability: as you say, different people want different things, and
>    care to different degrees about them.  'checkpatch' and
>    'CodingStyle' help with some of that (though different people care
>    differently about checkpatch).  Maybe the MAINTAINERS file could
>    list the preferred Subject: line and checkpatch flags for each
>    maintainer.  Then we just need to herd all those wild-cats towards
>    updating their maintainers entry.

I've seen maintainers who want to be CC'ed on every patch touching their 
subsystem, and others who prefer patches being sent to the mailing list only. 
That would be easy to express in MAINTAINERS and would already help in two 
fronts. It would lower the amount of noise for maintainers who base their work 
flow on mailing lists. It would also remove the need for submitters to decide 
whether to CC maintainers and prevent patches from falling through cracks when 
the decision is incorrect.

>    I feel there is a related issue that might be called "Policy",
>    though maybe it is a separate issue. There are a lot of areas where
>    the "right" thing to do from a design perspective isn't really clear.
>    "devicetree" "driver model" "sysfs attributes" "system call or
>    virtual filesystem" "socket or char-device" all come to mind as
>    being areas where different intelligent people differ.  To a large
>    extent they don't really matter as long as there is consistency.
>    In areas where Linus cares, he can force consistency (if he
>    notices).  But I think there are a lot of areas where he doesn't
>    care and so it is very hard to find something that is "right".
>    If the maintainer can say "this is wrong, do it this way" then that
>    is useful.  But when all they can say is "uhm. this doesn't seem
>    right but I'm not really sure" it is hard to make progress.  I've
>    had a couple of those recently, and could imagine myself saying that
>    in some circumstances.  So: a technical committee to resolves
>    unclear questions of design.  They are right, be definition, even
>    when they are wrong.

Maintainers are already busy as it is, I can't imagine how a technical 
committee could scale. We tried it for device tree bindings by appointing DT 
maintainers, and we can't really say it was a success.

I don't see anything seriously wrong with maintainers being honest and telling 
they don't know. Sometimes a task requires getting off the beaten tracks, 
that's just the way it is. Maintainers are not supposed to have answers for 
every question.

What bothers me more is the situation where patches get submitted, reviewed 
and updated several times, and then another developer notices the activity and 
requests a completely different approach. If that approach is bogus it's easy 
to dismiss it, but if it isn't the submitter will quite often get discouraged, 
and time will be wasted. I wonder if we could improve that situation, maybe 
with mechanisms that would make it easier for developers/reviewers to notice 
development activities they care about. I doubt I'm the only one who can't 
find time to follow all the mailing lists relevant to the subsystems I work 
with.

> Busy-ness:  maintainers are busy people.  Some tools can help with that,
>    some tools can hinder it.  There is no way to find if your
>    maintainer is annoyed at you or just busy (I respond much the same
>    way in both conditions).  A social network tools that tells everyone
>    "Neil's current state is: grumpy".

Would you really update that status when you get grumpy ? Maybe we need a 
brain reading device to automate the process ;-)

> Competence:  I don't mean "in-" here.  But maintainers tend to get to
>    be maintainers because they were good at something else, and not
>    good enough at hiding from the "maintainer" role.  There is a
>    paradox here as a maintainer must be good at saying "No", but if
>    they were they might never have agreed to become a maintainer.
>    Is the kernel community big enough that we need "professional
>    maintainers" (other than GregKH and akpm)?  People who can sift the
>    wheat for that chaff, know enough about most subsystems that they
>    can make sensible comments and recommendations, and have the
>    patience to shepherd things along.
>    People who have the authority to bypass the technical maintainer if
>    said maintainer isn't being responsive.
> 
> Other dimensions?
> 
> NeilBrown
> 
> > Every maintainer has a different style and different preferences.
> > Even after being a maintainer for multiple years, I find it all but
> > impossible to get it right for every maintainer if I submit a patch for
> > some random subsystem. There may be minor coding style differences,
> > subject line differences, or something else that is really cosmetic.
> > Just finding the preferences for a specific subsystem can be challenging
> > and time consuming.
> > 
> > For my part, if I get such a patch, I try to remain friendly and either
> > fix up whatever I dislike myself (if I have the time and it is truly
> > cosmetic), or I ask for a respin. Some maintainers less than friendly in
> > such situations, assume that everyone who doesn't know the perfect style
> > for a given subsystem are clueless, and respond accordingly.
> > Not really encouraging.
> > 
> > It happened several times to me that a maintainer rejected one of my
> > patches for less than obvious reasons. Sure, I could spend the time and
> > try to convince the maintainer to accept it. Unfortunately, I don't
> > always have the time to do that. In once recent case, where I did spend
> > the time, and I thought the maintainer had agreed to accept the patch, I
> > ended up getting an automated patchwork email telling me that the patch
> > was deferred indefinitely. Not really encouraging either.
> > 
> > Essentially it takes a lot of time by submitters to gain the trust
> > of maintainers - and that may even be the case if the submitter is
> > also a maintainer. Not everyone has that much time (and/or patience).
> > 
> > Is there anything we can do about that ? I honestly don't know.
> > I know I can be quite stubborn myself, after all, so I can't really
> > complain and try to take away the right of others to be just as
> > stubborn as I might be. After all, I don't want to be forced to
> > accept a patch from some other maintainer either if I think it is
> > wrong. But am open to suggestions.

-- 
Regards,

Laurent Pinchart
