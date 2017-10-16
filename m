Return-Path: <monstr@monstr.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3C043EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 05:36:20 +0000 (UTC)
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77688F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 05:36:19 +0000 (UTC)
Received: by mail-wm0-f68.google.com with SMTP id q124so6517159wmb.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Oct 2017 22:36:19 -0700 (PDT)
Reply-To: monstr@monstr.eu
To: Grant Likely <grant.likely@secretlab.ca>,
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
From: Michal Simek <monstr@monstr.eu>
Message-ID: <39f87f46-da67-11d9-4336-213c13025568@monstr.eu>
Date: Mon, 16 Oct 2017 07:36:08 +0200
MIME-Version: 1.0
In-Reply-To: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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

Hi,

On 9.10.2017 22:39, Grant Likely wrote:
> Kernel Summit is now just over 2 weeks away and it is time to pull
> together the schedule for the Devicetree workshop. Originally I
> planned on just an afternoon, but I've got the room for the whole day,
> so I've got a lot of flexibility on the schedule. Unscheduled time can
> be used for hacking.
> 
> Date: 26 Oct 2017
> Time: 9:00am-5:30pm (Lunch from 12:30-2:30)
> Location: Athens room - Hilton Prague
> 
> If you plan to attend, make sure you update your OSSunmitE/ELCE
> registration to include the DT Workshop (log in to access and modify
> your registration):
> 
> https://www.regonline.com/register/login.aspx?eventID=1883377&MethodId=0&EventsessionId=&Email_Address=&membershipID=
> 
> Here is my current list of topics in no particular order, including
> the topic moderator:
> 
> Runtime memory consumption (Rob Herring)
> Overlay maintenance plan (TBC)
> Stable ABI for devicetree (TBC)
> DT YAML encoding (Pantelis Antoniou)
> DT Schema format - option 1 (Pantelis Antoniou)
> DT Schema format - option 2 (Grant Likely)
> Sharing Generic bindings (TBC)
> devicetree.org update (Grant)
> 
> Reply to this email if you want to propose another topic.
> 
> Reply privately if there is a particular topic you want to attend but
> you are unable to be there in the morning or afternoon. I'll put the
> actual agenda together a week out from the event.

I would like to talk how to add support for AArch32 based on arm64 dts file.

And next topic is discuss criteria for adding new DTS board files to
kernel for supporting custom boards especially for arm32 which can end
up with a lot of dts files in this folder.
If make sense to permit only boards with something new or just enable
reference boards to go in.

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP SoCs
