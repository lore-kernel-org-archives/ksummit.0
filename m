Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 938F2979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 08:25:10 +0000 (UTC)
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0411C2022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 08:25:09 +0000 (UTC)
Received: by mail-ob0-f169.google.com with SMTP id vb8so5098883obc.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 01:25:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <31131010.huPvrnkcye@avalon>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan> <31131010.huPvrnkcye@avalon>
Date: Fri, 23 May 2014 10:25:09 +0200
Message-ID: <CACRpkdbZ4es4oieLzHvhTVxLbNO8_jRCLen55E-RDPTVRc75Mw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 23, 2014 at 2:18 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tuesday 20 May 2014 09:57:14 Kevin Hilman wrote:

>> Alternatively, what would proably be even better would be that the
>> sensor driver has a reference to the actual device that provides its
>> input clock (possibly via a DT phandle?) so that the sensor driver can
>> simply do a pm_runtime_get() on the device providing the clock.
>
> Isn't it better for the sensor DT node to reference its input clock through
> the clocks property and enable/disable the clock on demand instead of
> explicitly calling pm_runtime_(get|put) on the clock provider device ?

This is tangent to another discussion we've had off and on whether
a device's resources (clocks, regulators, GPIOs, pins, pwms, D/As...)
should be handled explicitly by the driver or implicitly by e.g. a
PM domain.

It appears that currently we have bias such that for a discrete
component (such as some sensor) soldered on a board with
rails and stuff, these generally do explicit resource management
with clk_prepare_enable() and friends.

On the other hand there are some SoCs (OMAP especially but also
some Reneasa SH stuff IIRC!) that does implicit resource management
of devices on the SoC using PM domains.

This is a typical example of implicit resource management:
drivers/base/power/clock_ops.c

As PM domains are really not just for SoCs the broader question
of whether runtime resource management should be explicit using
handles in the drivers or implicit by referencing PM domain pops up.

The mixture of both that we have right now is a bit confusing,
admittedly.

Yours,
Linus Walleij
