Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 16BA098F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 14:27:03 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7FE002011A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 14:27:02 +0000 (UTC)
Message-ID: <53664E31.6030706@roeck-us.net>
Date: Sun, 04 May 2014 07:26:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>, Li Zefan <lizefan@huawei.com>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
In-Reply-To: <CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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

On 05/04/2014 05:54 AM, Josh Boyer wrote:
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
> of a stable release.  Do we need something more formal that what
> either of us have already done (or continue to do)?
>
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

Not necessarily. Sometimes bugs are introduced by missing patches or
bad/incoomplete backports. Sure, I catch the compile errors, and others
run basic real-system testing, at least with x86, but we could use more
run-time testing, especially on non-x86 architectures.

Guenter
