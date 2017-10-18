Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 267FE901
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 10:12:00 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9072E46F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 10:11:59 +0000 (UTC)
Date: Wed, 18 Oct 2017 12:11:57 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Ian Lepore <ian@freebsd.org>
Message-ID: <20171018121157.059417a8@windsurf.home>
In-Reply-To: <1508257276.74236.38.camel@freebsd.org>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: devicetree-spec@vger.kernel.org,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Devicetree Workshop at Kernel Summit Prague
 (26 Oct 2017)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On Tue, 17 Oct 2017 10:21:16 -0600, Ian Lepore wrote:

> I've run into the same thing in FreeBSD. =C2=A0We use bindings and dts
> files, exacted periodically from the linux tree and imported into ours,
> for all modern arm boards/systems. =C2=A0Several times I've created drive=
rs
> for small things like i2c RTC chips that aren't supported currently by
> linux, and it's not clear to me that it's even possible to submit
> bindings and dts for them back upstream without also submitting a linux
> driver that uses them (which of course I'm not in a position to do).

You don't have to submit a driver to submit a binding.

Examples of bindings that are not supported by any upstream driver:

  Documentation/devicetree/bindings/net/wireless/esp,esp8089.txt
  Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt

and there are probably more.

Best regards,

Thomas
--=20
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
