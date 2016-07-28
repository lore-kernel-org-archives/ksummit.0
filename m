Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA7C37AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 11:18:14 +0000 (UTC)
Received: from s-opensource.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 324B51E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 11:18:13 +0000 (UTC)
Date: Thu, 28 Jul 2016 08:18:08 -0300
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20160728081808.08d8941e@recife.lan>
In-Reply-To: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org,
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

Em Wed, 27 Jul 2016 09:50:04 -0700
"Luis R. Rodriguez" <mcgrof@suse.com> escreveu:

> (first e-mail bounced)
> 
> Rafael has proposed has a set of patches to help deal with functional
> dependencies between devices to help with power management. Mauro has
> spoken briefly before over the media controller feature graph used to help
> build relationship between complex dynamic dependencies. 

Actually, there are two separate at the media subsystem:

1) the complex dependencies at the build system, required by the media
devices, as almost all media hardware require multiple drivers in order to
work. The media controller is unrelated to it.

We have right now a very complex Kconfig setup, as we try to map what
user wants (a driver for the board "foo") with the requirements that
such "foo" device requires (e. g. tuner "bar", demod "foobar", 
main driver "foodriver", etc).

2) the complexity of setting up pipelines using the media controller.

The media controller reflects the complexity of the media devices,
showing their internal topology and allowing userspace to dynamically
re-route the pipelines. There are several such pipeline examples,
obtained from real hardware at:
	https://mchehab.fedorapeople.org/mc-next-gen/

Internally, the media controller has a logic to do graph traversal,
in order to setup such pipelines. As the idea is to use SAT for the
build system, eventually we could re-use its code inside the media
controller, in order to improve the media controller logic, if such
code find its way into the Kernel itself.

So, I'm very interested on this topic.

Thanks,
Mauro
