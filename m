Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4B14726
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 09:14:08 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B02081F89A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 09:14:07 +0000 (UTC)
Message-ID: <1400922840.6956.10.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "John W. Linville" <linville@tuxdriver.com>
Date: Sat, 24 May 2014 13:14:00 +0400
In-Reply-To: <20140523141111.GA13311@tuxdriver.com>
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
	<20140523141111.GA13311@tuxdriver.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, 2014-05-23 at 10:11 -0400, John W. Linville wrote:
> On Thu, May 22, 2014 at 11:21:35PM -0700, James Bottomley wrote:
> > On Thu, 2014-05-22 at 22:56 +0200, Geert Uytterhoeven wrote:
> > > On Thu, May 22, 2014 at 10:31 PM, Dan Carpenter
> > > <dan.carpenter@oracle.com> wrote:
> > > > On Thu, May 22, 2014 at 09:31:44AM -0700, Dan Williams wrote:
> > > >> I agree that something like this is prickly once it gets entangled
> > > >> with ABI concerns.  But, I disagree with the speed argument... unless
> > > >> you believe -staging has not increased the velocity of kernel
> > > >> development?
> > > >
> > > > Staging is good because it brings more developers, but in many cases it
> > > > is a slow down.  Merged codes has stricter rules where you have to write
> > > > reviewable patches.  If there is a bug early in a patch series then you
> > > > can't just fix it in a later patch, you need to redo the whole series.
> > > 
> > > In theory...
> > > 
> > > These days many fixes end up as separate commits in various subsystem
> > > trees, due to "no rebase" rules and other regulations.
> > 
> > No, pretty much in practise.  I've no qualms about dropping a patch
> > series if one of the git tree tests shows problems and, since I have a
> > mostly linear tree, that means a rebase.
> > 
> >   I also don't believe in "preserving" history which is simply bug fixes
> > that should have been in the series.  Sometimes, if the fix took a while
> > to track down, I might keep the separate patch for credit + learning,
> > but most of the time I'd fold it into a commit and annotate the commit.
> 
> That's all well and good, but rebasing causes a lot of pain.

Not usually if you manage it right.

>   This is particularly true when you have downstream trees.

What I find is that people rarely actually need to base development on
my tree as upstream.  We do sometimes get the odd entangled patch (code
that changes something that changed in my tree), but we haven't had that
for a while now.  The rule therefore is use an upstream Linus tree to
develop unless you specifically have entangled patches.  If you need to
test with my tree, you can still pull it in as a merge.

I also have specific methodologies where I keep head and tail branches
of my trees, so for <x> development branch I have an <x>-base branch as
well, so I can simply do a

git checkout <x>
git rebase --onto origin/master <x>-base
git branch -f <x>-base origin/master

> In any case, bugs will eventually show-up -- probably on the day after
> you merge the 'final' series.  Hopefully those are not 'brown paper bag'
> bugs, but you can only stall a series so long in hopes of shaking
> those out.  You can only extend yourself so far in pursuit of bisectability.

Right, you have to have a "history commit" point ... for me that's when
I send the tree to Linus ... then the history becomes immutable and any
breakage discovered afterwards has to be fixed by separate patches.

James
