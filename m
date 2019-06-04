Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63123CAF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 21:43:08 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C36816D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 21:43:07 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id a15so1170923qtn.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Jun 2019 14:43:07 -0700 (PDT)
Date: Tue, 4 Jun 2019 17:43:03 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190604214303.GB17589@chatter.i7.local>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
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

On Mon, Jun 03, 2019 at 01:48:22PM -0700, Linus Torvalds wrote:
>On Mon, Jun 3, 2019 at 11:10 AM Konstantin Ryabitsev
><konstantin@linuxfoundation.org> wrote:
>>
>> May I recommend using a project like git-bug [1] instead of a mailing
>> list?
>
>I'm not a huge fan of mailing lists only for bug handling, but on the
>other hand, I do think that a bug handling thing fundamentally needs
>
> (a) automatic aging out of bug reports
>
> (b) targeted push notifications (ie ractically speaking - email)
>
>and that the email part is important. And it can't just be a "hey,
>something changed". It needs to contain enough information in the
>email to give a developer sufficient knowledge that the developer
>knows whether it's even worth it looking deeper at the bug, and
>looking at the database (in fact, it should contain enough actual
>information that for simple issues, the developer should go "D'oh!"
>and just fix the bug).

Yes, I was envisioning a mechanism with two different moving parts -- 
one the actual bot that would find and create bug entries in a 
distributed system like git-bug, and another an alert and collaboration 
tool that would monitor and notify developers when a bug is created 
matching the parameters they have defined. For example, Greg can define 
a query matching "all bugs mentioning usb" and attach the action of 
"send bug summary to the mailing list." We can run the matching and 
notification daemon at kernel.org, or anyone can set it up to run it on 
their own system to fire as a post-update hook on when they pull the 
git-bug repo.

These are the upsides for a distributed system like this:

1. Doesn't require a stable internet connection when running on the 
laptop of a developer who's out in a remote corner of the world (except 
for the actual pull to fetch new data).
2. Provides full bug history for the project that doesn't depend on 
kernel.org not falling off the face of the earth.
3. Offers ability to easily analyze the data, including historical (the 
same way public-inbox on lore.kernel.org/lkml allows anyone to crunch 
full kernel development history).
4. Can hook into other bugtracking systems like bugzilla, Gitlab, or 
Github via one-way or two-way bridges. E.g. instead of "send an email to 
the list" for USB bugs, the action can be "create a bug on 
bugzilla.kernel.org and sync back comments and bug status changes." The 
bridges for launchpad and GitHub already exist for git-bug.
5. Bots can check for duplicates before creating a new bug (I'm not 100% 
sure how well this would work, but theoretically this is possible). This 
includes bugs created by other bots, as long as they all feed the same 
distributed tracker.
6. Bots don't have to develop notification tooling and can concentrate 
on just creating and pushing new bugs. This lowers the entry barrier if 
new bots are developed.

It's entirely possible that git-bug is the wrong tool for this -- and, 
in fact, it's easy to argue that git is the wrong tool for this and what 
git-bug is doing to twist git to suit its purposes is wrong and 
horrible. Some would argue that blockchains were envisioned for exactly 
this purpose, except that blockchain as a technology is currently in the 
"sardonically cringe whenever someone mentions it" stage of adoption 
(especially every time bitcoin drops a few thousand points).

In general, I believe that we should be aiming to develop tools that are 
git-like in the sense that they do not depend on a centralized entity.  
For the longest time, the distributed nature of email was what made it 
possible for Linux development to remain truly decentralized, but email 
in 2019 is radically different from email in 2009. Running an 
independent email server that reliably sends and receives email is 
becoming more and more difficult now that most of email traffic goes 
through 5-6 major companies -- you must do SPF, DKIM, ARC/DMARC, TLS, 
and who knows what next, just to be reliably accepted by Gmail (maybe).  
And even if someone uses one of those major email providers doesn't mean 
the patches won't end up in someone's spam folder, show up a week late, 
or arrive mangled.

Public-inbox makes this situation a bit better, but it still relies on 
email remaining generally functional. My hope it that we'll be able to 
take this a step further and create truly distributed alternatives to 
platforms like Github/Gitlab that wouldn't require using centralized 
resources for bug tracking and CI. We've done this for source code with 
git, and we should aim to do the same for the rest.

-K
