Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A568411
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 19:34:28 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DA8BD1BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 19:34:27 +0000 (UTC)
Date: Mon, 19 Oct 2015 17:34:19 -0200
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Liam Girdwood <liam.r.girdwood@linux.intel.com>
Message-ID: <20151019173419.042d5e8b@recife.lan>
In-Reply-To: <1445272076.2481.37.camel@loki>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	ksummit-discuss@lists.linuxfoundation.org, Mark Brown <broonie@kernel.og>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Mark/Liam,

Em Mon, 19 Oct 2015 17:27:56 +0100
Liam Girdwood <liam.r.girdwood@linux.intel.com> escreveu:

> On Mon, 2015-10-19 at 14:53 +0100, Mark Brown wrote:
> > On Mon, Oct 19, 2015 at 10:33:04AM -0200, Mauro Carvalho Chehab wrote:
> > 
> > > We did a Media Controller Summit in July. During the summit, it was
> > > pointed that other subsystems like IIO (Linux Industrial I/O) have
> > > similar needs and also need to track complex pipelines. 
> > 
> > > The goal of this tech topic is to present the MC next generation
> > > concepts and how the patches to support MC was written, showing some
> > > pipeline examples. 
> > 
> > > The next gen support patches were written in August, with some 
> > > additional patches written after that, and it has support for DVB
> > > and for one ALSA driver (snd-usb-audio).
> > 
> > > The patches are not merged yet at the media development tree and
> > > at -next, as one of the core developers of the media controller
> > > is missing time to review patches. So, while it was originally
> > > targeted to be merged on Kernel 4.4, it is likely that this will be 
> > > merged only for Kernel 4.5, in order to give him more time to
> > > review the patchset.
> > 
> > One fun thing on this that came up at the audio meeting we had in Dublin
> > after ELC-E is that there is some desire to export the internal topology
> > of audio devices to userspace using the same format that we're using to 
> > load topology information for DSP firmwares (see include/sound/soc-topoloy.h).
> > If we go ahead with that it'd create an alternative topology ABI, it
> > seems like we should at least consider if it's worth trying to share
> > things here.

Thanks for the feedback. I was wanting to go to ELC-E this year due to
ALSA summit, but, unfortunately, I had 3 other trips happening on a one
month interval (two of them are 28+28 hours of trip). So, I had to give
up going to ELC-E.

> > 
> > I've not had a chance to look at the new media controller work yet, I've
> > CCed Lars and Liam who have more knowledge in this area.  Unfortunately
> > I don't think any of the people working directly on this will be at KS
> > this year.
> 
> Just to give a little more background (for any non audio folks), there
> are many audio DSPs today that can load their topology and other
> capabilities at runtime depending on the target device (phone, laptop,
> PC, etc) and the audio use cases.
> 
> Our intention is to also have a single audio driver per DSP family (i.e.
> single skylake audio DSP driver to cover all skylake based devices). The
> DSP driver would load it's topology data alongside the DSP firmware so
> that the driver topology (i.e. graph, controls, capabilities) would be
> aligned with the DSP firmware topology.
> 
> The process for creating the topology data involves either compiling a
> text topology file to the binary topology file (used by the kernel) or
> using a new ALSA C API to generate the binary topology file (as part of
> a firmware toolchain). The topology text compiler and C API are both
> upstream.
> 
> We are currently implementing de-compiler support to the userspace
> compiler in order to convert the binary topology files into text files
> for debug and development purposes.
> 
> Ideally I'd like to be able to dump the topology data using the same
> format that it used for topology loading. That way we could easily feed
> them into the de-compiler for development/debug.
> 
> Having a simple mechanism for dumping topology data is important as we
> will need to be able to easily dump this data on Android and Chrome
> alongside regular Linux for development and debug purposes. i.e.
> cat /sys/some/dump/file > audio_topology

Well, it is not hard to get the topology using the media controller.
I wrote a testing program using it at:
	http://git.linuxtv.org/cgit.cgi/mchehab/experimental-v4l-utils.git/tree/contrib/test/mc_nextgen_test.c

The only library optional dependency is libudev, used to get the
device node names. The code falls back to use /sys/dev/char/ and
/dev to find the device names when compiled without libudev.

So, it should be easy to provide a cat-like program that would be
dumping the audio topology on some file.

> I'm also supportive of having a higher level and more elegant topology
> query interface for non kernel/firmware developers using media
> controller.

The media controller also allows runtime topology changes. This is
important specially on SoC devices that allow runtime changes.

One of the advanced use cases of the media controller API is on SoC
that have dynamic pipelines on more than one subsystem that could be
wired on a single circuit.

One such example would be to setup a TV decoding pipeline
that starts on a TV tuner, goes though DVB, V4L, DRM and ALSA
subsystems and the sink nodes would be the audio speaker and the
TV display.

As the TV channel is changed, different codecs may be needed for
video and/or audio. Also, as the program may be encrypted (or not),
it may be needed to add Conditional Access Modules at the pipelines
and/or other hardware IP blocks in order to decrypt the contents.

> 
> What I'd like to propose is that we support both mechanisms for dumping
> the audio topology data. :-
> 
> 1) Simple file dump using same format that topology is loaded. Used by
> kernel/firmware developers only when media controller userspace not
> available. Enabled by kernel Kconfig debug option.

Yeah, it sounds reasonable to have a mechanism like that just for
debug purposes.

> 2) Media controller API used by everyone else.

Makes sense to me.

Regards,
Mauro
