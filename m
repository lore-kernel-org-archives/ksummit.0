Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E8B869A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 08:34:07 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F25C02031F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 08:34:06 +0000 (UTC)
Message-ID: <5365FB78.8020901@huawei.com>
Date: Sun, 4 May 2014 16:34:00 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Jiri Kosina <jkosina@suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/3 3:42, Jiri Kosina wrote:
> Runtime/live kernel patching is becoming a topic these days. There are 
> several parallel implementations currently evolving in parallel (kpatch, 
> kgraft, criu-based solution, ksplice to some extent), all of them having 
> their pros and cons. 
> 
> It's clear that what is going to get merged at the end of the day would 
> have to be some super-position of the currently existing solutions. 
> 
> Finding a reasonable compromise might be challenging. Having discussion 
> between the groups working on those solutions (tech topic) and with 
> "general maintainer audience" to face the flame^W^W^Wobtain feedback 
> (core topic) would be very valuable step in converging to unified 
> solution.
> 
> Suggested participants: see the list of "competing" projects above
> 

Thanks for working on KGraft!

In Huawei we want to use live patching, but we're conservative, so we really
want to see a mainline solution.
