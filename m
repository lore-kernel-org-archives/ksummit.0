Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9C88985D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 23:43:25 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id C579F1FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 23:43:24 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 24 May 2014 02:00:24 +0200
Message-ID: <2705495.9EHqndMMf0@vostro.rjw.lan>
In-Reply-To: <CACRpkdbZ4es4oieLzHvhTVxLbNO8_jRCLen55E-RDPTVRc75Mw@mail.gmail.com>
References: <1872038.43ncqEMWSx@avalon> <31131010.huPvrnkcye@avalon>
	<CACRpkdbZ4es4oieLzHvhTVxLbNO8_jRCLen55E-RDPTVRc75Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 23, 2014 10:25:09 AM Linus Walleij wrote:
> On Fri, May 23, 2014 at 2:18 AM, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > On Tuesday 20 May 2014 09:57:14 Kevin Hilman wrote:
> 
> >> Alternatively, what would proably be even better would be that the
> >> sensor driver has a reference to the actual device that provides its
> >> input clock (possibly via a DT phandle?) so that the sensor driver can
> >> simply do a pm_runtime_get() on the device providing the clock.
> >
> > Isn't it better for the sensor DT node to reference its input clock through
> > the clocks property and enable/disable the clock on demand instead of
> > explicitly calling pm_runtime_(get|put) on the clock provider device ?
> 
> This is tangent to another discussion we've had off and on whether
> a device's resources (clocks, regulators, GPIOs, pins, pwms, D/As...)
> should be handled explicitly by the driver or implicitly by e.g. a
> PM domain.
> 
> It appears that currently we have bias such that for a discrete
> component (such as some sensor) soldered on a board with
> rails and stuff, these generally do explicit resource management
> with clk_prepare_enable() and friends.
> 
> On the other hand there are some SoCs (OMAP especially but also
> some Reneasa SH stuff IIRC!) that does implicit resource management
> of devices on the SoC using PM domains.
> 
> This is a typical example of implicit resource management:
> drivers/base/power/clock_ops.c
> 
> As PM domains are really not just for SoCs the broader question
> of whether runtime resource management should be explicit using
> handles in the drivers or implicit by referencing PM domain pops up.

When I was adding PM domains to the PM core one of the concerns was
that the PM resources the drivers can access may not be independent and
using them would require synchronization between drivers.  Using PM
domains is one of the ways to achieve that.

Also using PM domains helps to address the case when the same driver
needs to be used on different platforms with different PM configurations.

> The mixture of both that we have right now is a bit confusing,
> admittedly.

I suppose that this is for historical reasons mostly (different platforms
chose to do things differently and code duplication between them related
to handling analogous IP blocks in slightly different ways was less of
a concern in the past).

For driver portability, however, there has to be a level of indirection
between the driver and the PM features of the platform and PM domains can be
used for providing something like that.

Rafael
