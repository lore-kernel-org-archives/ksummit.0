Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D0D6681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 03:31:41 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A8E5A20116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 03:31:40 +0000 (UTC)
Message-ID: <5369A916.4000206@hitachi.com>
Date: Wed, 07 May 2014 12:31:34 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Li Zefan <lizefan@huawei.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<5369A311.2030001@huawei.com>
In-Reply-To: <5369A311.2030001@huawei.com>
Content-Type: text/plain; charset=ISO-8859-1
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

(2014/05/07 12:05), Li Zefan wrote:
> On 2014/5/7 10:49, Masami Hiramatsu wrote:
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
>>
>> I see the Trinity and Fengguang's 0day test are useful. But for newer
>> introduced features/bugfixes, would we have a standard tests?
>> (for some subsystems have own selftests, but not unified.)
>>
> 
> I kind of remember Andrew once suggested a new feature can't be accepted
> unless it comes with test cases?

Yeah, that's a good suggestion :)

And I think we should have a unified test framework which can drive
such test cases, and document how to add a test case within
a series of patches. It would be great if we can point out
which feature/commit is broken because of a test-case failure. :)

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
