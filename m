Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C67AEA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 12:29:28 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1DCA3102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 12:29:28 +0000 (UTC)
Date: Wed, 12 Sep 2018 14:29:25 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <3146009.WtUYtaxuno@avalon>
Message-ID: <alpine.DEB.2.21.1809121411180.9957@nanos.tec.linutronix.de>
References: <20180910174638.26fff182@vmware.local.home>
	<1536708545.3511.18.camel@HansenPartnership.com>
	<CAMuHMdUTkrT6Jovw1wwCTQj3Cg+5yw5WPn5QKRNOhrcvB13s7g@mail.gmail.com>
	<3146009.WtUYtaxuno@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 12 Sep 2018, Laurent Pinchart wrote:
> On Wednesday, 12 September 2018 14:55:44 EEST Geert Uytterhoeven wrote:
> > Good. Then this discussion wasn't targeted to the SCSI people, but to
> > other maintainers pushing brown paper bags and other trivial breakages
> > they should have caught beforehand to linux-next ;-)
> 
> That's a behaviour that has been annoying me lately, maintainers should have 
> no special privilege when it comes to pushing code upstream. All patches 
> should be posted publicly, given enough time to be reviewed, and review 
> comments should be addressed before anything is merged to a -next branch.  
> Unfortunately that's not always the case :-S

Come on. Do you really expect me to wait for review when I fix up the
internal testing/ 0-day fallout which is often enough something trivial?
Do you really expect me to wait for review when I worked with a bug
reporter to decode something and have a 100% explanation that it fixes the
root cause and not the symptom?

1) Our review capacity is small enough already, so we don't have to
   throw more stuff out for review.

2) With that modus, bugs will stay unfixed way longer and merging of code
   will even be more delayed.

If I don't have special rights as a maintainer and you don't trust me that
I use my common sense when I'm using these special rights, then you
degraded me to a patch juggling monkey. On the day this happens, I'll step
down.

> I would even go as far as saying that all patches should have Reviewed-by or 
> Acked-by tag, without enforcing that rule too strictly (I'm thinking in 
> particular about drivers that only a single person cares about, it's sometimes 
> hard to get patches reviewed).

If we enforce that, then a large part of reviewed-by and acked-by tags will
just come from coworkers or other affiliates and have no value at all.

That's anyway a growing disease that patches already carry reviewed tags
when they are posted the first time and then you look at them and they have
at least one easy to spot or easy to detect by tools bug in them.

Great value, really. What we need is more competent review capacity, more
people who care and not some silly rules which are going to be played on
the day they are made.

Thanks,

	tglx
