Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3AE60CB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 02:54:38 +0000 (UTC)
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8795170D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 02:54:37 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t19-v6so2540011ply.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 19:54:37 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Laura Abbott <labbott@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<2c3b5669-bf03-326e-e61a-73100c141857@roeck-us.net>
	<71cd50f3-9cd8-9d88-b8f2-cb5eca1f1133@redhat.com>
	<fb1fb268-6198-627f-deea-5b83d0fffddc@roeck-us.net>
	<ac3db59e-d352-8e1c-1d70-44d63de8b2eb@redhat.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <29e25677-f840-dc0d-9577-49611f95b17d@roeck-us.net>
Date: Tue, 4 Sep 2018 19:54:34 -0700
MIME-Version: 1.0
In-Reply-To: <ac3db59e-d352-8e1c-1d70-44d63de8b2eb@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/04/2018 06:45 PM, Laura Abbott wrote:
> On 09/04/2018 04:35 PM, Guenter Roeck wrote:
>> On 09/04/2018 03:06 PM, Laura Abbott wrote:
>>> On 09/04/2018 02:49 PM, Guenter Roeck wrote:
>>>> On 09/04/2018 01:58 PM, Laura Abbott wrote:
>>>>> I'd like to start a discussion about the stable release cycle.
>>>>>
>>>>> Fedora is a heavy user of the most recent stable trees and we
>>>>> generally do a pretty good job of keeping up to date. As we
>>>>> try and increase testing though, the stable release process
>>>>> gets to be a bit difficult. We often run into the problem where
>>>>> release .Z is officially released and then .Z+1 comes
>>>>> out as an -rc immediately after. Given Fedora release processes,
>>>>> we haven't always finished testing .Z by the time .Z+1 comes
>>>>> out. What to do in this situation really depends on what's in
>>>>> .Z and .Z+1 and how stable we think things are. This usually
>>>>> works out fine but a) sometimes we guess wrong and should have
>>>>> tested .Z more b) we're only looking to increase testing.
>>>>>
>>>>> What I'd like to see is stable updates that come on a regular
>>>>> schedule with a longer -rc interval, say Sunday with
>>>>> a one week -rc period. I understand that much of the current
>>>>> stable schedule is based on Greg's schedule. As a distro
>>>>> maintainer though, a regular release schedule with a longer
>>>>> testing window makes it much easier to plan and deliver something
>>>>> useful to our users. It's also a much easier sell for encouraging
>>>>> everyone to pick up every stable update if there's a known
>>>>> schedule. I also realize Greg is probably reading this with a very
>>>>> skeptical look on his face so I'd be interested to hear from
>>>>> other distro maintainers as well.
>>>>>
>>>>
>>>> For my part, a longer -rc interval would not help or improve the
>>>> situation. Given the large number of security fixes, it would
>>>> actually make the situation worse: In many cases I could no longer
>>>> wait for a fix to be available in a release. Instead, I would have
>>>> to pick and pre-apply individual patches from a pending release.
>>>>
>>>
>>> Fedora does this already. We frequently carry patches which have
>>> not yet made it into a stable release. Sometimes they only stay
>>> around for one release but we've had ones that stayed around for
>>> multiple releases.
>>>
>> Sure, but having to pull them from release candidates adds additional
>> work and increases risk.
>>
>>>> I like the idea of having (no more than) one release per week with
>>>> the exception of security fixes, but longer -rc intervals would be
>>>> problematic.
>>>>
>>>
>>> Security fixes are an interesting question. The problem is that
>>> not every security issue is actually equal and even patches
>>> that fix CVEs can cause regressions.
>>>
>>
>> We do have a pretty well defined process for handling CVEs depending
>> on their severity. The preferred handling for all CVEs is to get the
>> fixes through stable releases.
>>
> 
> Yes, I agree CVEs should eventually go through a stable release
> for the same reason all fixes are security fixes. There's also a
> difference between a CVE that should be picked up urgently and one that
> can be applied as part of a regular update cycle.
> 
>> As for regressions, only a system with no patches applied is safe from
>> regressions. Otherwise regressions are unavoidable. The key is to improve
>> testing to a point where the pain from regressions is acceptable.
> 
> This may just be kernel tree philosophy but I'm not sure any regression
> in the stable tree should be acceptable. In Greg's blog post
> http://www.kroah.com/log/blog/2018/08/24/what-stable-kernel-should-i-use/
> he suggested "Server: Latest stable release or latest LTS release"
> I don't think anyone wants their server regressing. I've talked
> with the CoreOS team about their experience using stable kernels
> and it gets tricky to convince users to update when there are
> regressions.
>

I understand that philosophy very well. Each and every regression is an argument
to not use stable releases in the first place. We have been there. My solution
is to do everything I can to improve testing to the point where regressions
are all but non-existent.

However, realistically, there will _always_ be regressions, and some of them
_will_ be found post-release. If zero regressions is your absolute must-have
condition for a release, the only guaranteed means to accomplish that is to
make zero changes in that release.

I am not saying that regressions are futile. Yes, we have regressions,
and, yes, we have to get better in catching them. However, I don't think
that changing the process will provide a solution. We will have to further
improve test coverage instead.

At the same time, I do realize that even a regression rate of 0.01% will
be used as argument against stable releases. I don't think there is anything
we can do about that.

Only looking at regressions provides an extremely lop-sided view of stable
release quality. The "There Shall Be No Regressions" crowd tends to ignore the
benefit of getting lots of bug fixes. Look at it that way - for each regression,
today, one gets close to a thousand bug fixes. Realistically, I think that is
pretty good. Not good enough, maybe, but pretty good.

Which leads to another point: People complaining about regressions tend to forget
how things looked like just a few years ago, when stable releases were all but
untested. Five years ago, today's regression rate would have been a dream.

Guenter
