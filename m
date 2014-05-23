Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2912B8FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 14:15:12 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D58B1FA0E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 14:15:11 +0000 (UTC)
Date: Fri, 23 May 2014 10:11:11 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140523141111.GA13311@tuxdriver.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
	<20140522203103.GM15585@mwanda>
	<CAMuHMdW1KgvP9EpHfVykHEskdeDZ-p_zGy6AuY05-6Y-XEB2MQ@mail.gmail.com>
	<1400826095.2259.38.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1400826095.2259.38.camel@dabdike.int.hansenpartnership.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 22, 2014 at 11:21:35PM -0700, James Bottomley wrote:
> On Thu, 2014-05-22 at 22:56 +0200, Geert Uytterhoeven wrote:
> > On Thu, May 22, 2014 at 10:31 PM, Dan Carpenter
> > <dan.carpenter@oracle.com> wrote:
> > > On Thu, May 22, 2014 at 09:31:44AM -0700, Dan Williams wrote:
> > >> I agree that something like this is prickly once it gets entangled
> > >> with ABI concerns.  But, I disagree with the speed argument... unless
> > >> you believe -staging has not increased the velocity of kernel
> > >> development?
> > >
> > > Staging is good because it brings more developers, but in many cases it
> > > is a slow down.  Merged codes has stricter rules where you have to write
> > > reviewable patches.  If there is a bug early in a patch series then you
> > > can't just fix it in a later patch, you need to redo the whole series.
> > 
> > In theory...
> > 
> > These days many fixes end up as separate commits in various subsystem
> > trees, due to "no rebase" rules and other regulations.
> 
> No, pretty much in practise.  I've no qualms about dropping a patch
> series if one of the git tree tests shows problems and, since I have a
> mostly linear tree, that means a rebase.
> 
>   I also don't believe in "preserving" history which is simply bug fixes
> that should have been in the series.  Sometimes, if the fix took a while
> to track down, I might keep the separate patch for credit + learning,
> but most of the time I'd fold it into a commit and annotate the commit.

That's all well and good, but rebasing causes a lot of pain.  This is
particularly true when you have downstream trees.

In any case, bugs will eventually show-up -- probably on the day after
you merge the 'final' series.  Hopefully those are not 'brown paper bag'
bugs, but you can only stall a series so long in hopes of shaking
those out.  You can only extend yourself so far in pursuit of bisectability.

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
