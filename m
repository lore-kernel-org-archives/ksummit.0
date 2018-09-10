Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34066F8C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:48:46 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBF0771C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:48:45 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 10 Sep 2018 22:48:54 +0300
Message-ID: <4225967.GZjQHerNMI@avalon>
In-Reply-To: <CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180910154738.GA3712@chatter>
	<CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Daniel,

On Monday, 10 September 2018 19:07:35 EEST Daniel Vetter wrote:
> On Mon, Sep 10, 2018 at 5:47 PM, Konstantin Ryabitsev wrote:
> > On Mon, Sep 10, 2018 at 03:38:07PM +0000, Sasha Levin wrote:
> >> Yes, some maintainers started adding links to lkml archives, but those
> >> are very inconsistent and often just point to the patch submission
> >> rather than relevant discussions.
> >> 
> >> I'm not sure what's a good way to solve this, but I'd really like to
> >> stop losing this valuable information as a result of the current
> >> process.
> > 
> > This is partly the goal behind cregit:
> > 
> > https://cregit.linuxsources.org/
> > 
> > The plan is that the next version of cregit will become an official
> > kernel.org resource some time mid-next year, and will aggregate as much
> > information about the kernel code as it can from various places, including
> > patchwork.
> 
> Assuming we do indeed switch some parts of the drm process over to
> gitlab (very big assumption here), whom would we need to chat with to
> do that?

Could you elaborate on what that means exactly ? For most subsystems the 
development process encompasses a large number of tasks, so switching to 
gitlab doesn't mean much without knowing exactly how the new process would 
look like. Which part(s) of the development process would be affected, and how 
? And as an added bonus, it would be helpful if you could also describe why 
you think they don't work today and would be better handled differently.

> Atm what we're doing with patchwork is automatically add a Link: with
> the https:// patchwork url for that patch. Which then has links to the
> overall series, with CI results and discussions and all that. Plan for
> gitlab is to do something similar, if we start using it for real for
> anything. Would that be good enough?

-- 
Regards,

Laurent Pinchart
