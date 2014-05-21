Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4DA3B8AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 11:16:52 +0000 (UTC)
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9C54B1F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 11:16:51 +0000 (UTC)
Received: by mail-ie0-f169.google.com with SMTP id at1so1796253iec.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 04:16:51 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <7hwqdgqtg5.fsf@paris.lan>
References: <1872038.43ncqEMWSx@avalon> <11117951.ql3xek1vCB@vostro.rjw.lan>
	<15562464.UYP7rKZIQt@vostro.rjw.lan> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan>
Date: Wed, 21 May 2014 13:16:50 +0200
Message-ID: <CAMuHMdV9ZTLrTHyXLMEovRK3M9rCcg=o118tDdv1YinP+ZKw=Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Kevin Hilman <khilman@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On Tue, May 20, 2014 at 6:57 PM, Kevin Hilman <khilman@linaro.org> wrote:
>> Furthermore, if the sensor is resumed first, it might try to access the
>> device, which requires the clock output by the ISP to be available, and thus
>> requires the ISP to be resumed. To solve this problem the ISP driver only
>> restarts the clocks in its PM resume callback, and restarts the video stream
>> (following the sequence described above) in its PM complete callback.
>
> For most devices, input clocks are modeled by the clock framework (or
> managed by the SoC's runtime PM core), and therefore, a pm_runtime_get()
> (or possibly an explict clk_enable()) is used to ensure the input clock
> is running.  In this external device example, it sounds to me like the
> sensor driver has no knowledge of its input clock so it has to rely on
> some other layer to resume things in the right order for correct
> functionality.
>
> Maybe I'm wrong here (likely, since I haven't looked at the code, and am
> admittedly very ignorant of the camera and display subsystems) but it
> sounds to me like what's missing is the sensor driver having knowledge
> of it's input clock and/or a way for it to request it's input clock to
> be enabled (e.g. clk_get/clk_enable.)

For static configuration, this could indeed be put in DT.

> Alternatively, what would proably be even better would be that the
> sensor driver has a reference to the actual device that provides its
> input clock (possibly via a DT phandle?) so that the sensor driver can
> simply do a pm_runtime_get() on the device providing the clock.

Why not a clocks property instead of a phandle?
Of course the actual device providing the clock needs to advertise
itself as a clock (e.g. in DT).

>> When adding more external devices to the mix the problem just becomes more
>> complex, especially when the devices are chained (for instance sensor -> video
>> processor -> ISP). The problem is similar on the display side, possibly with a
>> different resume ordering (it should be noted that the external devices vs.
>> internal device ordering might vary even inside the same class of devices -
>> camera or display).
>
> IMO, I still think that properly modeling the device dependenies
> combined with a "runtime PM centric" view of suspend/resume should allow
> the dependencies to be handled correctly for system suspend/resume and
> runtime PM.
>
> I think what complicates things here is not the PM specifics but
> probably the fact that the device hierarchy (and dependencies) may be
> dynamic depending on many factors like which sensors are in use,
> post-processing, etc. etc.
>
> Above, I suggested possibly using DT phandles to model these non
> parent/child relationships.  That's all fine if the dependencies are not
> changing, but if they are dynamic, we'll probably need something
> different.
>
> At least for starters though, static dependencies like this should be
> (relatively) easy to model in DT and combined with runtime PM
> refcounding on the dependencies, should be able to address the problem.

I'm still looking for a more generic way to handle such clocks, perhaps in
the driver core. Right now the driver is supposed to handle this, so it needs
to be aware of the existence of the clock, which may be optional.
E.g. if device modules in a new SoC suddenly gets gateable clocks,
do we have to modify all affected drivers? It would be nice if it would
"just work" by adding the clocks to DT.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
