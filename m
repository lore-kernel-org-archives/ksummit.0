Return-Path: <boris.brezillon@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 38FBABAF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 19:35:42 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5678267F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 19:35:41 +0000 (UTC)
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180509213528.54bad29b@bbrezillon>
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Wed, 09 May 2018 19:35:42 -0000

Hi Stephen,

On Wed, 9 May 2018 20:47:27 +1000
Stephen Rothwell <sfr@canb.auug.org.au> wrote:

> On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
> >
> > On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:  
> > > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote:    
> >   
> > > > I think this is an excellent idea, copying in Stephen for his input.
> > > > I'm currently on holiday but unless someone convinces me it's a terrible
> > > > idea I'm willing to at least give it a go on a trial basis once I'm back
> > > > home.    
> >   
> > > Since Stephen merges all -fixes branches first, before merging all the
> > > -next branches, he already generates that as part of linux-next. All
> > > he'd need to do is push that intermediate state out to some
> > > linux-fixes branch for consumption by test bots.  
> 
> Good idea ... I will see what I can do.
>   
> > True.  It's currently only those -fixes branches that people have asked
> > him to merge separately which isn't as big a proportion of trees as have
> > them (perhaps fortunately given people's enthusiasm for fixes branches
> > that don't merge cleanly with their development branches) so we'd also
> > need to encourage people to add them separately.  
> 
> I currently have 44 such fixes branches.  More welcome!

I see that the nand/fixes and spi-nor/fixes branch are already there [1].
You can add:

mtd-fixes	git	git://git.infradead.org/linux-mtd.git#master

You can also remove the mtd entry [2], since mtd-2.6.git is just a sym
link to linux-mtd.git, so it will just be a duplicate of the mtd-fixes
entry. You can also rename the l2-mtd entry [3] into mtd.

Regards,

Boris

[1]https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next/+/43cd1f4979998ba0ef1c0b8e1c5d23d2de5ab172/Next/Trees#41
[2]https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next/+/43cd1f4979998ba0ef1c0b8e1c5d23d2de5ab172/Next/Trees#155
[3]https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next/+/43cd1f4979998ba0ef1c0b8e1c5d23d2de5ab172/Next/Trees#156
