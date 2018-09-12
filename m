Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 055EBCEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:10:15 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 17DD463D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:10:12 +0000 (UTC)
Date: Wed, 12 Sep 2018 15:10:01 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20180912131001.GG2760@piout.net>
References: <20180910174638.26fff182@vmware.local.home>
	<3146009.WtUYtaxuno@avalon>
	<alpine.DEB.2.21.1809121411180.9957@nanos.tec.linutronix.de>
	<3070742.JVHc92YBtH@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3070742.JVHc92YBtH@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 12/09/2018 15:53:59+0300, Laurent Pinchart wrote:
> Hi Thomas,
> 
> On Wednesday, 12 September 2018 15:29:25 EEST Thomas Gleixner wrote:
> > On Wed, 12 Sep 2018, Laurent Pinchart wrote:
> > > On Wednesday, 12 September 2018 14:55:44 EEST Geert Uytterhoeven wrote:
> > >> Good. Then this discussion wasn't targeted to the SCSI people, but to
> > >> other maintainers pushing brown paper bags and other trivial breakages
> > >> they should have caught beforehand to linux-next ;-)
> > > 
> > > That's a behaviour that has been annoying me lately, maintainers should
> > > have no special privilege when it comes to pushing code upstream. All
> > > patches should be posted publicly, given enough time to be reviewed, and
> > > review comments should be addressed before anything is merged to a -next
> > > branch. Unfortunately that's not always the case :-S
> > 
> > Come on. Do you really expect me to wait for review when I fix up the
> > internal testing/ 0-day fallout which is often enough something trivial?
> > Do you really expect me to wait for review when I worked with a bug
> > reporter to decode something and have a 100% explanation that it fixes the
> > root cause and not the symptom?
> > 
> > 1) Our review capacity is small enough already, so we don't have to
> >    throw more stuff out for review.
> > 
> > 2) With that modus, bugs will stay unfixed way longer and merging of code
> >    will even be more delayed.
> 
> I don't expect to wait for review forever, but I expect maintainers to give an 
> opportunity to reviewers to review patches. We obviously need to consider the 
> balance between review opportunity and problems (such as build breakages) that 
> could affect hundreds of developers if left unfixed even for a few days.
> 
> Too often I've noticed changes to code I maintain that introduced bugs or 
> other issues, performed by a maintainer who didn't even bother to post the 
> patch before pushing to to his -next branch, who didn't CC me (I could take 
> part of the blame for not reading mailing lists with enough attention, but the 
> volume is very high), or, possibly worse, who sent a patch out, received my 
> review on the same day, and completely ignored it. The last issue is very 
> demotivating for reviewers. Those changes were not at all urgent, some of them 
> were "cleanups", or replacement of a deprecated API by a new one. That's very 
> different than fixing a build breakage in -next which clearly can't wait.
> 
> > If I don't have special rights as a maintainer and you don't trust me that
> > I use my common sense when I'm using these special rights, then you
> > degraded me to a patch juggling monkey. On the day this happens, I'll step
> > down.
> 
> Maintainers are much more than patch juggling monkeys, otherwise they could be 
> replaced by machines. I believe that maintainers are given the huge 
> responsibility of taking care of their community. Fostering a productive work 
> environment, attracting (and keeping) talented developers and reviewers is a 
> huge and honourable task, and gets my full respect. On top of that, if a 
> maintainer has great technical skills, it's even better, and I've learnt a lot 
> from talented maintainers over the time. I however believe that technical 
> skills are not an excuse for not leading by example and showing what the good 
> practices are by applying them.
> 
> (This goes without saying, but even better when said explicitly, there's not 
> judgment about your or any particular maintainer's technical or non-technical 
> skills here)
> 
> > > I would even go as far as saying that all patches should have Reviewed-by
> > > or Acked-by tag, without enforcing that rule too strictly (I'm thinking
> > > in particular about drivers that only a single person cares about, it's
> > > sometimes hard to get patches reviewed).
> > 
> > If we enforce that, then a large part of reviewed-by and acked-by tags will
> > just come from coworkers or other affiliates and have no value at all.
> 
> That's a concern I share, and one of the reasons why I have my doubts about 
> some of the maintainership experiments in the DRM subsystem. The proponents of 
> the changes there pointed out to me that development has sped up as a result, 
> but I think the costs associated with the acceleration haven't been fully 
> evaluated.
> 
> > That's anyway a growing disease that patches already carry reviewed tags
> > when they are posted the first time and then you look at them and they have
> > at least one easy to spot or easy to detect by tools bug in them.
> 
> Do you get bothered that they carry a tag when they are posted the first time, 
> or only that they do so *and* have clear problems ?
> 

I guess the issue is that it is very difficult to trust reviewed-by or
acked-by tags that are coming from coworkers/affiliates, especially more
when the review didn't happen publicly. From my point of view, that
review may or may not have happened.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
