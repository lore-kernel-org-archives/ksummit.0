Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2616D8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:45:14 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7CF1D1FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:45:13 +0000 (UTC)
Message-ID: <536A1CC3.5090506@hitachi.com>
Date: Wed, 07 May 2014 20:45:07 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Matt Fleming <matt@console-pimps.org>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
	<20140507083936.GY26088@console-pimps.org>
In-Reply-To: <20140507083936.GY26088@console-pimps.org>
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

(2014/05/07 17:39), Matt Fleming wrote:
> On Wed, 07 May, at 05:27:05PM, Masami Hiramatsu wrote:
>>
>> IOW, would the test cases be better to be out-of-tree or in-tree? If it is
>> out-of-tree(like LTP), how can we maintain both test-cases and upstream kernels?
>> What infrastructure should we have (e.g. bugzilla which provides a database for
>> relationship between bug# and test-case) ?
>> Those are my interests :)
> 
> There's definitely huge merit in having in-tree tests like the current
> selftests stuff because it allows you to roll up fixes and regression
> tests into a single commit, see commit 123abd76edf5 ("efivars:
> efivarfs_valid_name() should handle pstore syntax").
> 

Ah, that's a good example for adding new feature/bugfix with test case! :)
I think this type of combined patch will be good to run tests with git-bisect.
At least out-of-tree test should work with git-bisect.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
