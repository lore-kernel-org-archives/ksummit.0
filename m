Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E88C18A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 21:13:09 +0000 (UTC)
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDC7620114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 21:13:08 +0000 (UTC)
Received: by mail-ie0-f182.google.com with SMTP id y20so8211944ier.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 14:13:08 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FD015DCAE7ABA1@seldmbx02.corpusers.net>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
	<F5184659D418E34EA12B1903EE5EF5FD015DCAE7ABA1@seldmbx02.corpusers.net>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Sat, 23 Aug 2014 16:12:48 -0500
Message-ID: <CACxGe6ueac27KTtN_8Uo_BY9KyNVRt8j3p+ak08WuG4j_T+rwg@mail.gmail.com>
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
Content-Type: text/plain; charset=ISO-8859-1
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

On Sat, Aug 23, 2014 at 8:35 AM, Bird, Tim <Tim.Bird@sonymobile.com> wrote:
> On Friday, August 22, 2014 10:59 AM, Shuah Khan  wrote:
>>
>> On Fri, Aug 22, 2014 at 8:19 AM, Grant Likely <grant.likely@secretlab.ca> wrote:
>> > Rough notes from the Testing discussion during the workshop day of
>> > Kernel Summit. Big thanks to Paul McKenney for writing all of this
>> > down.
>> >
>>
>> Grant,
>>
>> You beat me to it. Thanks for sending the notes from the discussion and thanks
>> Paul McKenney for writing these down.
>>
>> The next steps on my plate are as follows:
>>
>> Shuah Khan:
>>
>> - Work on putting a basic framework for tests: Pass, Fail, Skip to start with.
>> - update existing tests in tools/testing/selftests to use the
>> framework to serve as an
>>   example for future tests. As we discussed and decided on output will
>> continue to go to
>>   stdio. This will help these tests being used in other scripts that
>> run tests in cross
>>   environments.
>> - Define profiles for short and longer time tests
>> - Add install target in addition to the existing kselftest target at
>> the top level Makefile
>>
>> I will maintain the test framework - will take care of the logistics
>> of MAINTAINER
>> file updates for this and creating a git tree. Individual test
>> maintainers (we have
>> several in MAINTAINERS file) will continue to own and maintain their tests.
>>
>> Fixes to known cross-build failures and new tests are welcome. Please
>> send patches to linux-api mailing list
>
> I've been working on integration with Aboriginal (Rob Landley's
> minimal cross-compile distro) and hope to have some results
> very soon.

I've also been doing some hacking. I've taken a good look at several
of the tools people are using. Guenter's scripts. Kevin & Olof's
scripts, your ttc, and the stuff I'm using personally, and then
started a new tool for booting and testing boards, pulling in bits and
pieces that look good. I've been able to come up with something that
works really well for me, will boot on qemu out-of-the-box, and is
easily extendible to real hardware like a board on a desk or a
personal board farm. I'll post my patches this coming week. Right now
I'm cleaning up some ugly bits and I need to graft in the logging from
Kevin's scripts.

g.
