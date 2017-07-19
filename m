Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E38A982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 07:26:25 +0000 (UTC)
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88402F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 07:26:24 +0000 (UTC)
Received: by mail-it0-f46.google.com with SMTP id h199so25200331ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 00:26:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170719062538.GB12064@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<20170719062401.GA12064@jagdpanzerIV.localdomain>
	<20170719062538.GB12064@jagdpanzerIV.localdomain>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 Jul 2017 09:26:23 +0200
Message-ID: <CAKMK7uGWZHAWF_kGDvsWghE-1Fwo1PDFaNiP6nnhz3M2g17x8Q@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 19, 2017 at 8:25 AM, Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
> On (07/19/17 15:24), Sergey Senozhatsky wrote:
>> On (06/19/17 14:21), Sergey Senozhatsky wrote:
>> > Hello,
>> >
>> >     I, Petr Mladek and Steven Rostedt would like to propose a printk
>> > tech topic (as suggested by Steven). We are currently exploring the idea
>> > of complete redesign and rework of printk and it would be extremely helpful
>> > to hear from the community. printk serves different purposes, and some of
>> > requirements of printk tend to contradict each other; printk is monolithic
>> > and quite heavy, no wonder, it causes problems sometimes.
>>
>> I made a trivial printk TODO list. The list is incomplete and mostly
>> was created for personal use: thus it's probably a bit hard to read,
>> but at the same time it contains some quotes/opinions/ideas copy-pastes
>> and web-links. May be can be of some use. This also looks like our
>> possible (some approximation) agenda [if the topic will be accepted].
>>
>
> d'oh...  the link...
>
> https://github.com/sergey-senozhatsky/printk-todo

lgtm, two quick notes:
- my mail with the fbdev discussion seems to be in the wrong chapter.
Move it from "console_sem" to "fbdev, tty, drm, etc .."?

- feature request for per-console output: Per-console flag to always
use a kthread/offloading, even when oops/panic is happening. kms
definitely wants that. Please note that in that section. I can help
with implementing, once we get there.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
