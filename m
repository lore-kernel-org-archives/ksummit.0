Return-Path: <robh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D63D1AAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 19:46:21 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 374641AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 19:46:21 +0000 (UTC)
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C331C2191E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 19:46:20 +0000 (UTC)
Received: by mail-qt0-f169.google.com with SMTP id k31so34160105qta.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 12:46:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <8a168960-2dae-35cc-e610-0fe257c9121d@codethink.co.uk>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<39f87f46-da67-11d9-4336-213c13025568@monstr.eu>
	<8a168960-2dae-35cc-e610-0fe257c9121d@codethink.co.uk>
From: Rob Herring <robh@kernel.org>
Date: Mon, 16 Oct 2017 14:45:59 -0500
Message-ID: <CAL_JsqJxFJSE-=778oHvNgpaBzhX9mBSzh1a0ZMvwSG69qStLw@mail.gmail.com>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset="UTF-8"
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Rob Herring <rob.herring@linaro.org>,
	"devicetree-spec@vger.kernel.org" <devicetree-spec@vger.kernel.org>,
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

On Mon, Oct 16, 2017 at 11:40 AM, Ben Dooks <ben.dooks@codethink.co.uk> wrote:
> On 16/10/17 06:36, Michal Simek wrote:
>>
>> Hi,
>>
>> On 9.10.2017 22:39, Grant Likely wrote:
>>>
>>> Kernel Summit is now just over 2 weeks away and it is time to pull
>>> together the schedule for the Devicetree workshop. Originally I
>>> planned on just an afternoon, but I've got the room for the whole day,
>>> so I've got a lot of flexibility on the schedule. Unscheduled time can
>>> be used for hacking.
>>>
>>> Date: 26 Oct 2017
>>> Time: 9:00am-5:30pm (Lunch from 12:30-2:30)
>>> Location: Athens room - Hilton Prague
>>>
>>> If you plan to attend, make sure you update your OSSunmitE/ELCE
>>> registration to include the DT Workshop (log in to access and modify
>>> your registration):
>>>
>>>
>>> https://www.regonline.com/register/login.aspx?eventID=1883377&MethodId=0&EventsessionId=&Email_Address=&membershipID=
>>>
>>> Here is my current list of topics in no particular order, including
>>> the topic moderator:
>>>
>>> Runtime memory consumption (Rob Herring)
>>> Overlay maintenance plan (TBC)
>>> Stable ABI for devicetree (TBC)
>>> DT YAML encoding (Pantelis Antoniou)
>>> DT Schema format - option 1 (Pantelis Antoniou)
>>> DT Schema format - option 2 (Grant Likely)
>>> Sharing Generic bindings (TBC)
>>> devicetree.org update (Grant)
>>>
>>> Reply to this email if you want to propose another topic.
>>>
>>> Reply privately if there is a particular topic you want to attend but
>>> you are unable to be there in the morning or afternoon. I'll put the
>>> actual agenda together a week out from the event.
>>
>>
>> I would like to talk how to add support for AArch32 based on arm64 dts
>> file.
>>
>> And next topic is discuss criteria for adding new DTS board files to
>> kernel for supporting custom boards especially for arm32 which can end
>> up with a lot of dts files in this folder.
>> If make sense to permit only boards with something new or just enable
>> reference boards to go in.
>
>
> I am interested in this, as we seem to be repeating the quantity
> issue with the board file of having many .dts sources in the kernel.

The problem was not so much having board files in the kernel. It was
how to scale support for boards and SoCs with each family structuring
things their own, different way.

IIRC, the ARM tree was at ~400 boards at the start of DT conversion.
Now we're at ~1100 boards for arm/arm64. Plus we still have 264 that
aren't converted to DT.

> I'm not sure how to deal with this, on one hand only having the
> reference (and possibly popular) boards is going to keep the size
> down. On the other hand out of tree .dts files are going to be
> difficult to find (or vanish with the vendor).

Why do we care? What problem is that causing?

> It seems we are still no closer to having a DT repository outside
> the kernel.

In relationship to the above what problem would that solve? We've got
all the platform maintainers and arm-soc maintainers to handle dts
files. Mark and myself along with subsystem maintainers reviewing and
applying device bindings. If you move all that to a separate
repository, then you have me because no one else has volunteered. I'm
pretty sure no one wants me as the single point of failure.

Rob
