Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 199932C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 23:14:03 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2B11834
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 23:14:01 +0000 (UTC)
Date: Mon, 17 Jun 2019 20:13:50 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: <Tim.Bird@sony.com>
Message-ID: <20190617201350.133b92b6@coco.lan>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF97735B4F@USCULXMSG01.am.sony.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<20190615110107.GA5974@pendragon.ideasonboard.com>
	<20190617080315.4d8fd076@coco.lan>
	<20190617122837.GP5316@sirena.org.uk>
	<ECADFF3FD767C149AD96A924E7EA6EAF97735B4F@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James.Bottomley@hansenpartnership.com, media-submaintainers@linuxtv.org,
	dvyukov@google.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 17 Jun 2019 16:48:03 +0000
<Tim.Bird@sony.com> escreveu:

> > -----Original Message-----
> > From: Mark Brown [mailto:broonie@kernel.org]
> > 
> > On Mon, Jun 17, 2019 at 08:03:15AM -0300, Mauro Carvalho Chehab wrote:  
> ...
> > > Are there any other subsystem currently working to get funding for
> > > hosting/automation?  
> > 
> > Not sure if it's specifically what you're looking at but there's stuff
> > going on that's at least very adjacent to this, more from the angle of
> > providing general infrastructure than subsystem specific things and
> > currently mainly foucsed on getting tests run.  To me that sort of
> > approach seems good since it avoids duplicated efforts between
> > subsystems.
> > 
> > There's people working on things like KernelCI (people are working on
> > expanding to include runtime tests, and there's active efforts on
> > securing more funding) and CKI which aren't focused on specific
> > subsystems but more on general infrastructure.  Tim Bird (CCed) has been
> > pushing on trying to get people working in this area talking to each
> > other - there's a mailing list and monthly call:
> > 
> >     https://elinux.org/Automated_Testing
> > 
> > and one of the things people are talking about is what sorts of things
> > the kernel community would find useful here so it's probably useful at
> > least putting ideas for things that'd be useful in the heads of people
> > who are interested in working on the infrastructure and automation end
> > of things.  

Nice to know. Yeah, this is the sort of things we're looking forward,
in order to help our workflow.

> 
> Indeed.  Although I haven't piped up, I have been paying close attention to
> these discussions, and I know from talking to others who are involved with
> automated testing that they are as well.
> 
> I'm about to go on vacation, so I'll be incommunicado for about a week, but
> just to highlight some of the stuff I'm keen on following up on:
>  - if Linus like the syzbot notification mechanism, we should definitely
> follow up and try to have more tools and frameworks adopt that mechanism
> It's on my to-do list to investigate this further and see how it would integrate
> with my particular framework (Fuego). 

At least on media, syzbot had provided us some interesting reports,
and keeping us busy fixing some stuff :-)

> I think Dmitry said we should avoid
> introducing bots with lots of different notification mechanisms, as that will
> overload developers and just turn them off.

Yeah, receiving the same thing from different sources won't help,
and will just bug developers for no gain.

> - I recently saw a very cool system for isolating new warnings (at all levels
> of W=[0-3]) introduced by a new patch. 

Last time I tested W=2, it was almost unusable: lots of warnings due to
char/unsigned char mess. There are simply too many places where this
can be used interchangeable. Cleaning this mess would be a huge effort
for almost no gain.

W=1 did help us to find and fix bugs.

Getting a report about new W=2/W=3 warnings sound interesting, but if 
those things end adding too much noise, better to disable.

> This would be a great thing to 
> add to the kernel build system, IMHO, and that's also on my to-do list.
> - I was very interested in discussions about the mechanism to check whether
> a patch modified the binary or not.   It would be nice to make this part of
> the build system as well (something like: "make check-for-binary-change"

Yeah, something like that doesn't sound complex to implement (using
objdump -S). Tests required. I'll see if I can find some time to do
more tests here.

> 
> Both of the latter items require the ability to set a baseline to compare
> against.  So the usage sequence would be:
>  - make save-baseline
>  - <do commit or pull>
>  - make show-new-warnings
> or
>  - make check-for-binary-change

Probably the most complex part of such script would be to identify
what modules will be affected by a change. I mean, the script would 
need to identify what *.o files will be recompiled after a change at
the source code.

GNU make will know, but I'm not sure if is there a way to retrieve
the information from it. Maybe the build could do something like:

1) build without the patch that need to be checked;

2) replace make by some program that would be listen at the inotify
   events. It would call make internally;

3) It would now have a list of all modified *.o files due to the
   new patch. With that, store the sources, generated with 
   'objdump -S'.

4) revert the patch, rebuild and get the 'objdump -S' from the
   same object files;
 
5) if they're identical, report it. Otherwise, it may show the
   asm differences, for someone to manually check.

I suspect that something like the above may work. Tests required.

I'll try to implement something like that and see what happens.

> Just FYI, some of the stuff that the automated testing folk are working on
> are:
>  - standards for lab equipment management (/board management)
>  - standards for test definition
>  - standards for test results format and aggregation
>  - setting up a multi-framework results aggregation site
> 
> Keep the ideas flowing!  While we sometimes don't chime in, I know people
> are listening and thinking about the ideas presented.  And many of us will be
> at plumbers for live discussions, and at ELC Europe.  A few of us are starting a new event
> called Automated Testing Summit that we're co-locating (at least this year) with 
> OSSUE/ELCE on October 31, in Lyon France.  Check the Linux Foundation events site
> for more information.
> -- Tim
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
