Return-Path: <robh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C8159C0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 18:00:25 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 362F84BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 18:00:24 +0000 (UTC)
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CDDC721879
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 18:00:23 +0000 (UTC)
Received: by mail-qt0-f179.google.com with SMTP id k31so11345872qta.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 11:00:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF3E64BBCD@USCULXMSG01.am.sony.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
	<2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
	<CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF3E64B904@USCULXMSG01.am.sony.com>
	<CACxGe6s8CbzRY7L1znq-nQ52eHp3pOu4X3pCX35ocQShnA_Ecw@mail.gmail.com>
	<B7292660-D602-473E-9B47-CF7B4D2449D7@antoniou-consulting.com>
	<20171018131809.q5nccysb2j7lu4bn@piout.net>
	<CAMuHMdXhQQpnQEgOu92MVNd=m2FvkqD9XcYS3rMVMHpB2zY0Qw@mail.gmail.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF3E64BBCD@USCULXMSG01.am.sony.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 18 Oct 2017 13:00:02 -0500
Message-ID: <CAL_JsqJROBW3zAvG_D=ESqzwVOJiKZ-ZCC8Hm-cHRaXHiZ6ACA@mail.gmail.com>
To: "Bird, Timothy" <Tim.Bird@sony.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Ian Lepore <ian@freebsd.org>,
	"devicetree-spec@vger.kernel.org" <devicetree-spec@vger.kernel.org>,
	Pantelis Antoniou <panto@antoniou-consulting.com>
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

On Wed, Oct 18, 2017 at 12:41 PM, Bird, Timothy <Tim.Bird@sony.com> wrote:
>
>
>> -----Original Message-----
>> From Geert Uytterhoeven on Wednesday, October 18, 2017 6:22 AM
>> On Wed, Oct 18, 2017 at 3:18 PM, Alexandre Belloni
>> <alexandre.belloni@free-electrons.com> wrote:
>> > On 18/10/2017 at 15:59:00 +0300, Pantelis Antoniou wrote:
>> >> > On Oct 18, 2017, at 15:14 , Grant Likely <grant.likely@secretlab.ca=
>
>> wrote:
>> >> > On Tue, Oct 17, 2017 at 8:03 PM, Bird, Timothy <Tim.Bird@sony.com>
>> wrote:
>> >> >>> -----Original Message-----
>> >> >>> From Geert Uytterhoeven on Tuesday, October 17, 2017 10:24 AM
>> >> >>> On Tue, Oct 17, 2017 at 7:02 PM, Kumar Gala
>> <kumar.gala@linaro.org> wrote:
>> >> >>>> I think this also gets to having bindings described in a structu=
red way
>> so
>> >> >>> they can be utilized for validation of dts files.  We are doing a=
 little of
>> this in
>> >> >>> Zephyr since we are using a structured binding spec to generate c=
ode
>> from
>> >> >>> .dts (since we don=E2=80=99t utilize a runtime dtb).
>> >> >>>
>> >> >>> So you are basically generating board files from .dts?
>> >> >>> (closing the loop ;-)
>> >> >>
>> >> >> I think we ought to do this on Linux, as a size optimization.
>> >> >> -- Tim
>> >> >>
>> >> >> P.S.  I think I'll leave it ambiguous whether this was meant as a =
joke or
>> not. :-)
>> >>
>> >> As crazy that sounds it is possible using the YAML bindings, i.e. C s=
tructure
>> definitions
>> >> and fill-up from DT automatically. Whether this is a good idea it=E2=
=80=99s another
>> question :)
>> >
>> > But that doesn't work with any driver parsing custom properties (using
>> > of_property_read_* and the likes). I would very much like to see what
>> > are the boot time improvements when doing that ;)
>>
>> Unless you override of_property_read_*() to work on the dense C
>> structures instead?
>
> Or turn the property reads into macros that then turn into constant decla=
rations inline in the code.
> No need stop at dense C structures.  Of course you lose all configuration=
 flexibility at runtime.
> But then that's the kind of trade-off one often makes with embedded softw=
are, isn't it?

That's basically what Grant proposed[1]. Turn all the property strings
to numeric IDs that can directly reference the original FDT data
avoiding storing the property structs.

If you don't care about code size then removing runtime configuration
within the OF API (i.e. not reworking driver probe functions) is not
going to save much. And these days with XIP SPI flash chips, code size
is not so much the issue. Maybe you saw Nico's presentation at
Connect, but if not it is here[2].

Rob

[1] https://www.spinics.net/lists/devicetree/msg197417.html
[2] http://connect.linaro.org/resource/las16/las16-407/
