Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 61051268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:18:41 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 539C619A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:18:36 +0000 (UTC)
Date: Tue, 20 Oct 2015 13:18:16 -0200
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Liam Girdwood <liam.r.girdwood@linux.intel.com>
Message-ID: <20151020131816.1210dbf5@recife.lan>
In-Reply-To: <1445342137.7033.41.camel@loki>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<CAKocOOMHUQT7u0T-Cq1k1YYdZ1g78t5Trx-dyXyB9RSQETOfDg@mail.gmail.com>
	<1445342137.7033.41.camel@loki>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Mark Brown <broonie@kernel.og>, Lars-Peter Clausen <lars@metafoo.de>,
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

Em Tue, 20 Oct 2015 12:55:37 +0100
Liam Girdwood <liam.r.girdwood@linux.intel.com> escreveu:

> On Mon, 2015-10-19 at 14:46 -0600, Shuah Khan wrote:
> > On Mon, Oct 19, 2015 at 1:34 PM, Mauro Carvalho Chehab
> > <mchehab@osg.samsung.com> wrote:
> > > Hi Mark/Liam,
> > >
> > > Em Mon, 19 Oct 2015 17:27:56 +0100
> > > Liam Girdwood <liam.r.girdwood@linux.intel.com> escreveu:
> > >
> > >> On Mon, 2015-10-19 at 14:53 +0100, Mark Brown wrote:
> > >> > On Mon, Oct 19, 2015 at 10:33:04AM -0200, Mauro Carvalho Chehab wrote:
> > >> >
> > >> > > We did a Media Controller Summit in July. During the summit, it was
> > >> > > pointed that other subsystems like IIO (Linux Industrial I/O) have
> > >> > > similar needs and also need to track complex pipelines.
> > >> >
> > >> > > The goal of this tech topic is to present the MC next generation
> > >> > > concepts and how the patches to support MC was written, showing some
> > >> > > pipeline examples.
> > >> >
> > >> > > The next gen support patches were written in August, with some
> > >> > > additional patches written after that, and it has support for DVB
> > >> > > and for one ALSA driver (snd-usb-audio).
> > >> >
> > >> > > The patches are not merged yet at the media development tree and
> > >> > > at -next, as one of the core developers of the media controller
> > >> > > is missing time to review patches. So, while it was originally
> > >> > > targeted to be merged on Kernel 4.4, it is likely that this will be
> > >> > > merged only for Kernel 4.5, in order to give him more time to
> > >> > > review the patchset.
> > >> >
> > >> > One fun thing on this that came up at the audio meeting we had in Dublin
> > >> > after ELC-E is that there is some desire to export the internal topology
> > >> > of audio devices to userspace using the same format that we're using to
> > >> > load topology information for DSP firmwares (see include/sound/soc-topoloy.h).
> > >> > If we go ahead with that it'd create an alternative topology ABI, it
> > >> > seems like we should at least consider if it's worth trying to share
> > >> > things here.
> > >
> > > Thanks for the feedback. I was wanting to go to ELC-E this year due to
> > > ALSA summit, but, unfortunately, I had 3 other trips happening on a one
> > > month interval (two of them are 28+28 hours of trip). So, I had to give
> > > up going to ELC-E.
> > >
> > >> >
> > >> > I've not had a chance to look at the new media controller work yet, I've
> > >> > CCed Lars and Liam who have more knowledge in this area.  Unfortunately
> > >> > I don't think any of the people working directly on this will be at KS
> > >> > this year.
> > >>
> > >> Just to give a little more background (for any non audio folks), there
> > >> are many audio DSPs today that can load their topology and other
> > >> capabilities at runtime depending on the target device (phone, laptop,
> > >> PC, etc) and the audio use cases.
> > >>
> > >> Our intention is to also have a single audio driver per DSP family (i.e.
> > >> single skylake audio DSP driver to cover all skylake based devices). The
> > >> DSP driver would load it's topology data alongside the DSP firmware so
> > >> that the driver topology (i.e. graph, controls, capabilities) would be
> > >> aligned with the DSP firmware topology.
> > >>
> > >> The process for creating the topology data involves either compiling a
> > >> text topology file to the binary topology file (used by the kernel) or
> > >> using a new ALSA C API to generate the binary topology file (as part of
> > >> a firmware toolchain). The topology text compiler and C API are both
> > >> upstream.
> > >>
> > >> We are currently implementing de-compiler support to the userspace
> > >> compiler in order to convert the binary topology files into text files
> > >> for debug and development purposes.
> > >>
> > >> Ideally I'd like to be able to dump the topology data using the same
> > >> format that it used for topology loading. That way we could easily feed
> > >> them into the de-compiler for development/debug.
> > >>
> > >> Having a simple mechanism for dumping topology data is important as we
> > >> will need to be able to easily dump this data on Android and Chrome
> > >> alongside regular Linux for development and debug purposes. i.e.
> > >> cat /sys/some/dump/file > audio_topology
> > >
> > > Well, it is not hard to get the topology using the media controller.
> > > I wrote a testing program using it at:
> > >         http://git.linuxtv.org/cgit.cgi/mchehab/experimental-v4l-utils.git/tree/contrib/test/mc_nextgen_test.c
> > >
> > 
> > Adding to what Mauro said, I have a patch series out that updates
> > ASLA and AU0828 drivers (Hauppauge Win TV HVR 950Q Hybrid
> > USB TV Stick) to share tuner. I am speaking about this work at the
> > KLF on Oct 26th.
> > 
> > http://korealinuxforum2015.sched.org/event/f59175cc49f866dbc9bebc36f86fe663#.ViVWjGwVhBd
> > 
> > You can find the media graph that includes ALSA Mixer Function and
> > Control Interface (Device: /dev/snd/controlC2), PCM Audio Capture
> > Function and PCM Audio Capture interface (Device: /dev/snd/pcmC2D0c)
> > at:
> > 
> > https://drive.google.com/open?id=0B0NIL0BQg-AlbjZkcElJb2RtVk0

