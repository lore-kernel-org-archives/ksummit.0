Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 11 Sep 2018 11:13:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tim.Bird@sony.com
Message-ID: <20180911091323.GA26421@kroah.com>
References: <s5hbm9ccbie.wl-tiwai@suse.de> <20180907164454.3713a8be@coco.lan>
	<s5htvmx2nip.wl-tiwai@suse.de> <2330245.LW6OXaHVC6@avalon>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1DEDA0@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF7C1DEDA0@USCULXMSG01.am.sony.com>
Cc: mchehab+samsung@kernel.org, ksummit-discuss@lists.linuxfoundation.org
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

On Mon, Sep 10, 2018 at 07:22:05PM +0000, Tim.Bird@sony.com wrote:
> 
> 
> > -----Original Message-----
> > From: Laurent Pinchart
> > 
> > On Monday, 10 September 2018 21:52:30 EEST Takashi Iwai wrote:
> > > On Fri, 07 Sep 2018 21:44:54 +0200, Mauro Carvalho Chehab wrote:
> > > > Em Wed, 05 Sep 2018 15:35:53 +0200 Takashi Iwai escreveu:
> > > > > The staging driver is a wonderful process to promote the downstream
> > > > > code to the upstream, but I have doubt whether it's working really as
> > > > > expected for now.
> > > > >
> > > > > - Often the drivers live forever in staging although they should have
> > > > >   been moved to the upper, properly maintained, subsystems.
> > > > >
> > > > > - Code changes in staging are mostly only scratching surfaces, minor
> > > > >   code style cleanups, etc, what checkpatch suggests.
> > > > >
> > > > > - There are little communications with the corresponding subsystem;
> > > > >   already a few times I was surprised by casually finding a staging
> > > > >   driver code by grepping for preparing API changes.
> > > >
> ...
> > > > > - Then some drivers are pushed back after long time stay in staging
> > > > >
> > > > >   (lustre is the recent remarkable case);
> > > > >   it's understandable, but is definitely no happy end in both sides,
> > > > >   after all.
> > > >
> > > > We had a recent case: the (really big) atomisp driver.
> > >
> > > What was the reason of drawback, BTW?
> > 
> > Intel pushed a huge code drop that clearly required a staging period, and
> > then
> > simply left it bitrot. No developer was committed to perform the work
> > needed
> > to de-stage the driver. I don't know whether priorities had changed internally
> > or if there were no resources from day 1, but in the end it's pretty clear
> > that if we had known beforehand of the outcome, the driver would likely not
> > have been even a staging candidate.
> > 
> > > I think it'd be helpful if we can gather more data, e.g. good examples
> > > to show how it can succeed, as well as anti-patterns to learn what
> > > makes things failing.
> > 
> > Anti-pattern number one: push a large driver to staging knowing that you
> > won't
> > work on it anymore, and expect the community to do your work for free.
> > 
> > I would have expected a company like Intel to know better. Or, rather sadly, I
> > probably have given up on such expectations already :-S
> 
> I thought staging was where work was done on drivers that were submitted
> to Greg's Free Linux Driver project (https://lkml.org/lkml/2007/1/29/345)
> (among other things). 
> 
> Is that project still active?  Do things still move through staging as originally
> intended?  Am I conflating two different things?

Yes, the project is still active, and yes, things still move through
staging as originally intended.

> I'm not sure if Intel's driver qualifies as a Free Linux Driver project or not.
> I can think of other companies, less experienced with kernel work than Intel,
> that might still benefit from the Free Linux Driver project, and staging.
> 
> I thought the whole idea of staging was that something was better than nothing,
> and that cruddy code could be taken even if the hardware vendor didn't have
> the skills or inclination to do proper mainlining.

Yes, that is true, but is not what happened here.  A developer from
Intel asked that this driver be submitted, and I took it with the
intention that it still be worked on to be "cleaned up properly".  That
happened a bit, and then it seems that the resources at Intel shifted
and the driver became abandoned.

Because it was abandoned, the code was dropped from the kernel.  If
anyone wishes to pick up the work in the future, a simple 'git revert'
will get you there and away you can go.

So this was an example of everything working "properly" as far as I can
tell.

thanks,

greg k-h
