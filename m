Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1A77A54
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  7 Aug 2014 18:28:10 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51AA620396
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  7 Aug 2014 18:28:09 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: "shuah.kh@samsung.com" <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Thu, 7 Aug 2014 20:24:39 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B84@seldmbx02.corpusers.net>
References: <53E38ED5.9000300@samsung.com>
In-Reply-To: <53E38ED5.9000300@samsung.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Thursday, August 07, 2014 7:36 AM,  Shuah Khan wrote:
>=20
> As a first step towards a larger goal to enable developer
> friendly kernel testing framework, a new make target is
> planned for 3.17. In addition, 3.17 includes work done to
> fix tools/testing/sefltests to run without failures.
>=20
> Short summary of work done so far for 3.17:
>=20
> - fix compile errors and warnings in various tests
> - fix run-time errors when tests aren't run as root
> - enhance and improve cpu and memory hot-plug tests
>    to run in limited scope mode by default. A new make
>    target to select full-scope testing. Prior to this
>    change, cpu and memory hot-plug tests hung trying to
>    hot-plug all but cpu0 and a large portion of the memory.
> - add a new kselftest target to run existing selftests
>    to start with.
>=20
> What's planned for 3.18 and beyond:
>=20
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

I'm quite interested in this (as is the CEWG), and I have lots of questions=
.
Will this be discussed/presented at KS or LinuxCon?  Should I ask my
questions on this list or wait until Chicago?  Are there any LKML threads
with info I can look at in the meantime?

Thanks.  This sounds like great work.
 -- Tim
