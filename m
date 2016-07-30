Return-Path: <teg@jklm.no>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DDEBA2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 21:59:02 +0000 (UTC)
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39C7A181
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 21:59:01 +0000 (UTC)
Received: by mail-ua0-f193.google.com with SMTP id 39so5141140uah.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 14:59:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1519332.ZM9tMjbubR@wuerfel>
References: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
	<1519332.ZM9tMjbubR@wuerfel>
From: Tom Gundersen <teg@jklm.no>
Date: Sat, 30 Jul 2016 23:58:41 +0200
Message-ID: <CAG-2HqU4oro52=GEY5tUwisX-hoUCUQZF=+e-VhaePjVMSm18g@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Bus IPC
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Arnd,

On Sat, Jul 30, 2016 at 11:24 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday, July 29, 2016 12:24:03 AM CEST David Herrmann wrote:
>> Tom Gundersen and I would like to propose a technical session on
>> in-kernel IPC systems. For roughly half a year now we have been
>> developing (with others) a capability-based [1] IPC system for linux,
>> called bus1 [2]. We would like to present bus1, start a discussion on
>> open problems, and talk about the possible path forward for an upstream
>> inclusion.

l...]

> I'd like to join in discussing the user interface. The current version
> seems (compared to kdbus) simple enough that we could consider using
> syscalls instead of a miscdev.

Yeah, using syscalls would probably make the most sense if and when we
submit it upstream. The only reason we didn't so far was that it has
been easier to develop it out-of-tree as a module.

Cheers,

Tom
