Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D04F6932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 13:35:30 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0481A1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 13:35:29 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: Shuah Khan <shuahkhan@gmail.com>, Grant Likely <grant.likely@secretlab.ca>
Date: Sat, 23 Aug 2014 15:35:27 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FD015DCAE7ABA1@seldmbx02.corpusers.net>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>,
	<CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
In-Reply-To: <CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

On Friday, August 22, 2014 10:59 AM, Shuah Khan  wrote:
>
> On Fri, Aug 22, 2014 at 8:19 AM, Grant Likely <grant.likely@secretlab.ca>=
 wrote:
> > Rough notes from the Testing discussion during the workshop day of
> > Kernel Summit. Big thanks to Paul McKenney for writing all of this
> > down.
> >
>
> Grant,
>
> You beat me to it. Thanks for sending the notes from the discussion and t=
hanks
> Paul McKenney for writing these down.
>
> The next steps on my plate are as follows:
>
> Shuah Khan:
>
> - Work on putting a basic framework for tests: Pass, Fail, Skip to start =
with.
> - update existing tests in tools/testing/selftests to use the
> framework to serve as an
>   example for future tests. As we discussed and decided on output will
> continue to go to
>   stdio. This will help these tests being used in other scripts that
> run tests in cross
>   environments.
> - Define profiles for short and longer time tests
> - Add install target in addition to the existing kselftest target at
> the top level Makefile
>
> I will maintain the test framework - will take care of the logistics
> of MAINTAINER
> file updates for this and creating a git tree. Individual test
> maintainers (we have
> several in MAINTAINERS file) will continue to own and maintain their test=
s.
>
> Fixes to known cross-build failures and new tests are welcome. Please
> send patches to linux-api mailing list

I've been working on integration with Aboriginal (Rob Landley's=20
minimal cross-compile distro) and hope to have some results
very soon.

Also, I've requested a 'test' wiki on kernel.org, where we can place=20
notes, ideas, and lists of things to work on, or things in progress
(like possible output format guidelines).

I'll let everyone know when the wiki is set up.

Thanks,
 -- Tim
