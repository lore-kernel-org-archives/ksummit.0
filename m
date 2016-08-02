Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21550724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:50:57 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F0F32E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:50:56 +0000 (UTC)
Received: by mail-oi0-f50.google.com with SMTP id w18so251945164oiw.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 12:50:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2617443.e5mOt80N6v@avalon>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<CACRpkdYPNdtabj5zOXe9nyzbHsKGgo57dfojCDvfSNPEWAMZRg@mail.gmail.com>
	<2617443.e5mOt80N6v@avalon>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Aug 2016 21:50:54 +0200
Message-ID: <CACRpkdZtxBw1XV9uq8ka8NXf7D6bVmppCLaAkxTVora_O2KVvw@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: Gregor Boirie <gregor.boirie@parrot.com>, Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 6:46 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Friday 22 Jul 2016 14:04:07 Linus Walleij wrote:

>> For an oscilloscope or signal analyzer usecase with more than
>> 64 channels needing to be sampled simultaneously, we may need
>> to add another "large GPIO read" ABI, and also probably a new
>> driver API interface to achieve it. I've never seen hardware that can
>> read more values in parallel than 32 though, I chose 64 to get some
>> headroom.
>
> Such a use case would put strong real-time constraints on the system, I wonder
> how useful a GPIO-based signal analyzer would be. Are you aware of any GPIO
> hardware that can be programmed to sample at a precise point in time (or
> perhaps even periodically) ?

Nope. I would expect to close the gap to IIO and reuse their trigger system
in that case, instead of creating a new one. IIO uses either hardware
trigger interrupts (usually a fixed frequency, some supply hardware
timestamps with the interrupts) or alternatively hrtimers, which in turn
would I guess be most reliable using RT patches.

Yours,
Linus Walleij
