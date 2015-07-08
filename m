Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B743ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 17:24:21 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5EC301EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 17:24:20 +0000 (UTC)
Message-ID: <559D5CBA.4080703@roeck-us.net>
Date: Wed, 08 Jul 2015 10:24:10 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Kevin Hilman <khilman@kernel.org>
References: <20150707092434.GE11162@sirena.org.uk>	<559BEF61.8050904@roeck-us.net>	<1436347639.29626.4.camel@ellerman.id.au>	<559D2B02.9020508@roeck-us.net>
	<7hlheqfvqo.fsf@deeprootsystems.com>
In-Reply-To: <7hlheqfvqo.fsf@deeprootsystems.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/08/2015 09:40 AM, Kevin Hilman wrote:
> Guenter Roeck <linux@roeck-us.net> writes:
>
>> Hi Michael,
>>
>> On 07/08/2015 02:27 AM, Michael Ellerman wrote:
>>> On Tue, 2015-07-07 at 08:25 -0700, Guenter Roeck wrote:
>>>> On 07/07/2015 02:24 AM, Mark Brown wrote:
>>>>> One thing we typically cover at Kernel Summit is some of the activity
>>>>> that's going on around testing upstream.  I think it'd be useful to have
>>>>> some more of those discussions, both in terms of making people aware of
>>>>> what's available and in terms of helping the people doing testing figure
>>>>> out what would be useful.  A lot of this is probably well suited to a
>>>>> workshop session between the interested people but I do think some
>>>>> element in the core day beyond just a readout will be useful.
>>>>>
>>>>> In terms of discussion topics some of the issues I'm seeing are:
>>>>>
>>>>>     - Can we pool resources to share the workload of running things and
>>>>>       interpreting results, ideally also providing some central way for
>>>>>       people to discover what results are out there for them to look at
>>>>>       for a given kernel in the different systems?
>>>>
>>>> That might be quite useful. However, I have seen that it doesn't really
>>>> help to just provide the test results. kissb test results have been
>>>> available for ages, and people just don't look at it.
>>>
>>> My concern with kisskb sending emails was always that I didn't want it to
>>> become a spam bot. So it can send emails, but it's opt-in.
>>>
>>> The 0-day bot takes the opposite approach, ie. mails everyone without asking,
>>> and in hindsight that is clearly the better option in terms of getting people
>>> to act on the results.
>>>
>>>
>>>> Sharing as many test bot configuration scripts and relevant configurations
>>>> as possible would be quite helpful. For example, I am building various
>>>> configurations for all architectures, but I don't really know if they
>>>> are relevant.
>>>
>>> Agreed. Your buildbot is epic. I'd love to see the config for that. My local
>>> buildbot is running only ~40 builders, which I thought was a lot until I saw
>>> yours :)
>>>
>> It is on github: https://github.com/groeck/linux-build-test.
>>
>> If I count correctly, it runs more than 900 builders. Major hiccup is with
>> caching - it collects around 10GB of logging data per month, and under
>> some circumstances keeps it all in memory, so after about two months it
>> consumes the entire 32GB of RAM on the server it is running on, and I have
>> to do some manual cleanup. Other than that, it runs surprisingly well.
>
> How soon after a branch is pushed are the build results available?
>

Depends on the branch and the load on the system. Building a single branch takes
maybe - I am guessing here - 90 minutes. If several branches are changed at the
same time (like when Greg pushes changes into the -stable branches he manages),
the overall build time is multiplied with the number of branches to build.

In addition to that, each branch has a different set of rules. I only pull mainline
a couple of times per week, because it changes too much and by itself would keep the
system busy all the time. -next is pulled once per day, as is -mmotm. Plus, I have
a number of different methods on how to handle changes. For example, Greg tends
to push many changes into -stable queues within a short period of time, resulting
in a lot of build churn if I would start builds immediately after a change is detected.
So if a change on a -stable branch maintained by Greg is detected, the system waits
for a couple of hours before actually starting a build to reduce churn. Other branches
see less churn; -mmotm and -next are built almost immediately after a change is detected,
for example.

In a nutshell, it can take anytime between about two hours and about three days
for results to be available, depending on the branch and the load on the system.

> Are the build artfiacts ([bz]Image, System.map, modules, etc.) made
> available someplace?
>
Not currently. I could make it available if there is interest, though I'd
probably have to find some place out in the web to keep the data (we are talking
16 branches times ~150 builds per branch times the number of builds kept in the log).
If I assume that five builds are kept per branch, and each build takes only 10MB
of space, this already adds up to more than 100 GB of space needed, plus of course
all the associated net bandwidth. There are a couple of sites pulling the complete
build history from my servers on a daily basis (happily ignoring robots.txt),
so that might end up consuming a lot of bandwidth.

>>> The kernelci.org stuff is also really interesting, that's the closest thing
>>> anyone has at the moment to a "proper" kernel CI setup AFAIK.
>>
>> Agreed.
>
> Glad you find it useful.
>
> Speaking for kernelci.org... with limited time/resources, we'd like to
> focus less on building (others are doing this faster/better) and more on
> boot testing across a wide variety of hardware (e.g for the latest -next
> build, we did ~430 boots on 88 unique boards covering 23 different
> SoCs[1]).  We're also in the process of automating kselftest runs on our
> boards.
>
> If we could consume the output of other builders, we'd happily do that
> instead of doing our own builds.  Ideally, the builders should produce
> some sort of machine readable data with the build artifacts..  Currently
> our builders produce a JSON file[2] which can be submitted to
> kernelci.org using a RESTful API[3].
>
Unfortunately, I had to disable JSON on my buildbot installation.
Reason is again that there are sites pulling the entire build history
on a regular basis, and my server ended up getting stuck doing nothing
but serving JSON requests (those take a lot of CPU).

Guenter
