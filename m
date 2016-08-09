Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9DD4C279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 08:08:10 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3BFCFF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 08:08:09 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id i199so323882ioi.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 09 Aug 2016 01:08:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160804095049.GA30029@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan>
	<4826466.kMrAaT2rsn@avalon> <87d1lpose8.fsf@intel.com>
	<20160804095049.GA30029@kroah.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 9 Aug 2016 10:08:07 +0200
Message-ID: <CAKMK7uH26eoLZSP=U5muv5U+O3Rr6RuYgw06UcGZzvcPq2f5eQ@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 4, 2016 at 11:50 AM, Greg KH <greg@kroah.com> wrote:
> On Thu, Aug 04, 2016 at 11:22:23AM +0300, Jani Nikula wrote:
>> So I admit to being pretty clueless wrt the fine details of module
>> loading, but I'm wondering if there could be any way of the module being
>> loaded telling the kernel (via a call, not by returning from probe) to
>> hold its horses for a while, and keep loading other modules. Sort of
>> like deferred probe, but without the full cleanup-retry cycle. The call
>> would return to the module later (not unlike deferred probe retries the
>> probe), and you could try again whatever it was that made you realize
>> you need to defer.
>
> Nope, it doesn't work that way, sorry.

Why? If I just postpone the entire driver load to an async worker and
then block if it's not there, that should work?

> Nice try, just unwind your initialization properly :)

There's a slight pratical problem of this being hard to test. Sure in
theory it's easy, but given how often we bomb normal module unload
already (and that's something our CI tests) practice disagrees.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
