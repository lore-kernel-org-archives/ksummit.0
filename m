Return-Path: <robh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5DA08EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 14:14:15 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AD0F12A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 14:14:14 +0000 (UTC)
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3ED502191C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 14:14:14 +0000 (UTC)
Received: by mail-qt0-f174.google.com with SMTP id 31so10373512qtz.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 07:14:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <B7292660-D602-473E-9B47-CF7B4D2449D7@antoniou-consulting.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
	<2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
	<CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF3E64B904@USCULXMSG01.am.sony.com>
	<CACxGe6s8CbzRY7L1znq-nQ52eHp3pOu4X3pCX35ocQShnA_Ecw@mail.gmail.com>
	<B7292660-D602-473E-9B47-CF7B4D2449D7@antoniou-consulting.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 18 Oct 2017 09:13:52 -0500
Message-ID: <CAL_JsqJk8mnNGo=eywW0wApxNeLM3dQ0MQAeP6UKNRW852zs=A@mail.gmail.com>
To: Pantelis Antoniou <panto@antoniou-consulting.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Ian Lepore <ian@freebsd.org>,
	"devicetree-spec@vger.kernel.org" <devicetree-spec@vger.kernel.org>,
	"Bird, Timothy" <Tim.Bird@sony.com>
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

On Wed, Oct 18, 2017 at 7:59 AM, Pantelis Antoniou
<panto@antoniou-consulting.com> wrote:
> Hi Grant,
>
>> On Oct 18, 2017, at 15:14 , Grant Likely <grant.likely@secretlab.ca> wro=
te:
>>
>> On Tue, Oct 17, 2017 at 8:03 PM, Bird, Timothy <Tim.Bird@sony.com> wrote=
:
>>>> -----Original Message-----
>>>> From Geert Uytterhoeven on Tuesday, October 17, 2017 10:24 AM
>>>> On Tue, Oct 17, 2017 at 7:02 PM, Kumar Gala <kumar.gala@linaro.org> wr=
ote:
>>>>> I think this also gets to having bindings described in a structured w=
ay so
>>>> they can be utilized for validation of dts files.  We are doing a litt=
le of this in
>>>> Zephyr since we are using a structured binding spec to generate code f=
rom
>>>> .dts (since we don=E2=80=99t utilize a runtime dtb).
>>>>
>>>> So you are basically generating board files from .dts?
>>>> (closing the loop ;-)

Briefly, what Zephyr is doing is controlling configuration (what
drivers are built) and generating register base addresses and maybe
interrupts. That's not really board.dts -> board.c.

>>>
>>> I think we ought to do this on Linux, as a size optimization.
>>> -- Tim
>>>
>>> P.S.  I think I'll leave it ambiguous whether this was meant as a joke =
or not. :-)
>>
>
> As crazy that sounds it is possible using the YAML bindings, i.e. C struc=
ture definitions
> and fill-up from DT automatically. Whether this is a good idea it=E2=80=
=99s another question :)

Yeah, yeah. YAML solves *all* the problems.

>> Talk to Nicolas Pitre and Rob Herring about this. They've already made
>> a bunch of progress on reducing memory footprint.

Or just look at linux-next. :) The focus is purely on runtime RAM
usage with all code being XIP. Basically, I've reduced the size of the
unflattened tree by skipping unflattening of disabled nodes and
shrinking the unflattened tree structs. For example removing the
kobject for !SYSFS. This reduced RAM usage from 120K to 11K on an
stm32 board. The next thing in the heat map of RAM usage is struct
device size. There's some things like DMA related elements that could
be moved to separate structures, but that will be quite invasive.

Another idea is to run the kernel unflattening code on the tree at
build time and embed that as const data into the kernel. The
unflattening code is pretty self contained and XIP images are platform
specific anyway. It would also allow running all dtb files thru
unflattening at build time for some validation. Though I'm not sure
there's anything unflattening would fail on that dtc can't check.

Rob
