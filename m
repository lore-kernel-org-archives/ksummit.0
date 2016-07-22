Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C40C12C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:22:10 +0000 (UTC)
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A24817F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:22:10 +0000 (UTC)
Received: by mail-wm0-f66.google.com with SMTP id o80so5578908wme.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 03:22:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <15317.1469182420@warthog.procyon.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<20160721233333.GD9841@dtor-ws>
	<11488.1469170986@warthog.procyon.org.uk>
	<CACVxJT-CB2V1dDdnJdbjewmXR04RpqB51c1jnh29Go_ceu6AWw@mail.gmail.com>
	<15317.1469182420@warthog.procyon.org.uk>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Fri, 22 Jul 2016 13:22:08 +0300
Message-ID: <CACVxJT-gj8x8A4O_qrc826VnGwZS8ynMStph_mruYaM7dJ6EEQ@mail.gmail.com>
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

On Fri, Jul 22, 2016 at 1:13 PM, David Howells <dhowells@redhat.com> wrote:
> Alexey Dobriyan <adobriyan@gmail.com> wrote:
>
>> Indeed, but please call them flags_t and flags64_t.
>
> Fine by me, though I was trying to avoid confusion with the argument to IRQ
> munging functions.

I can resurrect irq_flags_t but there is no procedure for merging 1MB+ diffs
without spending whole life splitting and emailing maintainers.
