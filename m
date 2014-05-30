Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0EFACB24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 18:35:34 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.227])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 817BE20323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 18:35:33 +0000 (UTC)
Date: Fri, 30 May 2014 14:35:30 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140530143530.5816c980@gandalf.local.home>
In-Reply-To: <53832692.9020802@hitachi.com>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org> <53832692.9020802@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 26 May 2014 20:33:38 +0900
Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:

 
> If we force to unify the test frameworks, it will neither be maintained
> nor used. Instead, if maintainers state what test they will run and how
> to maintain it, we are sure that each test will be done on the each
> subsystem branch, and before release, we can avoid to run all tests which
> requires many hardware and long time but just run a small number of tests
> (e.g. LTP, trinity, etc.)

I agree with this. Just having a single place to put tests or tell
people where the tests are would be a huge improvement. If I wanted to
run my own tests on ext file systems, I should be able to set up the
same environment that Ted uses. If someone wants to run my ftrace
tests, then they should be able to as well (which I need to make
available to the general public). Better yet, this can open up a door
for people to contribute to new tests for a particular subsystem. I
would love it if people added tests for me to run on ftrace. I have a
bunch of hacks to test various functionality (as they are hacky, that's
the reason I haven't posted them yet).

This shouldn't be about "make tests" which I think is silly. But a way
to standardize tests, or at least have a single repository to show how
different parts of the kernel is tested. My tests require running as
root, other tests should not require that. This is just an example of
how different tests have different requirements and no one size fits
all.

-- Steve
