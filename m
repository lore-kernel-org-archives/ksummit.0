Return-Path: <wens@csie.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B564F978
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 10:41:02 +0000 (UTC)
Received: from smtp.csie.ntu.edu.tw (smtp.csie.ntu.edu.tw [140.112.30.61])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B116C3F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 10:41:01 +0000 (UTC)
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: b93043)
	by smtp.csie.ntu.edu.tw (Postfix) with ESMTPSA id BB82326F42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 18:35:48 +0800 (CST)
Received: by mail-wr0-f172.google.com with SMTP id k7so4492021wre.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 03:35:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171017114823.58476908@bbrezillon>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 18 Oct 2017 18:35:24 +0800
Message-ID: <CAGb2v67GU4uW7uPMrqFjTW0qBR6LPNeX4Md+tf9S=HRWT_GVqA@mail.gmail.com>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset="UTF-8"
Cc: Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Rob Herring <rob.herring@linaro.org>, devicetree-spec@vger.kernel.org,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Andy Gross <andy.gross@linaro.org>,
	David Gibson <david@gibson.dropbear.id.au>, Tom Rini <trini@konsulko.com>,
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

Hi Grant,

On Tue, Oct 17, 2017 at 5:48 PM, Boris Brezillon
<boris.brezillon@free-electrons.com> wrote:
> Hello Grant,
>
> On Mon, 9 Oct 2017 21:39:51 +0100
> Grant Likely <grant.likely@secretlab.ca> wrote:
>
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
>
> Not sure yet if I'll attend the DT workshop or not, but I thought I
> could ask my question here because it might be of interest to someone
> else who is attending.
>
> What happens when the DT bindings is not documented in Linux but in an
> another project because this project was the first to use it.
>
> I had the case here http://patchwork.ozlabs.org/patch/810275/, and I'm
> not sure what's the policy when this happens. Should we add a file
> under Documentation/devicetree/bindings/... that points to the external
> doc file, should we duplicate the DT bindings doc in Linux, or should
> we just leave the bindings undocumented in the kernel tree?

I'd like to add something on the topic of non-Linux projects. In this
case it's diverging DT bindings from U-boot:

https://patchwork.ozlabs.org/patch/823158/

U-boot already has a set of devicetree binding additions:
https://github.com/u-boot/u-boot/tree/master/doc/device-tree-bindings

The patch in question wants to ab(use) the regulator-name property for
driver instance binding. In my opinion this is not going to fly, as
boards are free to define the names. This either sees no use other than
as a dirty workaround for dts files that aren't following the PMIC
regulator bindings (regulator node names should follow well defined,
identifying names), or results in divergence of the DT files.

So far I've been unable to dissuade the author. Unfortunately I won't
be attending the workshop, as I had planned on some sightseeing and
the workshop is already full right now. Hope this gets discussed in
some manner.

Regards
ChenYu
