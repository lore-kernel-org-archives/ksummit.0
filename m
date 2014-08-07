Return-Path: <shuah.kh@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3017D7B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  7 Aug 2014 14:46:21 +0000 (UTC)
Received: from usmailout1.samsung.com (mailout1.w2.samsung.com
	[211.189.100.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 683C42026E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  7 Aug 2014 14:46:20 +0000 (UTC)
Received: from uscpsbgex2.samsung.com
	(u123.gpu85.samsung.co.kr [203.254.195.123]) by mailout1.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N9X000PGXW7MS10@mailout1.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Thu,
	07 Aug 2014 10:36:07 -0400 (EDT)
Message-id: <53E38ED5.9000300@samsung.com>
Date: Thu, 07 Aug 2014 08:36:05 -0600
From: Shuah Khan <shuah.kh@samsung.com>
MIME-version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18 and
 beyond
Reply-To: shuah.kh@samsung.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

As a first step towards a larger goal to enable developer
friendly kernel testing framework, a new make target is
planned for 3.17. In addition, 3.17 includes work done to
fix tools/testing/sefltests to run without failures.

Short summary of work done so far for 3.17:

- fix compile errors and warnings in various tests
- fix run-time errors when tests aren't run as root
- enhance and improve cpu and memory hot-plug tests
   to run in limited scope mode by default. A new make
   target to select full-scope testing. Prior to this
   change, cpu and memory hot-plug tests hung trying to
   hot-plug all but cpu0 and a large portion of the memory.
- add a new kselftest target to run existing selftests
   to start with.

What's planned for 3.18 and beyond:

- get feedback on the new kselftest target from the community
- add more tests to be run under kselftest umbrella
- identify existing tests under /lib and other areas that
   make a good candidate to be included under kselftest
- Some of these could be run as a tool and/or a independent
   test with a few changes and some probably aren't like the
   /lib/locking tests.
- As a goal, try to leverage existing tests and modify them
   as needed to run them as a black-box test (e.g: look into
   ways to make it run as a tool)
- Greg KH sparked the kernel selftest idea, has been in the loop
   for the work done so far, and reviewed the plan for 3.18.

thanks,
-- Shuah

Shuah Khan
Senior Linux Kernel Developer - Open Source Group
Samsung Research America(Silicon Valley)
shuah.kh@samsung.com | (970) 672-0658
