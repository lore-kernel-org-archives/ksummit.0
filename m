Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D12B992F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 12:45:51 +0000 (UTC)
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 775C31F89A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 12:45:50 +0000 (UTC)
Received: by mail-ig0-f174.google.com with SMTP id h3so4321108igd.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 05:45:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <536A1CC3.5090506@hitachi.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
	<20140507083936.GY26088@console-pimps.org>
	<536A1CC3.5090506@hitachi.com>
Date: Wed, 7 May 2014 14:45:49 +0200
Message-ID: <CAKMK7uG8Ly92uMavqS-abq=06FXCDMCae7mbv1EusG7pF9HAOg@mail.gmail.com>
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

On Wed, May 7, 2014 at 1:45 PM, Masami Hiramatsu
<masami.hiramatsu.pt@hitachi.com> wrote:
> (2014/05/07 17:39), Matt Fleming wrote:
>> On Wed, 07 May, at 05:27:05PM, Masami Hiramatsu wrote:
>>>
>>> IOW, would the test cases be better to be out-of-tree or in-tree? If it is
>>> out-of-tree(like LTP), how can we maintain both test-cases and upstream kernels?
>>> What infrastructure should we have (e.g. bugzilla which provides a database for
>>> relationship between bug# and test-case) ?
>>> Those are my interests :)
>>
>> There's definitely huge merit in having in-tree tests like the current
>> selftests stuff because it allows you to roll up fixes and regression
>> tests into a single commit, see commit 123abd76edf5 ("efivars:
>> efivarfs_valid_name() should handle pstore syntax").
>>
>
> Ah, that's a good example for adding new feature/bugfix with test case! :)
> I think this type of combined patch will be good to run tests with git-bisect.
> At least out-of-tree test should work with git-bisect.

At least for drm/i915 I don't think merging the tests into the kernel
would be beneficial, at least now:
- Our tests are integrated into the regression test framework used by
graphics people in general (piglit), and that most certainly won't
move into the kernel.
- We have lots of debug tools in the same repo (with shared code), and
it tends to be less scary for bug reporters to grab
intel-gpu-tools.git to run one of them instead of the entire kernel.
- Documentation tooling in userspace sucks a lot less than kerneldoc.
Which is important since we use testcases and tooling as getting
started tasks for newcomers.
- Also I want much stricter review requirements on kernel patches than
testcase patches, separate git trees helps with that.

Hence why we thus far just link the kernel patch to its testcase with
an Testcase: tag.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
