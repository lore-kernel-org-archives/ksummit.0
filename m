Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2ECA283D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:10:19 +0000 (UTC)
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 93F68150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:10:18 +0000 (UTC)
Received: by mail-wm0-f66.google.com with SMTP id q128so5534357wma.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 03:10:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <11488.1469170986@warthog.procyon.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<20160721233333.GD9841@dtor-ws>
	<11488.1469170986@warthog.procyon.org.uk>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Fri, 22 Jul 2016 13:10:16 +0300
Message-ID: <CACVxJT-CB2V1dDdnJdbjewmXR04RpqB51c1jnh29Go_ceu6AWw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 22, 2016 at 10:03 AM, David Howells <dhowells@redhat.com> wrote:
> Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:
>
>> >  (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
>> >      long when you want to deploy a flags field with which you're going to use
>> >      test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
>> >      because you can't use bits 32-63 as they might not exist.
>>
>> What is wrong with using DECLARE_BITMAP()? It will allocate exactly as
>> many unsigned longs
>
> You missed my point.  *unsigned long* is the issue.  The majority of the time
> that wastes 32 bits on a 64-bit machine - especially when we don't need that
> many flags.  On some 64-bit arches we could use unsigned int instead.

Indeed, but please call them flags_t and flags64_t.
test_bit et all can dispatch with  __builtin_choose_expr or even _Generic.
