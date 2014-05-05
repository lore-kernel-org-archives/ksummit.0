Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A5DFC875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:07:56 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50B01201CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:07:56 +0000 (UTC)
Date: Mon, 5 May 2014 12:07:52 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20140505160752.GQ28159@titan.lakedaemon.net>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<5366FBDB.7090705@huawei.com> <20140505134126.GA22287@thunk.org>
	<s5h4n14fdw9.wl%tiwai@suse.de>
	<20140505153927.GE23927@quack.suse.cz>
	<s5hy4ygdxiq.wl%tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5hy4ygdxiq.wl%tiwai@suse.de>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, lizf.kern@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 05, 2014 at 06:02:21PM +0200, Takashi Iwai wrote:
> At Mon, 5 May 2014 17:39:28 +0200,
> Jan Kara wrote:
> > 
> > On Mon 05-05-14 17:23:18, Takashi Iwai wrote:
> > > At Mon, 5 May 2014 09:41:26 -0400,
> > > Theodore Ts'o wrote:
> > > > The challenge is that companies generally need to be able to make that
> > > > decision at least 3-6 months ahead of time for planning purposes, and
> > > > this requires that companies be willing to actually communicate their
> > > > stablization plans externally ahead of time.  Which, unfortuantely,
> > > > may or may not always be practical.
> > > > 
> > > > And of course, depending on how many patches get integrated into said
> > > > "enterprise" kernel, it might end up being very far from the official
> > > > upstream stable kernel, so it might or might not matter in any case.
> > > 
> > > Or, other way round: can the upstream LTS kernel be defined earlier?
> > > Then distros may align to it when it's known beforehand.
> > > It'd be even helpful for subsystem maintainers to decide whether some
> > > big infrastructure change should be applied or postponed.
> >   Well, but Greg doesn't want to declare a kernel LTS before it is released
> > exactly so that people don't cram in lots of imature stuff which needs to
> > be fixed up later. And I agree with him that this is going to happen if he
> > would declare LTS kernels in advance. So I don't think this is a good
> > alternative.
> 
> I agree with such a possible risk.  OTOH, if a big change (or file
> renames) happens just after LTS kernel, it may make impossible to
> carry even a small trivial fix back to LTS kernel.  So, it can be also
> a demerit, too.

Do you have an example of this?  git is pretty darn good about tracking
renames.  If you've had a patch you couldn't backport, I'd like to see
what caused the failure.

In the worst case scenario, the maintainer of the code (or anyone
intimately familiar with it) should be able to hand-apply it.  But to
me, that would highlight a shortcoming of the system.

thx,

Jason.
