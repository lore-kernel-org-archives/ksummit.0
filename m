Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2DE91942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 02:48:01 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C2A782022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 02:47:59 +0000 (UTC)
Message-ID: <5366FBDB.7090705@huawei.com>
Date: Mon, 5 May 2014 10:47:55 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
In-Reply-To: <CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: lizf.kern@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/4 20:54, Josh Boyer wrote:
> On Sun, May 4, 2014 at 7:19 AM, Li Zefan <lizefan@huawei.com> wrote:
>> I've been dealing with stable kernels. There are some issues that I noticed
>> and may be worth discussing.
>>
>> - Too many LTS kernels?
>>
>> 2.6.32  Willy Tarreau
>> 3.2     Ben Huchings
>> 3.4     Greg
>> 3.10    Greg
>> 3.12    Jiry Slaby
>>
>> Too many or not? Is it good or bad? One of the problem is the maintenance
>> burden. For example, DaveM has to prepare stable patches for 5 stable
>> kernels: 3.2, 3.4, 3.10, 3.12 and 3.14.
> 
> To be fair, he doesn't have to.  He chooses to, and it's great.
> 

Yeah, but we can't expect other maintainers to do this. As Greg has been
emphasizing, we'd want to add as little burden as possible for subsystem
maintainers. With this in mind, focusing on fewer LTS kernels might make
sense?

>> - Equip Greg with a sub-maintainer?
>>
>> I found 3.4.x lacked hundreds of fixes compared to 3.2.x. It's mainly
>> because Ben has been manually backporting patches which don't apply
>> cleanly, while Greg just doesn't have the time budget. Is it possible
>> that we find a sub-maintainer to do this work?
> 
> I think you've already shown exactly how we can handle that.  It just
> takes someone willing to do the work to dig in.  Greg seemed very
> pleased with the patches for 3.4 being sent to him, and I know he's
> thanked me each time I send a report of what Fedora is carrying on top
> of a stable release.

Yeah, but it still ended up with hundreds of fixes missing, so I was
thinking if we can do better.

>  Do we need something more formal that what
> either of us have already done (or continue to do)?
> 

If someone is dedicated to do this work, Greg can work with him in this
way: whenever Greg's script finds a patch can't be applied to some stable
kernels, a notice will be sent to this sub-maintainer, and he will do
the manual check and backport.

>> - Are there still sub-systems/maintainers not doing very good in stable stuff?
>>
>> Once I looked into "git log --no-merges v3.4.. kernel/sched/rt.c", out of
>> 22 commits, only 2 fixes have stable tag, and finally I backported 4 commits
>> to 3.4.x.
> 
> This one is a problem.  I actually think your "sub-maintainer" idea
> applies more here than it does to a particular stable release.  If
> people were working through each subsystem and finding patches that
> should go back to stable, even if they aren't marked as such
> initially, then we'd be better off overall.
> 

I believe what's more important is all subsystem maintainers keep stable
things in mind and tag fixes for stable properly.

Digging into git-log to find fixes for stable trees isn't fun or productive
most of the time.

>> - Add a known_issues.txt?
>>
>> There are stable rules to what patch is acceptable, and besides a maintainer
>> may decide not send a fix for stable for some reason, or an issue is taken
>> care by no one.
>>
>> So how about add a known_issues.txt, then anyone who needs to bulid his
>> own kernel based on LTS may find it useful.
> 
> One per subsystem, or one per stable kernel?  I'm not sure which you mean.
> 

For example, we found using nfs in containers can lead to oops in 3.4.x, and
fixing that requires efforts, and it took us months to finally get it fixed
(actually still waiting Greg to pick up the patchset).

What if we chose to ignore it because we won't use nfs that way, then some day
someone might run into this issue.

If there's a know_issues list, people may try to fix some issues for LTS kernels
or fix them in their own kernels if the fixes aren't suitable for LTS.

We may even document performance issues which are already addressed in newer
kernels.

>> - Testing stable kernels
>>
>> The testing of stable kernels when a new version is under review seems
>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
>> are run on mainline/for-next only. Would be useful to also have them
>> run on stable kernels?
> 
> Yes, but I don't think that's the main problem.  The regressions we
> see in stable releases tend to come from patches that trinity and 0day
> don't cover.  Things like backlights not working, or specific devices
> acting strangely, etc.
> 
> Put another way, if trinity and 0day are running on mainline and
> linux-next already, and we still see those issues introduced into a
> stable kernel later, then trinity and 0day didn't find the original
> problem to being with.
> 

Yeah, most of fixes going into stable trees are not changes to core kernel,
but backports can be missing or incomplete and those bugs can lead to
disastrous, running triity and 0day can be useful.
