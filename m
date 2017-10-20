Return-Path: <robh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66DDEBE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 13:37:49 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D354BE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 13:37:48 +0000 (UTC)
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7B6B421924
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 13:37:48 +0000 (UTC)
Received: by mail-qt0-f182.google.com with SMTP id j58so18472298qtj.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 06:37:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <fea62563-6629-6d79-06a9-3d17c97ad238@st.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CAGb2v67GU4uW7uPMrqFjTW0qBR6LPNeX4Md+tf9S=HRWT_GVqA@mail.gmail.com>
	<20171018110958.mh76pngzluazmc7y@sirena.co.uk>
	<20171018175910.GP12015@bill-the-cat>
	<FD387FCC-3F95-48DF-B412-3384EF96FCFC@fubar.geek.nz>
	<CAL_JsqJTE5p0zjm-66D2143dEx+xQ0uKCV-20kMt-kq=SOa-8Q@mail.gmail.com>
	<23a238d7-0b3d-8b46-b2fe-88b9d0841aa1@st.com>
	<CAL_Jsq+p=-yTY4BNKXdSccPcBWsCUkP8HPQ-ergZXPB8msY5ig@mail.gmail.com>
	<59E8F2EC.5090602@gmail.com>
	<fea62563-6629-6d79-06a9-3d17c97ad238@st.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 20 Oct 2017 08:37:26 -0500
Message-ID: <CAL_Jsq+kYCWFR5vSCuvT--N-hHTfFfEVrsv8VHw7PMiyONYs8A@mail.gmail.com>
To: Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Tom Rini <trini@konsulko.com>, Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Rob Herring <rob.herring@linaro.org>,
	"devicetree-spec@vger.kernel.org" <devicetree-spec@vger.kernel.org>,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andrew Turner <andrew@fubar.geek.nz>,
	Grant Likely <grant.likely@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Andy Gross <andy.gross@linaro.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Lucas Stach <l.stach@pengutronix.de>
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

On Fri, Oct 20, 2017 at 4:55 AM, Alexandre Torgue
<alexandre.torgue@st.com> wrote:
> Hi Frank,
>
>
> On 10/19/2017 08:46 PM, Frank Rowand wrote:
>> On 10/19/17 07:59, Rob Herring wrote:
>>> On Thu, Oct 19, 2017 at 9:00 AM, Alexandre Torgue
>>> <alexandre.torgue@st.com> wrote:
>>>>
>>>> Hi Rob,
>>>>
>>>>
>>>> On 10/19/2017 01:53 AM, Rob Herring wrote:
>>>>> On Wed, Oct 18, 2017 at 6:28 PM, Andrew Turner <andrew@fubar.geek.nz>
>>>>> wrote:
>>>
>>>
>>> [...]

>>>>          -->For example, I want to use the same dtsi files between Linux
>>>> and
>>>> U-boot. If in u-boot dts file I overload several "status" entry by
>>>> "disabled", is it possible that compiler doesn't build it ? And what
>>>> about
>>>> not used phandle ?
>>>
>>>
>>> You certainly could remove disabled nodes in dtc. I'm not sure how
>>> hard it would be to plumb into dtc. I think phandle properties are
>>> already only created if there's a reference to them. If that is
>>
>>
>> Yes, phandles are only created if referenced, unless compiled
>> for loading overlays into:
>>
>
> Are there DTC "extra" options to use to not build those useless phandles ? I
> just tried to revert the dtb to dts (using following command:
>  ./scripts/dtc/dtc -I dtb -O dts -o stm32f469-disco-flat.dts
> arch/arm/boot/dts/stm32f469-disco.dtb)
>
> I see that phandles not used are in the dts output file. It is especially an
> issue for pinmux phandles. All pinmux groups possibilities are written
> inside (in my case) stm32f4-pinctrl.dtsi. This file is included in each
> stm32 board dts files, and in those stm32 board dts files only required node
> are enabled. But I see that all pinmux definitions are embedded inside dtb
> binary (even ones not used in board dts file).

Ah, you mean removing nodes without a phandle reference, not phandles
themselves.

There's no way dtc could do that because no reference doesn't equate
to unused. For example, there's no phandle reference to the /memory
node, but that is for sure needed. We would have to add some
annotation to nodes that could be removed if unused. This could be
some source annotation (/delete-if-unused/), some extension to status
property, or some new property.

Another option would be just mark all those nodes disabled and then
postprocess the dtb to mark them okay if they have a phandle property
and delete the node if not.

Rob
