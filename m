Return-Path: <kamezawa.hiroyu@jp.fujitsu.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3B99AC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 10:06:14 +0000 (UTC)
Received: from mgwkm04.jp.fujitsu.com (mgwkm04.jp.fujitsu.com [202.219.69.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9FB7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 10:06:13 +0000 (UTC)
Received: from m3051.s.css.fujitsu.com (m3051.s.css.fujitsu.com
	[10.134.21.209])
	by kw-mxoi2.gw.nic.fujitsu.com (Postfix) with ESMTP id 0F5FCAC03A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:06:11 +0900 (JST)
Message-ID: <559E477F.2040801@jp.fujitsu.com>
Date: Thu, 09 Jul 2015 19:05:51 +0900
From: Kamezawa Hiroyuki <kamezawa.hiroyu@jp.fujitsu.com>
MIME-Version: 1.0
To: Jiri Kosina <jkosina@suse.com>
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
	<559D4C35.6070709@hitachi.com> <559DE9E5.20204@jp.fujitsu.com>
	<alpine.LNX.2.00.1507091155450.10183@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1507091155450.10183@pobox.suse.cz>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] live patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2015/07/09 18:56, Jiri Kosina wrote:
> On Thu, 9 Jul 2015, Kamezawa Hiroyuki wrote:
>
>> I'm sorr if this is off-topic.
>>
>> I think the problem of "freezer v.s. FUSE" will happen if we neet to
>> stop user proceesses. AFAIK, the problem is a deadlock that fuse daemon
>> freezes even while its client wating for a reply.
>>
>> example)
>>     client -> page-fault -> GUP -> fuse daemon -> gethostbyname() -> nscd.8
>>
>> We can't detect this kind of dependency if we need to freeze userland.
>
> Freezing of userspace is happening every time system goes through
> hibernation.
>

yes. so, we need to find a way for fixing deadlock or avoiding it.

AFAIK, Hibernation+FUSE problem has been being reported since several years ago.
I think there are some workaround to stop using FUSE before hibernation by
hand or script or systemd but it seems not to be an option for live patching.

Thanks,
-Kame
