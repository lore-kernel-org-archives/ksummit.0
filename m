Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07D36B1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 12:14:48 +0000 (UTC)
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47E91516
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 12:14:47 +0000 (UTC)
Received: by mail-pf0-f182.google.com with SMTP id x7so3843603pfa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 05:14:47 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF3E64B904@USCULXMSG01.am.sony.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CACxGe6tPQxwzN14TZtgNhw7OOuePLJxODrn-_b4gMDGzAFEf1Q@mail.gmail.com>
	<1508257276.74236.38.camel@freebsd.org>
	<2D4E6B6D-8F07-46D0-BB36-D97916802893@linaro.org>
	<CAMuHMdW-=-CdnD5Eb_w7fc7=c64i+bu=yv9_c0cj3UM940d8EA@mail.gmail.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF3E64B904@USCULXMSG01.am.sony.com>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Wed, 18 Oct 2017 13:14:26 +0100
Message-ID: <CACxGe6s8CbzRY7L1znq-nQ52eHp3pOu4X3pCX35ocQShnA_Ecw@mail.gmail.com>
To: "Bird, Timothy" <Tim.Bird@sony.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>, Ian Lepore <ian@freebsd.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"devicetree-spec@vger.kernel.org" <devicetree-spec@vger.kernel.org>
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

On Tue, Oct 17, 2017 at 8:03 PM, Bird, Timothy <Tim.Bird@sony.com> wrote:
>> -----Original Message-----
>> From Geert Uytterhoeven on Tuesday, October 17, 2017 10:24 AM
>> On Tue, Oct 17, 2017 at 7:02 PM, Kumar Gala <kumar.gala@linaro.org> wrot=
e:
>> > I think this also gets to having bindings described in a structured wa=
y so
>> they can be utilized for validation of dts files.  We are doing a little=
 of this in
>> Zephyr since we are using a structured binding spec to generate code fro=
m
>> .dts (since we don=E2=80=99t utilize a runtime dtb).
>>
>> So you are basically generating board files from .dts?
>> (closing the loop ;-)
>
> I think we ought to do this on Linux, as a size optimization.
>  -- Tim
>
> P.S.  I think I'll leave it ambiguous whether this was meant as a joke or=
 not. :-)

Talk to Nicolas Pitre and Rob Herring about this. They've already made
a bunch of progress on reducing memory footprint.

g.

> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
