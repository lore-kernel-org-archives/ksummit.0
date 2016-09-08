Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAEB226C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 11:43:53 +0000 (UTC)
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FC35225
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 11:43:53 +0000 (UTC)
Received: by mail-wm0-f68.google.com with SMTP id a6so7466857wmc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 Sep 2016 04:43:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160906191259.14a7d60b@gandalf.local.home>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160906191259.14a7d60b@gandalf.local.home>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Thu, 8 Sep 2016 14:43:50 +0300
Message-ID: <CACVxJT-n2=8XeubGEWS-OHuvV2g-u3f5Tcpxm_VF1XhpodGZ1A@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
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

On Wed, Sep 7, 2016 at 2:12 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 7 Sep 2016 01:41:00 +0300
> Alexey Dobriyan <adobriyan@gmail.com> wrote:
>
>>
>> > Specifically:
>> >
>> >  "If a change results in user programs breaking, it's a bug in the
>> >   kernel. We never EVER blame the user programs."
>>
>> Linus has said many things. I've personally had Python compilation busted
>> when Linux 4 appeared but somehow digit 4 is still with us. By that logic,
>> major version should have been reverted back to 3 long ago.
>
> There is a limit to the insanity. If a userspace tool depends on a
> kernel version number, then it pinned itself to that version. If Python
> never expected a 4 to appear, then it's compiling will be left to 3.x
> kernels.

No, no, no. Python compiled fine on 2.6 (it was 2.6 => 3 transition
of course), and then it stopped compiling on 3.

How fast people forget:

    F15 has now moved to the 2.6.40 kernel.  If you haven't
    been paying attention lately, you'll probably be saying
    "wait... there is no 2.6.40 upstream" and you would be right.
    So Fedora's 2.6.40 is really the 3.0 upstream kernel,
    "rebranded" to follow the 2.6.x numbering scheme.
    This was done to avoid userspace incompatibilities with
    the 3.x numbering scheme for packages that were either
    tightly coupled to kernel version and/or, uh, doing things
    a bit wrongly.  Most of those packages have been fixed in f16
    at this point.

So much stuff broke, warranting non-existent kernel version.

>> > > P.S.: techically every kernel release almost certainly breaks crash(1)
>> > > program, program many people on this list should be familiar with.
>> > > It is unclear why rules should be different for tracepoints.
>> >
>> > Well, crash() isn't a userspace tool that runs on top of Linux. Well,
>> > it does, but only the input from a core dump of a Linux kernel breaks
>> > it. It will always run fine on all Linux versions as long as it uses
>> > the same input.
>>
>> It can act on live kernel.
>
> Again, there's a limit to the insanity ;-)

Of course. There is no question about crash because it is
so obviously depends on kernel internals.


>> > Tracepoints are runtime visible. This isn't a postmortem analysis. We
>> > already had an issues when powertop read the tracepoints directly
>> > without using the tracepoint format file parsing, and we ended up
>> > having 4 bytes of useless data in *every* tracepoint. Luckily, that got
>> > fixed because this hard coding broke when running powertop from a 32
>> > bit userspace on top of a 64 bit kernel. I worked to get powertop to
>> > use the tracepoint format parsing that perf and trace-cmd uses.
>> >
>> > But if something depends on event fields, we need to maintain that. For
>> > now, we have fake fields in the sched_wakeup tracepoint, because of
>> > this.
>> >
>> > It's a balance that we need to figure out. One is that tracepoints are
>> > really helpful for in the field debugging to see what is happening. The
>> > other is that they are becoming an ABI and if a useful tool (like
>> > powertop) hooks into them, whatever they hooked into becomes set in
>> > stone.
>>
>> There is no balance. One can't even reorder gfp_t flags:
>>
>>       DECLARE_EVENT_CLASS(kmem_alloc,
>>       TP_STRUCT__entry(
>>                 __field(        unsigned long,  call_site       )
>>                 __field(        const void *,   ptr             )
>>                 __field(        size_t,         bytes_req       )
>>                 __field(        size_t,         bytes_alloc     )
>>                 __field(        gfp_t,          gfp_flags       )
>>         ),
>
> You mean if a tool depends on the order of bits set? I guess the
> question is, is there such a tool, and have people complained when
> things break? Or has anything broken yet?

How on earth could I know what is broken?
It is obvious to anyone who has grasped the concept of ABI
that gfp_t flags can not be changed anymore.

Here is something I don't undestand.

When /proc/*/pagemap exports raw page flags, pagemap authors
get flamed and ridiculed for doing it. pagemap abstracts flags
to maintain stable ordering at least and everything was quiet since then.
But when tracepoints ships gfp_t directly it is "umm, ohh, lets discuss it,
because, you know, much useful interface, enterprise distros mmmkay"
when it is clearly should not get past even brief review.
