Return-Path: <kumar.gala@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C0455AB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 14:07:03 +0000 (UTC)
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 98DD412A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 14:07:02 +0000 (UTC)
Received: by mail-oi0-f54.google.com with SMTP id h200so9073290oib.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 07:07:02 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Kumar Gala <kumar.gala@linaro.org>
In-Reply-To: <CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
Date: Wed, 18 Oct 2017 09:07:00 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <2E8E07AD-39FF-419D-A06A-B54E977E9F42@linaro.org>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
	<2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
	<CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	devicetree-spec@vger.kernel.org,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Ian Lepore <ian@freebsd.org>
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


> On Oct 17, 2017, at 12:24 PM, Geert Uytterhoeven =
<geert@linux-m68k.org> wrote:
>=20
> Hi Kumar,
>=20
> On Tue, Oct 17, 2017 at 7:02 PM, Kumar Gala <kumar.gala@linaro.org> =
wrote:
>> I think this also gets to having bindings described in a structured =
way so they can be utilized for validation of dts files.  We are doing a =
little of this in Zephyr since we are using a structured binding spec to =
generate code from .dts (since we don=E2=80=99t utilize a runtime dtb).
>=20
> So you are basically generating board files from .dts?
> (closing the loop ;-)

Not exactly board files, more like platform data at this point.  IRQ, =
MMIO addresses, stuff like that.

- k
