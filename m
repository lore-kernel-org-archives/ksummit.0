Return-Path: <sakari.ailus@iki.fi>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15030305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Oct 2015 08:50:26 +0000 (UTC)
Received: from hillosipuli.retiisi.org.uk (nblzone-211-213.nblnetworks.fi
	[83.145.211.213])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD23163
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Oct 2015 08:50:24 +0000 (UTC)
Date: Thu, 22 Oct 2015 11:49:51 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Message-ID: <20151022084951.GR26916@valkosipuli.retiisi.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<CAKocOOMHUQT7u0T-Cq1k1YYdZ1g78t5Trx-dyXyB9RSQETOfDg@mail.gmail.com>
	<1445342137.7033.41.camel@loki>
	<20151020132209.GZ32054@sirena.org.uk>
	<20151020133443.4140d53f@recife.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151020133443.4140d53f@recife.lan>
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Lars-Peter Clausen <lars@metafoo.de>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Mauro and Mark,

(Fixed Mark's e-mail.)

On Tue, Oct 20, 2015 at 01:34:43PM -0200, Mauro Carvalho Chehab wrote:
> Em Tue, 20 Oct 2015 14:22:09 +0100
> Mark Brown <broonie@kernel.org> escreveu:
> 
> > On Tue, Oct 20, 2015 at 12:55:37PM +0100, Liam Girdwood wrote:
> > > On Mon, 2015-10-19 at 14:46 -0600, Shuah Khan wrote:
> > 
> > > > You can find the media graph that includes ALSA Mixer Function and
> > > > Control Interface (Device: /dev/snd/controlC2), PCM Audio Capture
> > > > Function and PCM Audio Capture interface (Device: /dev/snd/pcmC2D0c)
> > > > at:
> > 
> > > > https://drive.google.com/open?id=0B0NIL0BQg-AlbjZkcElJb2RtVk0
> > 
> > > Looks nice. Fwiw, the graph will probably get a lot bigger when we show
> > > the audio DSP and codec paths (as DSPs and codecs have multiple muxes
> > > and mixers). It may be good to have a cmd line option to stop at certain
> > > nodes on the graph to avoid over populated/complex graphs ?
> > 
> > Having the ability to describe which physical device things are part of
> > would probably help a lot with the rendering here - I'm guessing that a
> > lot of filtering is likely to be things like collapsing down devices not
> > being looked at right now into a single block in the graph and it'd
> > probably help with user comprehesibilty provide a mapping back to things
> > they can see in the physical world.
> > 
> > This doesn't entirely correspond with struct device due to MFD and
> > multi-function USB stuff but it'd be a good start I expect.
> 
> Yeah, collapsing devices make sense.
> 
> Sakari is working on a properties API to be added to Media
> Controller entities/interfaces/links. Perhaps he could add this
> requirement to the API he's working with.

I think that's entirely possible. It's up to how we want to describe
devices. I wonder if we could e.g. add a sysfs path as a property there. The
user would then need to check which entities have equal sysfs paths.

-- 
Regards,

Sakari Ailus
e-mail: sakari.ailus@iki.fi	XMPP: sailus@retiisi.org.uk
