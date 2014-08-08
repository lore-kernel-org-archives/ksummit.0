Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D41154D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Aug 2014 02:18:20 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1D14C2032C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Aug 2014 02:18:20 +0000 (UTC)
Message-ID: <53E43365.50809@hitachi.com>
Date: Fri, 08 Aug 2014 11:18:13 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: shuah.kh@samsung.com
References: <53E38ED5.9000300@samsung.com>
In-Reply-To: <53E38ED5.9000300@samsung.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

I'm also interested in the selftests, especially its
framework (top-level script).

http://article.gmane.org/gmane.linux.kernel/1763766

(2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger goal to enable developer
> friendly kernel testing framework, a new make target is
> planned for 3.17. In addition, 3.17 includes work done to
> fix tools/testing/sefltests to run without failures.
>
> Short summary of work done so far for 3.17:
>
> - fix compile errors and warnings in various tests
> - fix run-time errors when tests aren't run as root
> - enhance and improve cpu and memory hot-plug tests
>    to run in limited scope mode by default. A new make
>    target to select full-scope testing. Prior to this
>    change, cpu and memory hot-plug tests hung trying to
>    hot-plug all but cpu0 and a large portion of the memory.
> - add a new kselftest target to run existing selftests
>    to start with.

Instead of running the selftests, can we build the testcases and
install it as a tool? I think running tests on the tree is not a
good idea...
Also, as I said in above mail, I'd like to suggest to add at least
log management and statistics to the test. Those are good to automate
regression tests. :)

> What's planned for 3.18 and beyond:
>
> - get feedback on the new kselftest target from the community
> - add more tests to be run under kselftest umbrella
> - identify existing tests under /lib and other areas that
>    make a good candidate to be included under kselftest
> - Some of these could be run as a tool and/or a independent
>    test with a few changes and some probably aren't like the
>    /lib/locking tests.
> - As a goal, try to leverage existing tests and modify them
>    as needed to run them as a black-box test (e.g: look into
>    ways to make it run as a tool)
> - Greg KH sparked the kernel selftest idea, has been in the loop
>    for the work done so far, and reviewed the plan for 3.18.
>

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
