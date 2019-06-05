Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1424ECDE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 19:05:30 +0000 (UTC)
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9046A844
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 19:05:29 +0000 (UTC)
Received: by mail-it1-f196.google.com with SMTP id h9so5266422itk.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jun 2019 12:05:29 -0700 (PDT)
To: Sasha Levin <sashal@kernel.org>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm> <20190603221131.GE2456@sirena.org.uk>
	<6a90bf6c-e9a4-85eb-527c-c4bc3658e779@linuxfoundation.org>
	<20190605131942.GD29739@sasha-vm>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <144cc051-52e8-d6ec-e7fc-6545fc23eab4@linuxfoundation.org>
Date: Wed, 5 Jun 2019 13:05:25 -0600
MIME-Version: 1.0
In-Reply-To: <20190605131942.GD29739@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/5/19 7:19 AM, Sasha Levin wrote:
> On Tue, Jun 04, 2019 at 11:16:17AM -0600, Shuah Khan wrote:
>> On 6/3/19 4:11 PM, Mark Brown wrote:
>>> On Mon, Jun 03, 2019 at 05:10:04PM -0400, Sasha Levin wrote:
>>>
>>>> Would it make sense to do some bikeshedding around how an ideal email
>>>> bug report should look like, and then get syzbot and maybe kernelci to
>>>> switch to using this new format as an experiment?
>>>
>>>> A bunch the syzbot/kernelci/etc folks will be at LPC as well, and we'll
>>>> have the testing & fuzzing MC going on where this can be discussed and
>>>> agreed on once there is a concrete proposal.
>>>
>>> I think we'll find that there's a lot of variation in what's useful to
>>> report directly in the e-mail and how comes from the particular tests
>>> that are being done, what's critical information about the environment
>>> will vary quite a bit and there's going to be taste differences as well.
>>> A lot of this is a combination of common sense and the reporters being
>>> able to be responsive to feedback from their users, there's not much
>>> commonality in the formatting of the existing reports from static
>>> analysis but they're pretty much all useful (at least the ones I tend to
>>> get are useful to me).
>>>
>>> There is the question of tooling to track the bugs between multiple bots
>>> which would benefit if they were doing standard things but if people are
>>> working on that rather than trying to serve both humans and computers at
>>> once we might be better off with some sort of API and providing a URL in
>>> the emails for the machines to go and look at.
>>>
>>
>> I am going to bounce a proposal and brace for impact :)
>>
>> What do people think about managing bugs the way we handle our
>> development workflow?
>>
>> - Create a directory under our source tree for bugs. This way bugs
>>  stay with the source and we manage them the same way we handle
>>  non-runtime objects: Documenation, scripts etc. This can be flat
>>  directory or have a sub-dir structure underneath.
>>
>>  ../bugs similar to ../Documentation
> 
> I think that having them in the same tree is going to complicate things
> more than it will help.
> 
> It would probably be simpler to have this in a separate tree (or as git
> objects inside Linus's tree).
> 
>> - Associate a mailing list - linux-bugs
>> - Define a format in which bugs should be sent to this list and what
>>  should be included in the report.
>>
>>  e.g: [BUG REPORT] sub-system title
>>  Failure mode, release, stack trace (if applicable) etc.
> 
> Yes! Hopefully something that is both easily machine readable and human
> readable.
> 

Can the AUTO SEL logic be leveraged for updates to bugs?

>> - A group of maintainers/developers (volunteers) take turns to watch
>>  this list as a long term plan. Yes, I am proposing a mailing list,
>>  consistent with our development model.
> 
> I'd be happy to help here.
> 

Awesome.

>> - History of the bug including the fix commit ID will be preserved.
>>  We will have to figure out what it means to close a bug and general
>>  lifetime. There is a big difference between these objects and other
>>  source objects. These objects have short lifetime.
>>
>> I haven't thought through everything yet.
>>
>> My motivation is that, this way bug reporting and managing will be part
>> of our workflow and becomes part of our process. It helps centralize bug
>> reports.
> 
> Having bugs work the same way like patches is a great approach IMHO.
> Being able to git-send-email bugs, or to use our various autmation tools
> for git commits on bugs is really great.
> 
> We have a lot of infrastructure written around our existing git/email
> process, so why not leverage it more as you suggest?
> 

Right. I am hoping we can leverage a lot of our existing tools and 
processes if we go with the patch process. Maybe be AUTO SEL logic can 
also be leveraged and extended to generate bugs reports and/or generate 
updates for bugs.

thanks,
-- Shuah
