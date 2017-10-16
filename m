Return-Path: <robh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 96F34BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:12:21 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 878B14D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:12:20 +0000 (UTC)
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE2BD21925
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:12:19 +0000 (UTC)
Received: by mail-wm0-f42.google.com with SMTP id l68so3744946wmd.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 07:12:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <39f87f46-da67-11d9-4336-213c13025568@monstr.eu>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<39f87f46-da67-11d9-4336-213c13025568@monstr.eu>
From: Rob Herring <robh@kernel.org>
Date: Mon, 16 Oct 2017 09:11:57 -0500
Message-ID: <CABGGiswXP800Pshc8jpVv3N4O-u2hFHJs-Ut_xVe8xV9ixcJSw@mail.gmail.com>
To: Michal Simek <monstr@monstr.eu>
Content-Type: text/plain; charset="UTF-8"
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	devicetree-spec@vger.kernel.org,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andy Gross <andy.gross@linaro.org>, Lucas Stach <l.stach@pengutronix.de>,
	David Gibson <david@gibson.dropbear.id.au>
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

On Mon, Oct 16, 2017 at 12:36 AM, Michal Simek <monstr@monstr.eu> wrote:
> Hi,
>
> On 9.10.2017 22:39, Grant Likely wrote:
>> Kernel Summit is now just over 2 weeks away and it is time to pull
>> together the schedule for the Devicetree workshop. Originally I
>> planned on just an afternoon, but I've got the room for the whole day,
>> so I've got a lot of flexibility on the schedule. Unscheduled time can
>> be used for hacking.
>>
>> Date: 26 Oct 2017
>> Time: 9:00am-5:30pm (Lunch from 12:30-2:30)
>> Location: Athens room - Hilton Prague
>>
>> If you plan to attend, make sure you update your OSSunmitE/ELCE
>> registration to include the DT Workshop (log in to access and modify
>> your registration):
>>
>> https://www.regonline.com/register/login.aspx?eventID=1883377&MethodId=0&EventsessionId=&Email_Address=&membershipID=
>>
>> Here is my current list of topics in no particular order, including
>> the topic moderator:
>>
>> Runtime memory consumption (Rob Herring)
>> Overlay maintenance plan (TBC)
>> Stable ABI for devicetree (TBC)
>> DT YAML encoding (Pantelis Antoniou)
>> DT Schema format - option 1 (Pantelis Antoniou)
>> DT Schema format - option 2 (Grant Likely)
>> Sharing Generic bindings (TBC)
>> devicetree.org update (Grant)
>>
>> Reply to this email if you want to propose another topic.
>>
>> Reply privately if there is a particular topic you want to attend but
>> you are unable to be there in the morning or afternoon. I'll put the
>> actual agenda together a week out from the event.
>
> I would like to talk how to add support for AArch32 based on arm64 dts file.

We already have that for RPi3, but it's a bit hacky in that you have
to include files from one arch to the other. What I'd like to see
ideally is no dependency on $ARCH to build dts files. You can't build
dts files for an arch without a cross-compiler installed which is an
artificial dependency. The dtb should be independent of whether you're
building for 32 or 64 bit.

There's the other aspect of being able to do armv8 32-bit builds as
there's no explicit support for v8 in arch/arm/. But that's not a DT
issue.

> And next topic is discuss criteria for adding new DTS board files to
> kernel for supporting custom boards especially for arm32 which can end
> up with a lot of dts files in this folder.

We really should move the arm32 files into subdirs for each SoC vendor
IMO, but I think armsoc maintainers have been against that churn.

> If make sense to permit only boards with something new or just enable
> reference boards to go in.

The board dts files are generally pretty minimal. What's the issue
here? Just lots of files in arch/arm/boot/dts?

Rob
