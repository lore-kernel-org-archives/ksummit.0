Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D4D0A7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 15:31:01 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 937781C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 15:31:00 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id i184so1737636itf.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 Sep 2016 08:31:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
	<CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
Date: Wed, 7 Sep 2016 09:30:59 -0600
Message-ID: <CAKocOOM7XJeW79dtFNx2Agi7cyrQxmMROmQrisdTG8oZMSi_qQ@mail.gmail.com>
To: Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
	stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 6, 2016 at 11:30 PM, Andy Lutomirski <luto@kernel.org> wrote:
> On Sep 6, 2016 10:10 PM, "Al Viro" <viro@zeniv.linux.org.uk> wrote:
>>
>> On Wed, Sep 07, 2016 at 01:41:00AM +0300, Alexey Dobriyan wrote:
>>
>> > Gentlemen's agreement then:
>> > * kernel developers don't break tracepoints on purpose and maintain
>> >   compatibility in simple cases (long => int, deleted field, etc),
>> > * real, justified tracepoint breakage doesn't count.
>>
>> No go.  Scenario:
>>
>> 1) piss-poor API is added in form of tracehook.  It exports some
>> information
>> that can be used to derive something genuinely interesting.  Most of the
>> time.  Corner cases are unsolvable, even though it might be possible to
>> provide the interesting part sanely.  Just not in that form.  Moreover,
>> faking the bits used to derive that information so that existing userland
>> logics would yield the right result is bloody hard and restricts what we
>> can do kernel-side, even though the real thing userland wants would not
>> have
>> such problems.
>>
>
> Agreed.
>
> I wouldn't mind a policy that tracepoints are simply never stable.  Maybe we
> should even deliberately change them periodically to drive the point home.
>
> The kernel should be able to have a debug API that is genuinely for
> *debugging* and doesn't freeze the underlying implementation.

Agreed. Tracepoints and events provide a powerful tool in debug certain class
of problems (races and performance problems) where traditional debug methods
such as CONFIG_DEBUG_FOO aren't effective. Trace information includes important
status information on thread status which is helpful in debugging.

What I find useful is being able enable and disable events during
run-time without
worrying about whether or not  CONFIG_DEBUG_FOO is enabled on the kernel I am
debugging. In some cases, problem becomes disappears when debug is enabled.
In my mind, the kernel itself is different beast and all bets are off
for certain class
of problems.

I am by no means discounting the userspace angle of this issue. I am
looking to see
if we can find a way to use this feature without handicapping ourselves.

>
> Windows, AFAICT, works like this.  If you write a production program that
> invokes WinDbg or similar, it's going to break down the road.

We can make it clear that tracepoints and events can change with no notice.

thanks,
-- Shuah
