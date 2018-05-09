Return-Path: <vinod.koul@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C0A4950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 10:55:38 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6B39675
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 10:55:37 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id f20so16654258pfn.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 09 May 2018 03:55:37 -0700 (PDT)
From: Vinod Koul <vinod.koul@linaro.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180509105534.GE7985@vkoul-mobl>
References: <20180503020550.GP2714@sirena.org.uk>
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
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
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
Date: Wed, 09 May 2018 10:55:38 -0000

On 09-05-18, 20:47, Stephen Rothwell wrote:
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

Great so do you want us to send fixes branch or scan the existing trees and add
them.

In case of former please do add slave-dma/fixes as well

~Vinod
