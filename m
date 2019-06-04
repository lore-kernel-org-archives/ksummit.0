Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 09440B1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 17:16:20 +0000 (UTC)
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9418C844
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 17:16:19 +0000 (UTC)
Received: by mail-it1-f195.google.com with SMTP id r135so1412909ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Jun 2019 10:16:19 -0700 (PDT)
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm> <20190603221131.GE2456@sirena.org.uk>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <6a90bf6c-e9a4-85eb-527c-c4bc3658e779@linuxfoundation.org>
Date: Tue, 4 Jun 2019 11:16:17 -0600
MIME-Version: 1.0
In-Reply-To: <20190603221131.GE2456@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/3/19 4:11 PM, Mark Brown wrote:
> On Mon, Jun 03, 2019 at 05:10:04PM -0400, Sasha Levin wrote:
> 
>> Would it make sense to do some bikeshedding around how an ideal email
>> bug report should look like, and then get syzbot and maybe kernelci to
>> switch to using this new format as an experiment?
> 
>> A bunch the syzbot/kernelci/etc folks will be at LPC as well, and we'll
>> have the testing & fuzzing MC going on where this can be discussed and
>> agreed on once there is a concrete proposal.
> 
> I think we'll find that there's a lot of variation in what's useful to
> report directly in the e-mail and how comes from the particular tests
> that are being done, what's critical information about the environment
> will vary quite a bit and there's going to be taste differences as well.
> A lot of this is a combination of common sense and the reporters being
> able to be responsive to feedback from their users, there's not much
> commonality in the formatting of the existing reports from static
> analysis but they're pretty much all useful (at least the ones I tend to
> get are useful to me).
> 
> There is the question of tooling to track the bugs between multiple bots
> which would benefit if they were doing standard things but if people are
> working on that rather than trying to serve both humans and computers at
> once we might be better off with some sort of API and providing a URL in
> the emails for the machines to go and look at.
> 

I am going to bounce a proposal and brace for impact :)

What do people think about managing bugs the way we handle our
development workflow?

- Create a directory under our source tree for bugs. This way bugs
   stay with the source and we manage them the same way we handle
   non-runtime objects: Documenation, scripts etc. This can be flat
   directory or have a sub-dir structure underneath.

   ../bugs similar to ../Documentation

- Associate a mailing list - linux-bugs
- Define a format in which bugs should be sent to this list and what
   should be included in the report.

   e.g: [BUG REPORT] sub-system title
   Failure mode, release, stack trace (if applicable) etc.

- A group of maintainers/developers (volunteers) take turns to watch
   this list as a long term plan. Yes, I am proposing a mailing list,
   consistent with our development model.
- History of the bug including the fix commit ID will be preserved.
   We will have to figure out what it means to close a bug and general
   lifetime. There is a big difference between these objects and other
   source objects. These objects have short lifetime.

I haven't thought through everything yet.

My motivation is that, this way bug reporting and managing will be part
of our workflow and becomes part of our process. It helps centralize bug
reports.

I will volunteer to start a sandbox repo and take on the role of
defining format etc. and maintain it for a release or two, to test the
idea. If we like it after the trial, we can adapt it and switch to long
term maintainer plan I mentioned above.

thanks,
-- Shuah
