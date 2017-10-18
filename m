Return-Path: <panto@antoniou-consulting.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18DC4B2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 13:07:29 +0000 (UTC)
Received: from li42-95.members.linode.com (li42-95.members.linode.com
	[209.123.162.95])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0417D140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 13:07:27 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Pantelis Antoniou <panto@antoniou-consulting.com>
In-Reply-To: <CACxGe6s8CbzRY7L1znq-nQ52eHp3pOu4X3pCX35ocQShnA_Ecw@mail.gmail.com>
Date: Wed, 18 Oct 2017 15:59:00 +0300
Content-Transfer-Encoding: quoted-printable
Message-Id: <B7292660-D602-473E-9B47-CF7B4D2449D7@antoniou-consulting.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
	<2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
	<CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF3E64B904@USCULXMSG01.am.sony.com>
	<CACxGe6s8CbzRY7L1znq-nQ52eHp3pOu4X3pCX35ocQShnA_Ecw@mail.gmail.com>
To: Grant Likely <grant.likely@secretlab.ca>
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

Hi Grant,

> On Oct 18, 2017, at 15:14 , Grant Likely <grant.likely@secretlab.ca> =
wrote:
>=20
> On Tue, Oct 17, 2017 at 8:03 PM, Bird, Timothy <Tim.Bird@sony.com> =
wrote:
>>> -----Original Message-----
>>> =46rom Geert Uytterhoeven on Tuesday, October 17, 2017 10:24 AM
>>> On Tue, Oct 17, 2017 at 7:02 PM, Kumar Gala <kumar.gala@linaro.org> =
wrote:
>>>> I think this also gets to having bindings described in a structured =
way so
>>> they can be utilized for validation of dts files.  We are doing a =
little of this in
>>> Zephyr since we are using a structured binding spec to generate code =
from
>>> .dts (since we don=E2=80=99t utilize a runtime dtb).
>>>=20
>>> So you are basically generating board files from .dts?
>>> (closing the loop ;-)
>>=20
>> I think we ought to do this on Linux, as a size optimization.
>> -- Tim
>>=20
>> P.S.  I think I'll leave it ambiguous whether this was meant as a =
joke or not. :-)
>=20

As crazy that sounds it is possible using the YAML bindings, i.e. C =
structure definitions
and fill-up from DT automatically. Whether this is a good idea it=E2=80=99=
s another question :)

> Talk to Nicolas Pitre and Rob Herring about this. They've already made
> a bunch of progress on reducing memory footprint.
>=20
> g.
>=20
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> --
> To unsubscribe from this list: send the line "unsubscribe devicetree" =
in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
