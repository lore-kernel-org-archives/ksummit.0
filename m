Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 495E626
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 11:47:37 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0B07D1F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 11:47:36 +0000 (UTC)
Message-ID: <537F3551.2070104@hitachi.com>
Date: Fri, 23 May 2014 20:47:29 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

As I discussed with Greg K.H. at LinuxCon Japan yesterday,
I'd like to propose kernel testing standard as a separated topic.

Issue:
There are many ways to test the kernel but it's neither well documented
nor standardized/organized.

As you may know, testing kernel is important on each phase of kernel
life-cycle. For example, even at the designing phase, actual test-case
shows us what the new feature/design does, how is will work, and how
to use it. This can improve the quality of the discussion.

Through the previous discussion I realized there are many different methods/
tools/functions for testing kernel, LTP, trinity, tools/testing/selftest,
in-kernel selftest etc. Each has good points and bad points.

So, I'd like to discuss how we can standardize them for each subsystem
at this kernel summit.

My suggestion are,
- Organizing existing in-tree kernel test frameworks (as "make test")
- Documenting the standard testing method, including how to run,
  how to add test-cases, and how to report.
- Commenting standard testing for each subsystem, maybe by adding
  UT: or TS: tags to MAINTAINERS, which describes the URL of
  out-of-tree tests or the directory of the selftest.

Note that I don't tend to change the ways to test for subsystems which
already have own tests, but organize it for who wants to get involved in
and/or to evaluate it. :-)

I think we can strongly request developers to add test-cases for new features
if we standardize the testing method.

Suggested participants: greg k.h., Li Zefan, test-tool maintainers and
                       subsystem maintainers.


Thank you,

-- 
Masami HIRAMATSU
IT Management Research Dept. Linux Technology Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
