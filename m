Return-Path: <ben.dooks@codethink.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 300599F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 16:41:09 +0000 (UTC)
Received: from imap1.codethink.co.uk (imap1.codethink.co.uk [176.9.8.82])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7CC80483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 16:41:08 +0000 (UTC)
To: monstr@monstr.eu, Grant Likely <grant.likely@secretlab.ca>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	devicetree-spec@vger.kernel.org,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Julia Lawall <Julia.Lawall@lip6.fr>,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Lucas Stach <l.stach@pengutronix.de>, Kumar Gala <kumar.gala@linaro.org>,
	Andy Gross <andy.gross@linaro.org>, Rob Herring <rob.herring@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<39f87f46-da67-11d9-4336-213c13025568@monstr.eu>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Message-ID: <8a168960-2dae-35cc-e610-0fe257c9121d@codethink.co.uk>
Date: Mon, 16 Oct 2017 17:40:57 +0100
MIME-Version: 1.0
In-Reply-To: <39f87f46-da67-11d9-4336-213c13025568@monstr.eu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
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

On 16/10/17 06:36, Michal Simek wrote:
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
> 
> And next topic is discuss criteria for adding new DTS board files to
> kernel for supporting custom boards especially for arm32 which can end
> up with a lot of dts files in this folder.
> If make sense to permit only boards with something new or just enable
> reference boards to go in.

I am interested in this, as we seem to be repeating the quantity
issue with the board file of having many .dts sources in the kernel.

I'm not sure how to deal with this, on one hand only having the
reference (and possibly popular) boards is going to keep the size
down. On the other hand out of tree .dts files are going to be
difficult to find (or vanish with the vendor).

It seems we are still no closer to having a DT repository outside
the kernel.

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius
