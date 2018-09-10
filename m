Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1449611C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 18:58:01 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45D647E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 18:58:00 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 10 Sep 2018 21:58:08 +0300
Message-ID: <2330245.LW6OXaHVC6@avalon>
In-Reply-To: <s5htvmx2nip.wl-tiwai@suse.de>
References: <s5hbm9ccbie.wl-tiwai@suse.de> <20180907164454.3713a8be@coco.lan>
	<s5htvmx2nip.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
	drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, 10 September 2018 21:52:30 EEST Takashi Iwai wrote:
> On Fri, 07 Sep 2018 21:44:54 +0200, Mauro Carvalho Chehab wrote:
> > Em Wed, 05 Sep 2018 15:35:53 +0200 Takashi Iwai escreveu:
> > > The staging driver is a wonderful process to promote the downstream
> > > code to the upstream, but I have doubt whether it's working really as
> > > expected for now.
> > > 
> > > - Often the drivers live forever in staging although they should have
> > >   been moved to the upper, properly maintained, subsystems.
> > > 
> > > - Code changes in staging are mostly only scratching surfaces, minor
> > >   code style cleanups, etc, what checkpatch suggests.
> > > 
> > > - There are little communications with the corresponding subsystem;
> > >   already a few times I was surprised by casually finding a staging
> > >   driver code by grepping for preparing API changes.
> > 
> > What we do in the case of media drivers is that we have a
> > 
> > 	drivers/staging/media
> > 
> > directory with a proper MAINTAINERS' entry:
> > 
> > MEDIA INPUT INFRASTRUCTURE (V4L/DVB)
> > M:	Mauro Carvalho Chehab <mchehab@kernel.org>
> > P:	LinuxTV.org Project
> > L:	linux-media@vger.kernel.org
> > W:	https://linuxtv.org
> > Q:	http://patchwork.kernel.org/project/linux-media/list/
> > T:	git git://linuxtv.org/media_tree.git
> > S:	Maintained
> > F:	Documentation/devicetree/bindings/media/
> > F:	Documentation/media/
> > F:	drivers/media/
> > F:	drivers/staging/media/
> > ...
> > 
> > This way, we receive notifications (both on my e-mail and at the media
> > ML) about changes there.
> > 
> > I also asked Greg to avoid picking patches directly to it. So,
> > we're able to manage what's there.
> 
> Good to hear, I believe we should follow the same for the sound
> stuff.
> 
> > > - Then some drivers are pushed back after long time stay in staging
> > > 
> > >   (lustre is the recent remarkable case);
> > >   it's understandable, but is definitely no happy end in both sides,
> > >   after all.
> > 
> > We had a recent case: the (really big) atomisp driver.
> 
> What was the reason of drawback, BTW?

Intel pushed a huge code drop that clearly required a staging period, and then 
simply left it bitrot. No developer was committed to perform the work needed 
to de-stage the driver. I don't know whether priorities had changed internally 
or if there were no resources from day 1, but in the end it's pretty clear 
that if we had known beforehand of the outcome, the driver would likely not 
have been even a staging candidate.

> I think it'd be helpful if we can gather more data, e.g. good examples
> to show how it can succeed, as well as anti-patterns to learn what
> makes things failing.

Anti-pattern number one: push a large driver to staging knowing that you won't 
work on it anymore, and expect the community to do your work for free.

I would have expected a company like Intel to know better. Or, rather sadly, I 
probably have given up on such expectations already :-S

-- 
Regards,

Laurent Pinchart
