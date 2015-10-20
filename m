Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DEB458A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 16:11:46 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 580BB1AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 16:11:46 +0000 (UTC)
Date: Tue, 20 Oct 2015 14:11:40 -0200
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20151020141140.423fab98@recife.lan>
In-Reply-To: <s5hy4exleyb.wl-tiwai@suse.de>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<CAKocOOMHUQT7u0T-Cq1k1YYdZ1g78t5Trx-dyXyB9RSQETOfDg@mail.gmail.com>
	<1445342137.7033.41.camel@loki>
	<20151020131816.1210dbf5@recife.lan> <s5hy4exleyb.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Tue, 20 Oct 2015 17:47:24 +0200
Takashi Iwai <tiwai@suse.de> escreveu:

> On Tue, 20 Oct 2015 17:18:16 +0200,
> Mauro Carvalho Chehab wrote:
> > > Looks nice. Fwiw, the graph will probably get a lot bigger when we show
> > > the audio DSP and codec paths (as DSPs and codecs have multiple muxes
> > > and mixers).
> > 
> > Yeah, the graph is simplified, as for now we only needed to represent
> > the parts of the graph that are associated with the ALSA interfaces.
> 
> So this doesn't expose the graphs inside USB-audio chip but rather
> only the mixer elements parsed by ALSA driver, right?  That's what I
> understood from Shuah's patchset, so far.

Yes, Shuah's patch set is only exposing the minimal stuff that 
it is currently needed to identify if there are shared resources
with the DVB and V4L2/ALSA usage.

Adding support for the graphs inside the USB-audio chip is simple,
though. Basically, one call to create the entities and another
one to create the links between two entities.

> 
> > > It may be good to have a cmd line option to stop at certain
> > > nodes on the graph to avoid over populated/complex graphs ?
> > 
> > Yes, it makes sense to have some ways to simplify the graph plot.
> > Yet, I'm not sure yet what would be the best ways to simplify
> > the graph when plotted, as this is not a simple task.
> > 
> > For example, on the au0828/snd-usb-audio graph, the dvb-demux entity 
> > actually has a lot more than 5 source PADs. The demux basically gets
> > a MPEG-TS stream and splits audio, video and data channels on different
> > I/O outputs. Most drivers (including au0828) have 256 outputs.
> > Each node connected to two or more I/O entities. On an USB driver
> > like this one, those outputs are seen via two device nodes, but
> > TV sets and Set Top Boxes provide ways to wire the output of the
> > demux to the aSoC and to the DRM driver, in order to be able to
> > output sound and video directly. On some hardware, it is even possible
> > to reboot the CPU keeping those wires while the CPU reboots. So, the
> > user may not even notice if the CPU reboots due to some trouble.
> > 
> > So, we need all outputs of the demux to be controlled by the Media
> > Controller, for it to allow dynamically route audio and video to
> > the right entities at the ALSA and DRM parts of the graph.
> > 
> > The au0828 graphs that Shuah and I have were generated with a Kernel
> > hack patch that reduces the number of outputs to just 5, just to make
> > the graph visually readable. Of course, such patch should not be sent
> > upstream, and we need to find a solution on userspace to simplify
> > the graph on plots.
> > 
> > There are some ways that we could do that:
> > 
> > 1) we could group entities/interfaces per subsystem. So, if all the user
> > wants is to see ALSA-related nodes, it will filter out the other nodes
> > (eventually, keeping the nodes that are directly connected to ALSA
> > but belongs to the other subsystems);
> 
> This actually made me wonder how all things are managed.  Are all
> mapped into the same topology, or they are individual trees (e.g. per
> device object)?

It was mapped as one tree by device. That makes easier to handle
the links between two entities that may belong to different subsystems.

In other words, if you have two USB sticks, each one will have its
own media controller. All stuff inside each USB stick will belong to
the same graph.

Regards,
Mauro
