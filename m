Return-Path: <kamezawa.hiroyu@jp.fujitsu.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 686D5BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 03:26:54 +0000 (UTC)
Received: from mgwkm01.jp.fujitsu.com (mgwkm01.jp.fujitsu.com [202.219.69.168])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C4A70F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 03:26:53 +0000 (UTC)
Received: from m3050.s.css.fujitsu.com (msm.b.css.fujitsu.com [10.134.21.208])
	by kw-mxauth.gw.nic.fujitsu.com (Postfix) with ESMTP id 936EEAC0368
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 12:26:50 +0900 (JST)
Message-ID: <559DE9E5.20204@jp.fujitsu.com>
Date: Thu, 09 Jul 2015 12:26:29 +0900
From: Kamezawa Hiroyuki <kamezawa.hiroyu@jp.fujitsu.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
	<559D4C35.6070709@hitachi.com>
In-Reply-To: <559D4C35.6070709@hitachi.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] live patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2015/07/09 1:13, Masami Hiramatsu wrote:
>>
>> - it would be beneficial for live patching if kernel threads could be
>>    cleaned up; currently it's a mess, with freezer points, signal handling
>>    etc. spewed randomly all over the main loop. Generalizing the API (such
>>    as improving kthread_worker and migrating kthreads to use that) would
>>    be beneficial if there are no major objections. See my related TECH
>>    TOPIC submission
>>
>> - Ingo proposed a "checkpoint"-based way for live patching, i.e. forcing
>>    all the processess out of kernel to serliaze on a well-defined execution
>>    point, perform the patching, and resume the execution.
>
> IMO, this is not acceptable especially for most of real-time scheduled tasks
> which usually the mission critical systems require. And such systems are
> the main target of the live patching feature I think, since those are
> sometimes controlling civil infrastructure systems, like trains, plants,
> factories and so on.
>
I'm sorr if this is off-topic.

I think the problem of "freezer v.s. FUSE" will happen if we neet to stop user proceesses.
AFAIK, the problem is a deadlock that fuse daemon freezes even while its client wating for a reply.

example)
    client -> page-fault -> GUP -> fuse daemon -> gethostbyname() -> nscd.8

We can't detect this kind of dependency if we need to freeze userland.

Thanks,
-Kame