Shuah,

I guess the links for the ALSA part are not ok. On your graph, it is
showing:

	ATV decoder [PAD 3] --> Audio Mixer
			    --> Audio Capture

I suspect that the right graph would be, instead:

	ATV decoder [PAD 3] --> Audio Mixer --> Audio Capture

> 
> Looks nice. Fwiw, the graph will probably get a lot bigger when we show
> the audio DSP and codec paths (as DSPs and codecs have multiple muxes
> and mixers).

Yeah, the graph is simplified, as for now we only needed to represent
the parts of the graph that are associated with the ALSA interfaces.

> It may be good to have a cmd line option to stop at certain
> nodes on the graph to avoid over populated/complex graphs ?

Yes, it makes sense to have some ways to simplify the graph plot.
Yet, I'm not sure yet what would be the best ways to simplify
the graph when plotted, as this is not a simple task.

For example, on the au0828/snd-usb-audio graph, the dvb-demux entity 
actually has a lot more than 5 source PADs. The demux basically gets
a MPEG-TS stream and splits audio, video and data channels on different
I/O outputs. Most drivers (including au0828) have 256 outputs.
Each node connected to two or more I/O entities. On an USB driver
like this one, those outputs are seen via two device nodes, but
TV sets and Set Top Boxes provide ways to wire the output of the
demux to the aSoC and to the DRM driver, in order to be able to
output sound and video directly. On some hardware, it is even possible
to reboot the CPU keeping those wires while the CPU reboots. So, the
user may not even notice if the CPU reboots due to some trouble.

So, we need all outputs of the demux to be controlled by the Media
Controller, for it to allow dynamically route audio and video to
the right entities at the ALSA and DRM parts of the graph.

The au0828 graphs that Shuah and I have were generated with a Kernel
hack patch that reduces the number of outputs to just 5, just to make
the graph visually readable. Of course, such patch should not be sent
upstream, and we need to find a solution on userspace to simplify
the graph on plots.

There are some ways that we could do that:

1) we could group entities/interfaces per subsystem. So, if all the user
wants is to see ALSA-related nodes, it will filter out the other nodes
(eventually, keeping the nodes that are directly connected to ALSA
but belongs to the other subsystems);

2) Group the entities that have the same routes (like DVB demux
output PADs that are routed to the same userspace interfaces);

3) Hide unused entities;

4) Have a property describing the "level" of the entity. By default, 
the tool would only show entities that are above a certain level.

We could, of course, add knowledge at the userspace tool for it to
simplify some specific entity types, but I would prefer to keep the 
userspace tools more generic and add some properties for each
entity/interface that would allow the tool to automatically simplify
the graph based on the hints provided by the Kernel.

For now, we're more focused on adding the proper Kernel support for
MC, but I'm sure we'll need to work at an userspace library afterwards,
providing such capabilities.

Regards,
Mauro
