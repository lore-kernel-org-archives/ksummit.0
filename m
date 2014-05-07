Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0E36A4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:49:18 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9E86C201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:49:17 +0000 (UTC)
Received: from mlsv6.hitachi.co.jp (unknown [133.144.234.166])
	by mail9.hitachi.co.jp (Postfix) with ESMTP id 726F437C83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:49:16 +0900 (JST)
Received: from vshuts01.hitachi.co.jp (vshuts01.hitachi.co.jp [10.201.6.83])
	by mfilter04.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s472nFYK032051 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 7 May 2014 11:49:16 +0900
Message-ID: <53699F27.9040403@hitachi.com>
Date: Wed, 07 May 2014 11:49:11 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <53662254.9060100@huawei.com>
In-Reply-To: <53662254.9060100@huawei.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/04 20:19), Li Zefan wrote:
> - Testing stable kernels
> 
> The testing of stable kernels when a new version is under review seems
> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> are run on mainline/for-next only. Would be useful to also have them
> run on stable kernels?

This might be a kind of off-topic, but I'm interested in the testing
on the linux kernel, especially standard framework of unit-tests
for each feature.

I see the Trinity and Fengguang's 0day test are useful. But for newer
introduced features/bugfixes, would we have a standard tests?
(for some subsystems have own selftests, but not unified.)

I guess tools/testing/selftest will be an answer. If so, I think
we'd better send bugfixes with a test-case to check the bug is fixed
(and ensure no regression in future), wouldn't it?

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
