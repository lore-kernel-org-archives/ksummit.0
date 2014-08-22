Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EE1D8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 17:59:27 +0000 (UTC)
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E5AA20320
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 17:59:26 +0000 (UTC)
Received: by mail-qg0-f54.google.com with SMTP id j5so7683051qga.41
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 10:59:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
Date: Fri, 22 Aug 2014 11:59:26 -0600
Message-ID: <CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 22, 2014 at 8:19 AM, Grant Likely <grant.likely@secretlab.ca> wrote:
> Rough notes from the Testing discussion during the workshop day of
> Kernel Summit. Big thanks to Paul McKenney for writing all of this
> down.
>

Grant,

You beat me to it. Thanks for sending the notes from the discussion and thanks
Paul McKenney for writing these down.

The next steps on my plate are as follows:

Shuah Khan:

- Work on putting a basic framework for tests: Pass, Fail, Skip to start with.
- update existing tests in tools/testing/selftests to use the
framework to serve as an
  example for future tests. As we discussed and decided on output will
continue to go to
  stdio. This will help these tests being used in other scripts that
run tests in cross
  environments.
- Define profiles for short and longer time tests
- Add install target in addition to the existing kselftest target at
the top level Makefile

I will maintain the test framework - will take care of the logistics
of MAINTAINER
file updates for this and creating a git tree. Individual test
maintainers (we have
several in MAINTAINERS file) will continue to own and maintain their tests.

Fixes to known cross-build failures and new tests are welcome. Please
send patches to linux-api mailing list

These are the initial tasks to continue this project in 3.18 and we
can evolve and refine the
steps as we go. Please add and/or correct if I missed any initial
steps and got the details wrong.

thanks,
-- Shuah
