Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A1233CFE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 14:38:54 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32F5A102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 14:38:54 +0000 (UTC)
Message-ID: <1536503930.3192.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Greg KH <greg@kroah.com>
Date: Sun, 09 Sep 2018 07:38:50 -0700
In-Reply-To: <CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan> <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<20180909125130.GA16474@kroah.com>
	<CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: mchehab+samsung@kernel.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2018-09-09 at 07:20 -0700, Linus Torvalds wrote:
> On Sun, Sep 9, 2018 at 5:51 AM Greg KH <greg@kroah.com> wrote:
> > 
> > But remember, this is only needed for the "crazy" issues, like
> > Meltdown. What we put together add-hoc for L1TF worked well, and
> > what we do every week in handling security issues sent to
> > security@k.org works very well also.  So well that no one really
> > realizes what we do there :)
> 
> Note that at some point, we should just say "f*ck it".
> 
> For hardware bugs, we should remember that *we* aren't the ones that
> are in trouble. If a hardware company makes it too hard for us to
> work with them, we should literally say "go the f*ck away" and stop
> talking to them.
> 
> It's *their* problem, not ours.  If they only work with vendors
> unable to talk to core maintainers, I guarantee that it will *remain*
> their problem. I will happily tell the world that the hardware
> company screwed up and didn't even help us try to fix things right.
> 
> Their lawyers and PR people can go screw themselves.
> 
> Seriously. People need to be aware that it's not us that should be
> bending over backwards over hardware issues. If some hardware company
> wants an NDA from me for their own screw-ups, I'll laugh in their
> face, and then I'll tell journalists about how they actively made it
> harder to fix their mess.

So it seems we have the two choices:

   1. Conform to industry norms for disclosures and find a way of bringing
      an NDA framework to Linux Security fix handling 
   2. Force industry to adopt new norms that actually work well with open
      source.

I think I already hear a majority for number 2.

However, to make 2 work we need to use every tool at our disposal to
push for change, including our PR relationships and, to be true to
that, we really should publish a critique of what went wrong with
spectre/meltdown and how it should have gone better.  That way we have
something to point to when someone asks what to do about the next
hardware side channel problem.  I'm sure lwn.net would be up for doing
something to help with this provided we give them access to the raw
material and maintainer interviews so they can present a coherent story
rather than a gripe fest (which is what we've mostly got in this
thread).

James
