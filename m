Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B14F791A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:04:38 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4A8D117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:04:37 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Date: Thu, 28 Jul 2016 19:04:49 +0300
Message-ID: <3704346.bW37OlXF5c@avalon>
In-Reply-To: <20160728092558.3efa4bf8@recife.lan>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<1591503.qrDIUm0YXt@avalon> <20160728092558.3efa4bf8@recife.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
	and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Mauro,

On Thursday 28 Jul 2016 09:25:58 Mauro Carvalho Chehab wrote:
> Em Thu, 28 Jul 2016 14:24:49 +0300 Laurent Pinchart escreveu:
> > On Thursday 28 Jul 2016 08:18:08 Mauro Carvalho Chehab wrote:
> > > Em Wed, 27 Jul 2016 09:50:04 -0700 Luis R. Rodriguez escreveu:
> > > > (first e-mail bounced)
> > > > 
> > > > Rafael has proposed has a set of patches to help deal with functional
> > > > dependencies between devices to help with power management. Mauro has
> > > > spoken briefly before over the media controller feature graph used to
> > > > help build relationship between complex dynamic dependencies.
> > > 
> > > Actually, there are two separate at the media subsystem:
> > > 
> > > 1) the complex dependencies at the build system, required by the media
> > > devices, as almost all media hardware require multiple drivers in order
> > > to work. The media controller is unrelated to it.
> > > 
> > > We have right now a very complex Kconfig setup, as we try to map what
> > > user wants (a driver for the board "foo") with the requirements that
> > > such "foo" device requires (e. g. tuner "bar", demod "foobar",
> > > main driver "foodriver", etc).
> > > 
> > > 2) the complexity of setting up pipelines using the media controller.
> > > 
> > > The media controller reflects the complexity of the media devices,
> > > showing their internal topology and allowing userspace to dynamically
> > > re-route the pipelines. There are several such pipeline examples,
> > > 
> > > obtained from real hardware at:
> > > 	https://mchehab.fedorapeople.org/mc-next-gen/
> > > 
> > > Internally, the media controller has a logic to do graph traversal,
> > > in order to setup such pipelines. As the idea is to use SAT for the
> > > build system, eventually we could re-use its code inside the media
> > > controller, in order to improve the media controller logic, if such
> > > code find its way into the Kernel itself.
> > 
> > I'm not sure to follow you there. How would an SAT solver help the media
> > controller ?
> 
> As you know, there are two types or V4L2 devices. Let me enumerate them
> to help the others to follow the discussions.
> 
> The vast majority of the V4L2 devices use only the /dev/video?,
> /dev/radio? /dev/vbi? device drivers to provide userspace interface.
> On such devices, the hardware pipelines are dynamically created by the
> Kernel. Let's call them as "device-centric" device drivers.
> 
> The V4L2 drivers meant for embedded usage typically also provide a
> per-subdevice device node, via the V4L2 sub-device API extension:
> https://linuxtv.org/downloads/v4l-dvb-apis-new/media/uapi/v4l/dev-> subdev.html
> Also, on such drivers, the pipelines are explicitly created via
> userspace. Let's call them as "media-controller-centric" device drivers.

Nitpicking, the pipelines are not created by userspace, they're controlled by 
userspace. I think we agree on this, it's just a matter of terminology.

> Right now, all DVB devices are also device-centric, as we don't have
> yet any sub-device API, and the DVB API currently assumes dynamic
> pipeline setup.
> 
> It should also be said that the generic media applications (xawtv,
> tvtime, kaffeine, MythTV, camorama, Skype, etc) assume that the pipelines
> will be set automatically by the Kernel. We currently lack a generic
> application that would automatically setup the required pipelines
> that would work for all media-controller-centric devices,
> as the pipeline settings are device-specific.
> 
> For the device-centric media devices, the pipelines should be created by
> the Kernel, and not via userspace. On such cases, a SAT solver could help
> to setup the hardware pipelines.

That's the part I don't get. How is SAT related to that ?

> > > So, I'm very interested on this topic.

-- 
Regards,

Laurent Pinchart
