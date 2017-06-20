Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D667B65
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 08:24:45 +0000 (UTC)
Received: from mail-ot0-f193.google.com (mail-ot0-f193.google.com
	[74.125.82.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 909E1A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 08:24:44 +0000 (UTC)
Received: by mail-ot0-f193.google.com with SMTP id r67so14139514ota.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 01:24:44 -0700 (PDT)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
In-Reply-To: <20170619234650.GC30361@cloud>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<20170619234650.GC30361@cloud>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 20 Jun 2017 10:24:43 +0200
Message-ID: <CAK8P3a2XgV7E7H=hv6MyjhG7K0VaOSVFRgFfS17Npu7d6XXw1Q@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 20, 2017 at 1:46 AM, Josh Triplett <josh@joshtriplett.org> wrote:
> On Mon, Jun 19, 2017 at 02:21:46PM +0900, Sergey Senozhatsky wrote:
>> Hello,
>>
>>       I, Petr Mladek and Steven Rostedt would like to propose a printk
>> tech topic (as suggested by Steven). We are currently exploring the idea
>> of complete redesign and rework of printk and it would be extremely helpful
>> to hear from the community. printk serves different purposes, and some of
>> requirements of printk tend to contradict each other; printk is monolithic
>> and quite heavy, no wonder, it causes problems sometimes.
>>
>>       So the questions are (a short list) - what the new printk should be?
>> should it remain monolithic, or can we split it? (e.g. core kernel messages
>> don't share the log buffer with debug/info messages, etc.) what are the
>> printk requirements? I've started playing with the idea of moving printk to
>> per-CPU model: log buffers, per-CPU printk flusher threads. does is it make
>> sense (wrt to printk requirements) to have direct and in-direct flushers of
>> printk messages (e.g. core kernel messages are printed directly; debug/info
>> messages are printed by printing kthreads, etc. well, unless in panic)? ...
>>
>>       There are many other questions, so it'd be great to have a
>> brainstorming session.
>
> It'd be nice if, when building a kernel with CONFIG_PRINTK disabled, the
> full format-string handling wasn't compiled in to handle snprintf and
> family. In particular, some of the kernel-specific %p format-string
> modifiers only get used when printing to a user, never when formatting a
> string for machine consumption. I can think of a few different ways to
> address that, but I'd love to see that taken into account in the
> requirements for a printk redesign.

I don't think that's realistic, given how many special formats we have
nowadays, see the discussion about the 'struct rtc_time' format recently,
which was definitely meant for external ABIs.

        Arnd
