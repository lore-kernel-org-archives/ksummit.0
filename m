Return-Path: <davidlohr@hp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D8498979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:40:17 +0000 (UTC)
Received: from g9t1613g.houston.hp.com (g9t1613g.houston.hp.com [15.240.0.71])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D6951F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:40:17 +0000 (UTC)
Received: from g5t1625.atlanta.hp.com (g5t1625.atlanta.hp.com [15.192.137.8])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hp.com (Postfix) with ESMTPS id 9CB016022A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:40:16 +0000 (UTC)
Message-ID: <1400013611.2575.2.camel@buesod1.americas.hpqcorp.net>
From: Davidlohr Bueso <davidlohr@hp.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Tue, 13 May 2014 13:40:11 -0700
In-Reply-To: <20140513163648.55e7bab3@gandalf.local.home>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
	<20140507083936.GY26088@console-pimps.org>
	<536A1CC3.5090506@hitachi.com>
	<CAKMK7uG8Ly92uMavqS-abq=06FXCDMCae7mbv1EusG7pF9HAOg@mail.gmail.com>
	<536AF7F4.6010608@hitachi.com>
	<CAKMK7uGB7QTPfq-dswq9-aB1Na+==mCNNL2gX_zr5srDBVnCeA@mail.gmail.com>
	<5370706E.6000108@hitachi.com>
	<20140513163648.55e7bab3@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
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

On Tue, 2014-05-13 at 16:36 -0400, Steven Rostedt wrote:
> On Mon, 12 May 2014 15:55:42 +0900
> Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
> 
> 
> > Agreed. I'd like to suggest adding UT: tag or TS: tag for unit test
> > for testsuite to MAINTAINERS file, which will make clear how to test
> > that subsystem when submitting patches. :)
> 
> That's a good idea.
> 
> I still need to post my ftrace tests somewhere. I could add it to
> tools/testing/selftests, but I break rule #1:
> 
>  *  Do as much as you can if you're not root

Sorry but *why*? I would have thought that selftests are crash and burn,
at your own risk... heck its only used by kernel developers, not
sysadmins!
