Return-Path: <wangnan0@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B58A2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:53:42 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4779DE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:53:39 +0000 (UTC)
To: <ksummit-discuss@lists.linuxfoundation.org>
References: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
From: "Wangnan (F)" <wangnan0@huawei.com>
Message-ID: <57A02743.1080208@huawei.com>
Date: Tue, 2 Aug 2016 12:53:23 +0800
MIME-Version: 1.0
In-Reply-To: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] tools/Makefile: Fix Many Many
 problems and inconsistencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 2016/8/2 11:46, Randy Dunlap wrote:
> and subdir Makefiles.
>
> Examples:
>
> Use/honor O=outputdir consistently instead of building in <kerneltree>/tools.
> (check/compare kernel commit bf35182ffcd00d8b36d56210ffdac110e5624d7d)
>
> Honor MAKEFLAGS (well, they aren't even passed to tools/Makefile AFAICT.
> from an execution log:
> make LDFLAGS= MAKEFLAGS="" O=/local/lnx/kernel/lnx-47/TOOLS subdir=tools -C ../tools/ all
>
> Use make's "findstring" correctly (see patch below)
>
> There are lots of other problems unless I have just had too much too drink tonight,
> so here's the TECH TOPIC:
>
> In a 1.5 hour code crunch session, get a bunch of interested people together to fix
> a lot of problems quickly.  Then I will be a guinea pig tester.  :)
>
>
> Self-nomination: /me.
> Others interested:
> Arnaldo (acme); Michal Marek.

Please count me in. I worked in tools/Makefile and tools/perf/Makefile, 
solved
some problems to make it work for my cross-compiling environment. 'O=' 
is important
to me.

Thank you.
