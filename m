Return-Path: <m.chehab@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2492E4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 15:20:07 +0000 (UTC)
Received: from usmailout1.samsung.com (mailout1.w2.samsung.com
	[211.189.100.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F9591FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 15:20:06 +0000 (UTC)
Received: from uscpsbgm2.samsung.com
	(u115.gpu85.samsung.co.kr [203.254.195.115]) by mailout1.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N5R00BTPZGRD460@mailout1.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Sun,
	18 May 2014 11:10:03 -0400 (EDT)
Date: Sun, 18 May 2014 12:09:56 -0300
From: Mauro Carvalho Chehab <m.chehab@samsung.com>
To: josh@joshtriplett.org
Message-id: <20140518120956.02696ea5.m.chehab@samsung.com>
In-reply-to: <20140513162844.GA1647@cloud>
References: <s5htx8tizaf.wl%tiwai@suse.de>
	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
	<20140513162844.GA1647@cloud>
MIME-version: 1.0
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Tue, 13 May 2014 09:28:44 -0700
josh@joshtriplett.org escreveu:

> On Tue, May 13, 2014 at 07:57:16AM -0700, Sarah A Sharp wrote:
> > Technical workflows will always be different.  I believe what Takashi
> > is talking about is a social problem, not a technical problem.  Each
> > maintainer needs some level of confidence in the patch, and thus some
> > maintainers will wait a while before merging a patch, or wait for
> > additional reviewers to ack it.  And sometimes that means the patch
> > falls through the cracks.  Others will just throw the patch at their
> > -next branch, do some quick testing, and catch bugs in the next -rc
> > cycle.
> > 
> > Patch testing and review is a social problem, and trying to mandate a
> > workflow or even a set of technical tools will not help solve the
> > social problem of patches getting dropped or ignored.
> 
> Perhaps, but part of why Linus switched to git (and BK before that) was
> to avoid the resend-patches-until-Linus-doesn't-drop-them-on-the-floor
> problem.  It seems like we haven't so much *fixed* that problem as moved
> it further down the chain to a subset of maintainers.
> 
> This holds even more true if you're trying to make a cross-subsystem
> change: if you have 30 patches across 15 subsystems, you'll have a few
> merged right away with an explicit email acknowledgement (notably Andrew
> and Greg who have automated that), a few merged with no acknowledgement
> (have fun finding where they got merged or figuring out where they'll go
> from there), most of them disappear into a black hole until they
> magically show up in Linus's tree two major versions in the future, and
> a few just fall into /dev/null.  And I don't see an obvious way to
> distinguish between the last three cases.
> 
> Two thoughts on that:
> 
> 1) The cross-subsystem difficulties sometimes tempt me to queue up
> patches into my own git tree and send direct pull requests to Linus once
> I have a patch series that gets no objections from maintainers, but I'm
> concerned about doing that for cross-subsystem "topics" and drawing
> flames from subsystem maintainers about not going through their tree(s).

The thing is that several of those cross-subsystem patches can cause
merging issues, especially if they're changing some API that might
also be used by other patches at the maintainer's trees/branches.

That's the hole point, IMHO, of having the acked-by tag: the maintainer
is aware that such patch will be merged elsewhere, and will take the
precautions to avoid issues at linux-next and upstream, if needed, when
the patch gets merged.

I remember that I had to nack more than once some trivial patches that
were touching a file that was about to be removed upstream, or whose
lines of code it touched vanished.

> Is that a real problem, or is it considered reasonable to maintain a
> repository by topic rather than by subsystem?  (I would, for instance,
> be quite willing to maintain a "tiny" tree, and accept tinification
> patches from others to merge upstream.)

Provided that you have the submaintainers ack, I don't see any problem
on having such cross-subsystem topic branches.

> 
> 2) We could improve the experience for patch submitters without
> necessarily pushing changes to maintainer workflows.  I wonder if we
> could do a better job of providing automated tools that make life easier
> for maintainers and patch submitters?  For instance, what about having
> easy-to-enable git hooks on git.kernel.org similar to those Andrew and
> Greg use, notifying the patch submitter when a maintainer merges their
> patch?  Maintainers could opt into those hooks specifically for
> whichever repository has their "will go upstream eventually" branches,
> and supply a short description of where patches typically flow from
> their tree so submitters know what to expect.

> Would that be useful?  Would maintainers want it?  What properties would
> it need to have?  Could kernel.org support that?  And would anyone be
> interested in helping to write it?  (I'm willing to help, given answers
> to those questions to make sure it'll actually get *used*.)

I like the idea of git hooks. I use it on the media tree I maintain. I can
share the code of it, if you want.

> 
> - Josh Triplett
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
