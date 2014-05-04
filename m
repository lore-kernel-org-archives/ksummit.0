Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B130F8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 12:04:14 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 30C4E1FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 12:04:14 +0000 (UTC)
Message-ID: <53662CB8.90202@roeck-us.net>
Date: Sun, 04 May 2014 05:04:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Li Zefan <lizefan@huawei.com>, ksummit-discuss@lists.linuxfoundation.org
References: <53662254.9060100@huawei.com>
In-Reply-To: <53662254.9060100@huawei.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: lizf.kern@gmail.com
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/04/2014 04:19 AM, Li Zefan wrote:
> I've been dealing with stable kernels. There are some issues that I noticed
> and may be worth discussing.
>
> - Too many LTS kernels?
>
> 2.6.32  Willy Tarreau
> 3.2     Ben Huchings
> 3.4     Greg
> 3.10    Greg
> 3.12    Jiry Slaby
>
> Too many or not? Is it good or bad? One of the problem is the maintenance
> burden. For example, DaveM has to prepare stable patches for 5 stable
> kernels: 3.2, 3.4, 3.10, 3.12 and 3.14.
>
> - Equip Greg with a sub-maintainer?
>
> I found 3.4.x lacked hundreds of fixes compared to 3.2.x. It's mainly
> because Ben has been manually backporting patches which don't apply
> cleanly, while Greg just doesn't have the time budget. Is it possible
> that we find a sub-maintainer to do this work?
>
> - Are there still sub-systems/maintainers not doing very good in stable stuff?
>
> Once I looked into "git log --no-merges v3.4.. kernel/sched/rt.c", out of
> 22 commits, only 2 fixes have stable tag, and finally I backported 4 commits
> to 3.4.x.
>
> - Add a known_issues.txt?
>
> There are stable rules to what patch is acceptable, and besides a maintainer
> may decide not send a fix for stable for some reason, or an issue is taken
> care by no one.
>
> So how about add a known_issues.txt, then anyone who needs to bulid his
> own kernel based on LTS may find it useful.
>
> - Testing stable kernels
>
> The testing of stable kernels when a new version is under review seems
> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> are run on mainline/for-next only. Would be useful to also have them
> run on stable kernels?

For my part I would love to do that, I just don't have the time to set it up.

Guenter
