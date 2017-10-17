Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9918AD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 17:24:16 +0000 (UTC)
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A890C422
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 17:24:15 +0000 (UTC)
Received: by mail-wm0-f66.google.com with SMTP id t69so5331177wmt.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 10:24:15 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
	<2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Oct 2017 19:24:13 +0200
Message-ID: <CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
To: Kumar Gala <kumar.gala@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi Kumar,

On Tue, Oct 17, 2017 at 7:02 PM, Kumar Gala <kumar.gala@linaro.org> wrote:
> I think this also gets to having bindings described in a structured way s=
o they can be utilized for validation of dts files.  We are doing a little =
of this in Zephyr since we are using a structured binding spec to generate =
code from .dts (since we don=E2=80=99t utilize a runtime dtb).

So you are basically generating board files from .dts?
(closing the loop ;-)

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds
