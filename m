Return-Path: <boris.brezillon@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE4C5AA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 09:57:15 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 135EF4C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 09:57:14 +0000 (UTC)
Date: Tue, 17 Oct 2017 11:48:23 +0200
From: Boris Brezillon <boris.brezillon@free-electrons.com>
To: Grant Likely <grant.likely@secretlab.ca>
Message-ID: <20171017114823.58476908@bbrezillon>
In-Reply-To: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Rob Herring <rob.herring@linaro.org>, devicetree-spec@vger.kernel.org,
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

Hello Grant,

On Mon, 9 Oct 2017 21:39:51 +0100
Grant Likely <grant.likely@secretlab.ca> wrote:

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

Not sure yet if I'll attend the DT workshop or not, but I thought I
could ask my question here because it might be of interest to someone
else who is attending.

What happens when the DT bindings is not documented in Linux but in an
another project because this project was the first to use it.

I had the case here http://patchwork.ozlabs.org/patch/810275/, and I'm
not sure what's the policy when this happens. Should we add a file
under Documentation/devicetree/bindings/... that points to the external
doc file, should we duplicate the DT bindings doc in Linux, or should
we just leave the bindings undocumented in the kernel tree?

Regards,

Boris
