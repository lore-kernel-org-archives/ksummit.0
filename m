Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E01A2A47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 11:02:07 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E53CE201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 11:02:05 +0000 (UTC)
Received: from mlsv8.hitachi.co.jp (unknown [133.144.234.166])
	by mail9.hitachi.co.jp (Postfix) with ESMTP id 205B537C88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 20:02:05 +0900 (JST)
Received: from vshuts02.hitachi.co.jp (vshuts02.hitachi.co.jp [10.201.6.84])
	by mfilter06.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s7PB24pu004958 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 20:02:04 +0900
Message-ID: <53FB17A7.9090209@hitachi.com>
Date: Mon, 25 Aug 2014 20:01:59 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
In-Reply-To: <20140819145547.GB18536@roeck-us.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/08/19 23:55), Guenter Roeck wrote:
> On Tue, Aug 19, 2014 at 10:48:39AM -0400, Theodore Ts'o wrote:
>> This has been scheduled at 2pm at the request of Rusty.  (Reminder: if
>> you're going to propose a topic, please send e-mail to start a thread
>> on ksummit-discuss).
>>
> Do we have a context ? I am using insert/remove module a lot during testing,
> and would hate to see it go. It also permits module updates without having to
> reboot the kernel. There must be lots of other reasons to support module
> removal. So I would really dislike if it was no longer available, and I don't
> really see the point.

I have to explain why, since I asked Rusty to improving removing.

What I found is that the module unloading involving 2 stop_machine()s
for each module removing. It must not be needed. However, since the
module's ref-counter is over-optimized for BIG SMP machine, we can't
remove it without replacing it. But it means some performance
regression can happen on such big-scale SMP machines (not the laptop nor
normal smp machine).
So I asked him to introduce something like lock-up option which locks
up the given module, and the kernel skips ref-counting on that module.

Anyway, I sent the series right now :)

https://lkml.org/lkml/2014/8/25/142

Please check it if it is good for your use-cases.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
