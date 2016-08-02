Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04C69724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:55:40 +0000 (UTC)
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 350D3A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:55:39 +0000 (UTC)
Received: by mail-oi0-f45.google.com with SMTP id 4so42019491oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 12:55:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <579A4A25.9020106@metafoo.de>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<CACRpkdYPNdtabj5zOXe9nyzbHsKGgo57dfojCDvfSNPEWAMZRg@mail.gmail.com>
	<2617443.e5mOt80N6v@avalon> <579A4A25.9020106@metafoo.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Aug 2016 21:55:37 +0200
Message-ID: <CACRpkdYM_ACZyHynTQyMJTLzAZtbc+yUbNDmLswxOQt-U6ztGQ@mail.gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
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

On Thu, Jul 28, 2016 at 8:08 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 07/28/2016 06:46 PM, Laurent Pinchart wrote:
>> Are you aware of any GPIO
>> hardware that can be programmed to sample at a precise point in time (or
>> perhaps even periodically) ?
>
> I have such hardware. It's custom hardware, non-public at the moment.
>
> But it works like this, for each pin you can configure whether it can be
> controlled independently, like a normal GPIO, or whether the values are
> sampled/updated to/from a continuous data stream that is regularly
> clocked (basically a 1-bit ADC/DAC). This falls right on the edge
> between GPIO and IIO and I'm really torn where to put it. For now I went
> with IIO since it predates the chardev GPIO interface and because of all
> the libiio magic.

I guess either GPIO should reuse the IIO triggers, or we create something
in IIO that uses GPIO from inside the kernel and add get_multiple() as
similar to set_multiple() to the API and thus make a generic GPIO sampler
driver in IIO that can reuse the IIO triggers, while using a plain GPIO
driver as back-end. If the APIs can be made precise enough.

We can even add get_multiple_with_timestamp() if need be to be
able to contain it in gpiolib.

Yours,
Linus Walleij
