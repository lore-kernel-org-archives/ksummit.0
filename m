Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F2689C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Oct 2015 00:04:51 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1381F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Oct 2015 00:04:50 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 21 Oct 2015 03:04:49 +0300
Message-ID: <1826524.1PvFo6l3UI@avalon>
In-Reply-To: <1445272076.2481.37.camel@loki>
References: <20151012190137.GA1992@thunk.org>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Liam,

On Monday 19 October 2015 17:27:56 Liam Girdwood wrote:
> On Mon, 2015-10-19 at 14:53 +0100, Mark Brown wrote:
> > On Mon, Oct 19, 2015 at 10:33:04AM -0200, Mauro Carvalho Chehab wrote:
> > > We did a Media Controller Summit in July. During the summit, it was
> > > pointed that other subsystems like IIO (Linux Industrial I/O) have
> > > similar needs and also need to track complex pipelines.
> > > 
> > > The goal of this tech topic is to present the MC next generation
> > > concepts and how the patches to support MC was written, showing some
> > > pipeline examples.
> > > 
> > > The next gen support patches were written in August, with some
> > > additional patches written after that, and it has support for DVB
> > > and for one ALSA driver (snd-usb-audio).
> > > 
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
> > load topology information for DSP firmwares (see
> > include/sound/soc-topoloy.h). If we go ahead with that it'd create an
> > alternative topology ABI, it seems like we should at least consider if
> > it's worth trying to share things here.
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
> 
> I'm also supportive of having a higher level and more elegant topology
> query interface for non kernel/firmware developers using media
> controller.
> 
> What I'd like to propose is that we support both mechanisms for dumping
> the audio topology data. :-
> 
> 1) Simple file dump using same format that topology is loaded. Used by
> kernel/firmware developers only when media controller userspace not
> available. Enabled by kernel Kconfig debug option.

I wouldn't be against an option to dump the topology of MC devices through a 
file to capture the topology on a remote system that doesn't have the 
necessary tools installed and analyze it on a development machine. I'm however 
not saying that such a feature should be a hard requirement for MC as I 
haven't evaluated the complexity yet. Using the same format as the ALSA DSP 
firmware topology binary would probably not be possible though, as I expect 
that format to be quite ALSA-specific.

> 2) Media controller API used by everyone else.

-- 
Regards,

Laurent Pinchart
