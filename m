Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4C93421
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 08:27:15 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1D1F220252
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 08:27:13 +0000 (UTC)
Message-ID: <5369EE59.9040805@hitachi.com>
Date: Wed, 07 May 2014 17:27:05 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Davidlohr Bueso <davidlohr@hp.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
In-Reply-To: <1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/07 11:58), Davidlohr Bueso wrote:
> On Wed, 2014-05-07 at 11:49 +0900, Masami Hiramatsu wrote:
>> (2014/05/04 20:19), Li Zefan wrote:
>>> - Testing stable kernels
>>>
>>> The testing of stable kernels when a new version is under review seems
>>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
>>> are run on mainline/for-next only. Would be useful to also have them
>>> run on stable kernels?
>>
>> This might be a kind of off-topic, but I'm interested in the testing
>> on the linux kernel, especially standard framework of unit-tests
>> for each feature.
> 
> I tend to think of LTP as a nice way of doing unit-tests for the uapi.
> Fengguang's scripts do include it, iirc, but I'm referring more to unit
> level tests. It serves well for changes in ipc, and should also for
> other subsystems.

Hm, yes, uapi tests can be done in LTP. However, I have some considerations;
- What uapi means? syscall, ioctl are OK, but what about procfs, sysfs, kernfs,
  etc?
- There could be some non-uapi features/bugfixes, in kernel. e.g. kmodule
  interface. How LTP handles it?
- I'm not sure how LTP synchronize the version of test cases with target
  kernel version. Is that possible to update the test cases as patch-level?
  And also, for stable trees, we'll need different test-sets (branches) for
  each tree.

IOW, would the test cases be better to be out-of-tree or in-tree? If it is
out-of-tree(like LTP), how can we maintain both test-cases and upstream kernels?
What infrastructure should we have (e.g. bugzilla which provides a database for
relationship between bug# and test-case) ?
Those are my interests :)

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
