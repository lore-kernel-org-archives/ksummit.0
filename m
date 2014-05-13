Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 19B8E96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 15:11:05 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8EB62201AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 15:11:04 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 13 May 2014 17:11:04 +0200
Message-ID: <2841648.YvDH29bsdC@avalon>
In-Reply-To: <CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
References: <s5htx8tizaf.wl%tiwai@suse.de>
	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Sarah,

On Tuesday 13 May 2014 07:57:16 Sarah A Sharp wrote:
> On Tue, May 13, 2014 at 7:31 AM, Jiri Kosina <jkosina@suse.cz> wrote:
> > On Tue, 13 May 2014, Takashi Iwai wrote:
> >> While posting to different subsystem areas, I noticed various ways of
> >> responses and communications.  Some picks up quick, some urges more
> >> reviews, sometimes a patch gets merged silently after months later,
> >> etc.  Although the variety is one strength of OSS development, it made
> >> me also wonder whether we need some baseline guidance for subsystem
> >> maintenance in order to give a better appeal to casual developers.
> >> 
> >> Is such a thing too much burden to maintainers?  Or, is it just a
> >> bikeshedding?
> > 
> > I am afraid that any attempt to force any working style on maintainers is
> > pre-destined to fail.
> > 
> > As an example, there are folks who love patchwork and others wouldn't dare
> > to touch it with a 10m pole.
> > 
> > Even such a "core" thing as git is explicitly claimed optional by Linus.
> > 
> > Is there perhaps anything more concrete you had on mind?
> 
> Technical workflows will always be different.  I believe what Takashi
> is talking about is a social problem, not a technical problem.  Each
> maintainer needs some level of confidence in the patch, and thus some
> maintainers will wait a while before merging a patch, or wait for
> additional reviewers to ack it.  And sometimes that means the patch
> falls through the cracks.  Others will just throw the patch at their
> -next branch, do some quick testing, and catch bugs in the next -rc
> cycle.
> 
> Patch testing and review is a social problem, and trying to mandate a
> workflow or even a set of technical tools will not help solve the
> social problem of patches getting dropped or ignored.

Wouldn't it help if we could write down whatever rules that each subsystem 
maintainer found best ? For instance some maintainers expect to be CC'ed on 
patch submission, other prefer not to be CC'ed. When sending a patch to a new 
subsystem developers currently have no easy way to find this kind of 
information. We can of course expect them to do their homework and step in the 
subsystem to find out what's happening, but when modifying drivers across the 
whole kernel to support a new system that's a pretty large effort.

-- 
Regards,

Laurent Pinchart
