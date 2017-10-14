Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 467E54A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Oct 2017 12:41:22 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 77B47F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Oct 2017 12:41:21 +0000 (UTC)
Date: Sat, 14 Oct 2017 14:34:57 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Grant Likely <grant.likely@secretlab.ca>
Message-ID: <20171014143457.72df1f54@windsurf.home>
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

Hello,

On Mon, 9 Oct 2017 21:39:51 +0100, Grant Likely wrote:

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

I'd like to propose a quick discussion on how to avoid duplicating DT
description when a SoC is composed of aggregations of IP blocks that
are duplicated (in 2, 4 or 8 copies).

As an example, we currently have
arch/arm64/boot/dts/marvell/armada-cp110-master.dtsi and
arch/arm64/boot/dts/marvell/armada-cp110-slave.dtsi that are almost
identical, because they represent the same aggregation of IP blocks,
present two times in the same SoC (Marvell Armada 8K). As we are going
to have SoCs with more than 2 copies in the future, we want to find a
way to avoid duplicating the description of those aggregations.

I'd like to present the problem scope, a possible solution solely based
on C preprocessor macros, and then open the discussion to see what is
the right approach to solve this problem.

I don't think that more than 10-15 minutes is needed for presenting the
problem scope and one possible solution. The following discussion may
be longer though.

I'll be attending on both the morning and afternoon, but I'll be
leaving at ~4:30 PM.

Best regards,

Thomas Petazzoni
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
