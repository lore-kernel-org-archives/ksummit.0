Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 24493B12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 20:59:10 +0000 (UTC)
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D3B42035B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 20:59:09 +0000 (UTC)
Received: by mail-ob0-f172.google.com with SMTP id wp18so2387704obc.31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 13:59:08 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20140530143530.5816c980@gandalf.local.home>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org> <53832692.9020802@hitachi.com>
	<20140530143530.5816c980@gandalf.local.home>
Date: Fri, 30 May 2014 13:59:08 -0700
Message-ID: <CAGXu5jLqm1QDH4doN5pU0+MS_mTT3mwAdfiYvwwgqkBGzz3y9g@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
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

On Fri, May 30, 2014 at 11:35 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Mon, 26 May 2014 20:33:38 +0900
> Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
>
>
>> If we force to unify the test frameworks, it will neither be maintained
>> nor used. Instead, if maintainers state what test they will run and how
>> to maintain it, we are sure that each test will be done on the each
>> subsystem branch, and before release, we can avoid to run all tests which
>> requires many hardware and long time but just run a small number of tests
>> (e.g. LTP, trinity, etc.)
>
> I agree with this. Just having a single place to put tests or tell
> people where the tests are would be a huge improvement. If I wanted to
> run my own tests on ext file systems, I should be able to set up the
> same environment that Ted uses. If someone wants to run my ftrace
> tests, then they should be able to as well (which I need to make
> available to the general public). Better yet, this can open up a door
> for people to contribute to new tests for a particular subsystem. I
> would love it if people added tests for me to run on ftrace. I have a
> bunch of hacks to test various functionality (as they are hacky, that's
> the reason I haven't posted them yet).
>
> This shouldn't be about "make tests" which I think is silly. But a way
> to standardize tests, or at least have a single repository to show how
> different parts of the kernel is tested. My tests require running as
> root, other tests should not require that. This is just an example of
> how different tests have different requirements and no one size fits
> all.

I've been adding stuff in tools/testing/selftests when ever I can.
Based on the stuff living in there, I think there several things
needed for being able to hook stuff up to a framework:

common reporting/exit code handling: right now "make run_tests" mostly
requires a human to read everything and decide if something failed.
That's no good.

common "starting state" documentation: the various tests require
changes to CONFIG items, sysctls, uid, etc. Having a common format for
describing these states mean a framework would be able to, say, build
randconfig and then pick the correct subset of tests to run. Or
changing sysctls before running a test.

(And as an example of code work to be done: on my TODO list is taking
the seccomp-bpf test suite, currently living on github, and getting it
added to the selftests tree.)

-Kees

-- 
Kees Cook
Chrome OS Security
