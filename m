Return-Path: <matt@arkanian.console-pimps.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B05B270A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 08:46:55 +0000 (UTC)
Received: from arkanian.console-pimps.org (arkanian.console-pimps.org
	[212.110.184.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 34B6620252
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 08:46:55 +0000 (UTC)
Date: Wed, 7 May 2014 09:39:36 +0100
From: Matt Fleming <matt@console-pimps.org>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140507083936.GY26088@console-pimps.org>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5369EE59.9040805@hitachi.com>
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

On Wed, 07 May, at 05:27:05PM, Masami Hiramatsu wrote:
> 
> IOW, would the test cases be better to be out-of-tree or in-tree? If it is
> out-of-tree(like LTP), how can we maintain both test-cases and upstream kernels?
> What infrastructure should we have (e.g. bugzilla which provides a database for
> relationship between bug# and test-case) ?
> Those are my interests :)

There's definitely huge merit in having in-tree tests like the current
selftests stuff because it allows you to roll up fixes and regression
tests into a single commit, see commit 123abd76edf5 ("efivars:
efivarfs_valid_name() should handle pstore syntax").

-- 
Matt Fleming, Intel Open Source Technology Center
