Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1E01B14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 03:33:07 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD7293CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 03:33:06 +0000 (UTC)
Date: Fri, 7 Jul 2017 11:33:02 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170707033302.rgpq5knzx3qvvr2p@wfg-t540p.sh.intel.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20170705112707.54d7f345@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 05, 2017 at 11:27:07AM -0400, Steven Rostedt wrote:
[snip]
>I need to be clearer on this. What I meant was, if there's a bug
>where someone has a test that easily reproduces the bug, then if
>there's not a test added to selftests for said bug, then we should
>shame those into doing so.

Besides shaming, there's one more option -- acknowledgement.

When it's a test case or test tool that discovered the bug, we could
acknowledge it by adding one line in the bug fixing patch. The exact
forms can be discussed, but here are some examples to show the basic
idea:

Tool: lockdep
Tool: ktest
Tool: smatch
Tool: trinity
Tool: syzkaller
Tool: xfstests/tests/ext4/025
Tool: scripts/coccinelle/locks/call_kern.cocci
Tool: tools/testing/selftests/bpf/test_align.c

Reports from test infrastructures like 0day could go further to help
acknowledge the tool author or maintainer by showing such lines in its
bug report email:

You may consider adding these lines in the bug fixing patch:

-----------------------[ cut here ]----------------------------------
Fixes: XXXXXXXXXX ("title of the buggy commit")
Tool: tools/testing/selftests/bpf/test_align.c <davem@davemloft.net>
Reported-by: 0day test robot <xiaolong.ye@intel.com>
-----------------------[ cut here ]----------------------------------

Regards,
Fengguang
