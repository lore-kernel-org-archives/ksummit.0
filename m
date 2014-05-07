Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5D40D681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 03:06:05 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF44D2019D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 03:06:04 +0000 (UTC)
Message-ID: <5369A311.2030001@huawei.com>
Date: Wed, 7 May 2014 11:05:53 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
In-Reply-To: <53699F27.9040403@hitachi.com>
Content-Type: text/plain; charset="ISO-8859-1"
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

On 2014/5/7 10:49, Masami Hiramatsu wrote:
> (2014/05/04 20:19), Li Zefan wrote:
>> - Testing stable kernels
>>
>> The testing of stable kernels when a new version is under review seems
>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
>> are run on mainline/for-next only. Would be useful to also have them
>> run on stable kernels?
> 
> This might be a kind of off-topic, but I'm interested in the testing
> on the linux kernel, especially standard framework of unit-tests
> for each feature.
> 
> I see the Trinity and Fengguang's 0day test are useful. But for newer
> introduced features/bugfixes, would we have a standard tests?
> (for some subsystems have own selftests, but not unified.)
> 

I kind of remember Andrew once suggested a new feature can't be accepted
unless it comes with test cases?

> I guess tools/testing/selftest will be an answer. If so, I think
> we'd better send bugfixes with a test-case to check the bug is fixed
> (and ensure no regression in future), wouldn't it?
> 
> Thank you,
> 
