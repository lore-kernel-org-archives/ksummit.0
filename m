Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25394996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Aug 2014 03:56:55 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8D18B1F985
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Aug 2014 03:56:54 +0000 (UTC)
Date: Mon, 18 Aug 2014 22:50:39 -0500
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140818225039.10769e25@concha.lan>
In-Reply-To: <15653604.eanYCV9OmK@avalon>
References: <15653604.eanYCV9OmK@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Unconference] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 18 Aug 2014 15:08:05 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hello,
> 
> As we still haven't hammered out PM dependencies I propose discussing it in 
> the unconference track. Shuah and Mauro have reminded me of their interest in 
> the topic, does anyone else want to discuss it ?

Count on me on that.

> The unconference slots are 30 minutes long only. We should avoid spending all 
> the allocated time presenting the problems, so please post your use case(s) in 
> a reply to this mail thread if you plan to participate.

One usecase we're seeing is how to properly resume a complex media device
that was streaming when the system got suspend. Resuming it is a complex
challenge, if we want to keep the device streaming after resume, as
such devices depend on:
- I2C subsystem (as the communication with tuner/demod depends on that);
- block subsystem and eventually userspace, in order to load a firmware
  (generally required by tuner and/or by the demod);
- DVB core subsystem, as some threads need to be started there;
- Media subsystem;
- Input subsystem (due to remote controller). Sometimes, IR is provided
  by a separate device driver, like mceusb, but there are some devices,
  where the IR receiver is connected to some weird block (on au0828 devices,
  the IR is connected to the Analog/Digital TV demod - au8522);
- Tuner sub-driver, with needs to tune to the last channel, after re-loading
  the firmware (if it needs);
- DVB (or analog TV) demodulator, with need to be coordinated with the
  tuner at dvb recovery, in order to pass the right parameters to decode
  the video system used by the tuned channel;
- For analog TV, the VBI decoding logic should also be reenabled, if
  it was active during suspend time;
- ALSA driver (on some cases, using an USB Vendor Class, but on other
  cases just uses the standard USB Audio Class supported by an independent
  driver;
- Restart some threads that were stopped at resume (some are
  driver-specific, while others are part of the DVB or Remote Controller
  core).

The PM recovery order is important, as doing it at the wrong order
may either cause the device to not work after resume or to produce
bad side effects.

For example, cx88 audio carrier detection happens by a kthread that
does some DSP processing to detect the audio standard. If the ALSA
audio is unmuted too early, white noise can be output to the
speakers.

On other devices, like tm6000, both audio, video and VBI comes via
the very same DMA engine, and are packed together (in a way that
looks like an MPEG-TS). So, the ALSA driver or VBI will only work
if the video is streaming.

Of course, we don't want to restart video streaming before having
the device tuned and the demod properly set.

Regards,
Mauro
