Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6DBD6BB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 00:50:49 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E3222138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 00:50:48 +0000 (UTC)
Message-ID: <559C73DF.2030008@roeck-us.net>
Date: Tue, 07 Jul 2015 17:50:39 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
In-Reply-To: <2102387.OD8sBG4Eol@avalon>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>
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

On 07/07/2015 04:49 PM, Laurent Pinchart wrote:
> Hi Peter,
>
> On Wednesday 08 July 2015 01:21:40 Peter Huewe wrote:
>> Hi,
>>
>> In order to continue our traditions I would like to propose again the topic
>> of recruitment, but this time not only limiting to the hobbyists market.
>>
>> We are definitely short on reviewers and thus have mostly overloaded
>> maintainers.
>
> I was about to propose a related core topic.
>
> The reviewing and maintainership process seems to have a hard time scaling to
> the amount of contributions we receive, to the point where even well known and
> respected kernel developers get discourages.
>
> Quoting http://www.spinics.net/lists/cpufreq/msg10609.html,
>
> --------------------------------
>> I'm trying to convince management that one of the advantages
>> of mainlining the port is that it is easier to switch to newer
>> kernels. Do you agree with this assertion?
>
> Yes and no.  If you can get stuff upstream, it should make things
> easier.
>
> The difficult bit - and time consuming bit - is getting code upstream.
> Even in my position, I'd suggest allowing about five years for that
> activity, and even then don't have expectations of getting everything
> upstream.
>
> Frankly now, my advice to people would be to just not bother, it's
> *way* too much effort to get everything to an acceptable state,
> especially if the SoC has no support what so ever.
> --------------------------------
>
> That's a very serious red warning in my opinion.
>
> Throwing more maintainers, co-maintainers or sub-maintainers at the kernel
> won't magically solve this, as the more core developers a subsystem has the
> more difficult it will be for them to synchronize. I would like share
> experience about good practice rules that have proved to be effective.
>
>> For testers it's usually even worse - how many patches are actually tested?
>> Judging from what I read on LKML not that many.
>>
>> So we should definitely discuss:
>> - how can we encourage hobbyists to become regular contributors
>> -- how to keep people interested, the drop-out rates are huge.
>
> We can't keep people interested if even maintainers get discouraged. Solving
> (or at least relieving) that problem won't be enough to keep people
> interested, but it's a prerequisite in my opinion.
>
Problem is multi-dimensional.

Every maintainer has a different style and different preferences.
Even after being a maintainer for multiple years, I find it all but
impossible to get it right for every maintainer if I submit a patch for
some random subsystem. There may be minor coding style differences,
subject line differences, or something else that is really cosmetic.
Just finding the preferences for a specific subsystem can be challenging
and time consuming.

For my part, if I get such a patch, I try to remain friendly and either
fix up whatever I dislike myself (if I have the time and it is truly cosmetic),
or I ask for a respin. Some maintainers less than friendly in such
situations, assume that everyone who doesn't know the perfect style
for a given subsystem are clueless, and respond accordingly.
Not really encouraging.

It happened several times to me that a maintainer rejected one of my patches
for less than obvious reasons. Sure, I could spend the time and try to
convince the maintainer to accept it. Unfortunately, I don't always have
the time to do that. In once recent case, where I did spend the time,
and I thought the maintainer had agreed to accept the patch, I ended up
getting an automated patchwork email telling me that the patch was
deferred indefinitely. Not really encouraging either.

Essentially it takes a lot of time by submitters to gain the trust
of maintainers - and that may even be the case if the submitter is
also a maintainer. Not everyone has that much time (and/or patience).

Is there anything we can do about that ? I honestly don't know.
I know I can be quite stubborn myself, after all, so I can't really
complain and try to take away the right of others to be just as
stubborn as I might be. After all, I don't want to be forced to
accept a patch from some other maintainer either if I think it is
wrong. But am open to suggestions.

Guenter
