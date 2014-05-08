Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C6A4F92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 03:20:28 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9207E1FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 03:20:27 +0000 (UTC)
Message-ID: <536AF7F4.6010608@hitachi.com>
Date: Thu, 08 May 2014 12:20:20 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
	<20140507083936.GY26088@console-pimps.org>
	<536A1CC3.5090506@hitachi.com>
	<CAKMK7uG8Ly92uMavqS-abq=06FXCDMCae7mbv1EusG7pF9HAOg@mail.gmail.com>
In-Reply-To: <CAKMK7uG8Ly92uMavqS-abq=06FXCDMCae7mbv1EusG7pF9HAOg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

(2014/05/07 21:45), Daniel Vetter wrote:
> On Wed, May 7, 2014 at 1:45 PM, Masami Hiramatsu
> <masami.hiramatsu.pt@hitachi.com> wrote:
>> (2014/05/07 17:39), Matt Fleming wrote:
>>> On Wed, 07 May, at 05:27:05PM, Masami Hiramatsu wrote:
>>>>
>>>> IOW, would the test cases be better to be out-of-tree or in-tree? If it is
>>>> out-of-tree(like LTP), how can we maintain both test-cases and upstream kernels?
>>>> What infrastructure should we have (e.g. bugzilla which provides a database for
>>>> relationship between bug# and test-case) ?
>>>> Those are my interests :)
>>>
>>> There's definitely huge merit in having in-tree tests like the current
>>> selftests stuff because it allows you to roll up fixes and regression
>>> tests into a single commit, see commit 123abd76edf5 ("efivars:
>>> efivarfs_valid_name() should handle pstore syntax").
>>>
>>
>> Ah, that's a good example for adding new feature/bugfix with test case! :)
>> I think this type of combined patch will be good to run tests with git-bisect.
>> At least out-of-tree test should work with git-bisect.
> 
> At least for drm/i915 I don't think merging the tests into the kernel
> would be beneficial, at least now:

Hm, it seems some other subsystems have their own testsuites, I think we'd
better clarify the testing policy for each subsystem,
using dedicated testing tools or in-kernel selftest.

> - Our tests are integrated into the regression test framework used by
> graphics people in general (piglit), and that most certainly won't
> move into the kernel.
> - We have lots of debug tools in the same repo (with shared code), and
> it tends to be less scary for bug reporters to grab
> intel-gpu-tools.git to run one of them instead of the entire kernel.
> - Documentation tooling in userspace sucks a lot less than kerneldoc.
> Which is important since we use testcases and tooling as getting
> started tasks for newcomers.
> - Also I want much stricter review requirements on kernel patches than
> testcase patches, separate git trees helps with that.
> 
> Hence why we thus far just link the kernel patch to its testcase with
> an Testcase: tag.

Ah, that's also nice to find an appropriate testcases. I think adding a
link(or git hash) to testcase allows us to automate test configuration
when git-bisecting, even if the test is out-of-tree. :)

Thank you,


-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
