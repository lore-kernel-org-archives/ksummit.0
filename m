Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 94AA1979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:46:56 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.229])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DB1A41FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:46:55 +0000 (UTC)
Date: Tue, 13 May 2014 16:46:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Li Zefan <lizefan@huawei.com>
Message-ID: <20140513164654.68a5e4bf@gandalf.local.home>
In-Reply-To: <5369A311.2030001@huawei.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<5369A311.2030001@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 7 May 2014 11:05:53 +0800
Li Zefan <lizefan@huawei.com> wrote:

> I kind of remember Andrew once suggested a new feature can't be accepted
> unless it comes with test cases?

This is a good idea. But where should we place it. I'm not sure I care
for the tools/testing/selftest/* to run all the tests. Hmm, does a test
in this directory need to be run from the top level? That is, if I add
tracing here, I expect it to be ignored by the top level makefile.

Perhaps the "run all" shouldn't be the default but have to be
specified.

Do people like to test everything? Or just what they modify. To me,
this should be something for developers to use. If you modify the
memory subsystem, you should run the memory tests before submitting.
Network? Then run network tests. And so on. I don't see the normal user
of the selftests wanting to run tests for every subsystem.

And things like network may require more work to get the tests running
(another machine perhaps). But having a place to put tests that
subsystem maintainers use to verify their work would be useful. I
believe it should be more for those working on the code than another
LTP.

-- Steve
