Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C92ACC75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 10:35:48 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 02C37E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 10:35:47 +0000 (UTC)
Date: Mon, 17 Jun 2019 07:35:41 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Bjorn Helgaas via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20190617073541.3be5735b@coco.lan>
In-Reply-To: <CAErSpo661k-BSy=LF0kWEyvX-2pNJVCtrsP729MmErTr-hspPQ@mail.gmail.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<CAErSpo5WVP_7t_LDBbaJ7bHc_MgkpV=1KYsQx_zULKkjQf3azA@mail.gmail.com>
	<CAErSpo661k-BSy=LF0kWEyvX-2pNJVCtrsP729MmErTr-hspPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Fri, 14 Jun 2019 18:21:15 -0500
Bjorn Helgaas via Ksummit-discuss <ksummit-discuss@lists.linuxfoundation.org> escreveu:

> On Fri, Jun 14, 2019 at 2:53 PM Bjorn Helgaas <bhelgaas@google.com> wrote:
> >
> > On Thu, Jun 6, 2019 at 10:49 AM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> >  
> > > 2) Patch Acceptance Consistency: At the moment, we have very different
> > > acceptance criteria for patches into the various maintainer trees.
> > > Some of these differences are due to deeply held stylistic beliefs, but
> > > some could be more streamlined to give a more consistent experience to
> > > beginners who end up doing batch fixes which cross trees and end up
> > > more confused than anything else.  I'm not proposing to try and unify
> > > our entire submission process, because that would never fly, but I was
> > > thinking we could get a few sample maintainer trees to give their
> > > criteria and then see if we could get any streamlining.  For instance,
> > > SCSI has a fairly weak "match the current driver" style requirement, a
> > > reasonably strong get someone else to review it requirement and the
> > > usual good change log and one patch per substantive change requirement.
> > >  Other subsystems look similar without the review requirement, some
> > > have very strict stylistic requirements (reverse christmas tree, one
> > > variable definition per line, etc).  As I said, the goal wouldn't be to
> > >  beat up on the unusual requirements but to see if we could agree some
> > > global baselines that would at least make submission more uniform.  
> >
> > The "when in Rome" rule (follow local conventions) would cover a large
> > fraction of the style issues without requiring global uniformity or
> > even documentation.  I'm amazed at how often it is ignored.  
> 
> I should have expanded this a little.  Somebody pointed out to me off-list that:
> 
> | I'm NOT amazed at how often undocumented, strange, local style
> |  (and submission and timing) conventions are not followed by new or
> | drive-by contributors to a sub-system.  How would one expect local
> | conventions to be followed by newbies when they conventions
> | are undocumented?
> 
> | Many sub-systems have mixed styles. In the past I've wished for
> | documentation as simple as: 'file xyz.c is representative
> | of the preferred style for this sub-system'.
> 
> What I meant was that we should follow the indentation, comment,
> declaration, etc. style of the existing code in the same file.  We
> should also look at the git history of the file and follow the style
> of subject lines and commit logs.

Looking on each file's kernel style would mean a lot of extra work
for someone that is applying a patch that is subsystem-wide (or even
kernel-wide), for no good reason.

My experience from the time we didn't enforce Kernel coding style
on media: people will keep pushing such patches assuming the
Kernel style. It takes a lot more time trying to argue why they
should handle differently for file A, file B, ... than to just 
blindly accept a patch that will mess with the file's coding
Style or than to run a script subsystem-wide to make coding styles
to be more uniform.

Also, even the ones with work at the subsystem will end violating it.

For example, on media, the DVB part used to identify pointers as:

	struct dvb_foo* bar;

While, on the v4l side, it is the Kernel style. As we do have several
drivers that implement both APIs, people tend to use the Kernel style.
So, when a developer is writing a patch that were touching both DVB
and driver-specific stuff, they write the above as:

	struct dvb_foo *bar.

After a few years, the DVB core files become a mess with both styles.

I ended fixing it at the core a couple years ago when we added kernel-doc 
markups to the DVB core files, moving the existing ones at *.c files to be
just at their *.h files. Now, at least the core is closer to the Kernel
style (there are still DVB-specific files with the old style, but those
are very seldom patched) and we don't care much about mixing styles there
anyway.

> 
> Even if a subsystem has mixed styles, I think the most important rule
> is that each file should be internally consistent.  If we want to
> unify subsystem style, that's even better, but we should do that with
> subsystem-wide patches that specifically improve consistency, not
> incrementally as a by-product of other patches.
> 
> I'm not necessarily opposed to documenting coding styles, although I
> think per-subsystem coding style rules might a little bit onerous to
> submitters.  If we pay attention to the surrounding code and commit
> history, we can produce good style even without a style guide.
> 
> Bjorn
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
