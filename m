Return-Path: <khilman@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 49AB39A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 00:39:08 +0000 (UTC)
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D0F82020F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 00:39:07 +0000 (UTC)
Received: by mail-pb0-f42.google.com with SMTP id md12so3288770pbc.29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 17:39:07 -0700 (PDT)
From: Kevin Hilman <khilman@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan> <31131010.huPvrnkcye@avalon>
Date: Thu, 22 May 2014 17:39:05 -0700
In-Reply-To: <31131010.huPvrnkcye@avalon> (Laurent Pinchart's message of "Fri,
	23 May 2014 02:18:59 +0200")
Message-ID: <7h61kxgwgm.fsf@paris.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Laurent Pinchart <laurent.pinchart@ideasonboard.com> writes:

> Hi Kevin,
>
> On Tuesday 20 May 2014 09:57:14 Kevin Hilman wrote:
>> Laurent Pinchart <laurent.pinchart@ideasonboard.com> writes:

[...]

I'll respond to the DMA/IOMMU part separately, as I need some time to
digest it.

>> > Furthermore, if the sensor is resumed first, it might try to access the
>> > device, which requires the clock output by the ISP to be available, and
>> > thus requires the ISP to be resumed. To solve this problem the ISP dri=
ver
>> > only restarts the clocks in its PM resume callback, and restarts the
>> > video stream (following the sequence described above) in its PM comple=
te
>> > callback.
>>
>> For most devices, input clocks are modeled by the clock framework (or
>> managed by the SoC's runtime PM core), and therefore, a pm_runtime_get()
>> (or possibly an explict clk_enable()) is used to ensure the input clock
>> is running.  In this external device example, it sounds to me like the
>> sensor driver has no knowledge of its input clock so it has to rely on
>> some other layer to resume things in the right order for correct
>> functionality.
>>=20
>> Maybe I'm wrong here (likely, since I haven't looked at the code, and am
>> admittedly very ignorant of the camera and display subsystems) but it
>> sounds to me like what's missing is the sensor driver having knowledge
>> of it's input clock and/or a way for it to request it's input clock to
>> be enabled (e.g. clk_get/clk_enable.)
>
> I'm glad that you point out likely being wrong yourself, as you are ;-)=20

Touch=C3=A9.

It's good to have a low standard for oneself. ;)

> The sensor driver manages the sensor input clock explicitly through
> CCF (or at least it should, not all drivers do their homework
> properly, but that's just a matter of fixing them), so it can
> enable/disable the clock when needed. If the clock provider driver
> becomes runtime PM centric then part of the problem would be fixed.

Great, that simplifies things a bit, except...

>> Alternatively, what would proably be even better would be that the
>> sensor driver has a reference to the actual device that provides its
>> input clock (possibly via a DT phandle?) so that the sensor driver can
>> simply do a pm_runtime_get() on the device providing the clock.
>
> Isn't it better for the sensor DT node to reference its input clock throu=
gh=20
> the clocks property and enable/disable the clock on demand instead of=20
> explicitly calling pm_runtime_(get|put) on the clock provider device ?

Possibly, but I suspect that's not going to be good enough.

As I mentioned in an earlier response to Geert, I don't think managing
clocks alone is enough.  I can imagine many platforms where a simple
clk_enable() of an input clock is not enough to bring the device
providing that clock out of a low power state.  For this to be generic
enough to handle those cases, I suspect runtime PM get/put is the right
way to go.

Of course, for many "simple" platforms, runtime PM get/put just ends up
doing a clk_enable/disable, but on the platforms where runtime PM is
slightly more... um, "interesting"... just doing a clk enable/disable
won't do what you hope.

>> > When adding more external devices to the mix the problem just becomes =
more
>> > complex, especially when the devices are chained (for instance sensor =
->
>> > video processor -> ISP). The problem is similar on the display side,
>> > possibly with a different resume ordering (it should be noted that the
>> > external devices vs. internal device ordering might vary even inside t=
he
>> > same class of devices - camera or display).
>>=20
>> IMO, I still think that properly modeling the device dependenies
>> combined with a "runtime PM centric" view of suspend/resume should allow
>> the dependencies to be handled correctly for system suspend/resume and
>> runtime PM.
>
> I definitely need to give this a bit more thought. I agree that it would=
=20
> likely solve part of the issue, but I'm not sure whether the rest is solv=
able=20
> with the infrastructure we have now.

Not without some enhancments, but IMO ensuring the frameworks are
runtime PM centric, and possibly extending runtime PM slightly where
needed is a better route than creating something new.  Whatever that
"something new" would be would end up duplicating much of the use
counting already done by runtime PM anyways.

>> I think what complicates things here is not the PM specifics but
>> probably the fact that the device hierarchy (and dependencies) may be
>> dynamic depending on many factors like which sensors are in use,
>> post-processing, etc. etc.
>>=20
>> Above, I suggested possibly using DT phandles to model these non
>> parent/child relationships.  That's all fine if the dependencies are not
>> changing, but if they are dynamic, we'll probably need something
>> different.
>
> They can be dynamic, yes. However, we already model the video data stream=
s=20
> dependencies using phandles in the V4L2 bindings, so the required informa=
tion=20
> is there. It would thus "just" be a matter of orchestrating all the invol=
ved=20
> components. If we go the runtime PM way the problem might be simplified, =
but=20
> as Ulf Hansson mentioned interactions between runtime PM and system=20
> suspend/resume need to be taken care of.

I'm unfortunately all too familiar with the interactions between system
PM and runtime PM, but I believe we have a pretty good grip on that now,
and the infrastructure is in place to solve those problems.

Kevin
