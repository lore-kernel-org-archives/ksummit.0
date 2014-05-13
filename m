Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 37D8A979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:36:52 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 90B731F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:36:51 +0000 (UTC)
Date: Tue, 13 May 2014 16:36:48 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140513163648.55e7bab3@gandalf.local.home>
In-Reply-To: <5370706E.6000108@hitachi.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
	<20140507083936.GY26088@console-pimps.org>
	<536A1CC3.5090506@hitachi.com>
	<CAKMK7uG8Ly92uMavqS-abq=06FXCDMCae7mbv1EusG7pF9HAOg@mail.gmail.com>
	<536AF7F4.6010608@hitachi.com>
	<CAKMK7uGB7QTPfq-dswq9-aB1Na+==mCNNL2gX_zr5srDBVnCeA@mail.gmail.com>
	<5370706E.6000108@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 12 May 2014 15:55:42 +0900
Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:


> Agreed. I'd like to suggest adding UT: tag or TS: tag for unit test
> for testsuite to MAINTAINERS file, which will make clear how to test
> that subsystem when submitting patches. :)

That's a good idea.

I still need to post my ftrace tests somewhere. I could add it to
tools/testing/selftests, but I break rule #1:

 *  Do as much as you can if you're not root

because ftrace only works with root.

Some of my tests take a bit of time to run as well. Maybe it's OK to
just add a tools/testing/tracing directory to place my tests (after
they get cleaned up to be "public"). Or perhaps just send them to the
LTP project.

-- Steve
