Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 66D1DADD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 12:32:01 +0000 (UTC)
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D77C4201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 12:32:00 +0000 (UTC)
Received: by mail-ie0-f172.google.com with SMTP id as1so4009975iec.31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 05:32:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <536AF7F4.6010608@hitachi.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
	<20140507083936.GY26088@console-pimps.org>
	<536A1CC3.5090506@hitachi.com>
	<CAKMK7uG8Ly92uMavqS-abq=06FXCDMCae7mbv1EusG7pF9HAOg@mail.gmail.com>
	<536AF7F4.6010608@hitachi.com>
Date: Fri, 9 May 2014 14:32:00 +0200
Message-ID: <CAKMK7uGB7QTPfq-dswq9-aB1Na+==mCNNL2gX_zr5srDBVnCeA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 8, 2014 at 5:20 AM, Masami Hiramatsu
<masami.hiramatsu.pt@hitachi.com> wrote:
>>> Ah, that's a good example for adding new feature/bugfix with test case! :)
>>> I think this type of combined patch will be good to run tests with git-bisect.
>>> At least out-of-tree test should work with git-bisect.
>>
>> At least for drm/i915 I don't think merging the tests into the kernel
>> would be beneficial, at least now:
>
> Hm, it seems some other subsystems have their own testsuites, I think we'd
> better clarify the testing policy for each subsystem,
> using dedicated testing tools or in-kernel selftest.

What I'd like to discuss for the overall kernel is minimal standards
that apply everywhere. And process issues like where external test
suites should be documented (they're useless if people can't find
them) and how much pressure we should apply to get them into the
kernel git tree. And whether that makes sense in all cases or not.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
