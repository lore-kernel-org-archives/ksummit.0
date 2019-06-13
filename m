Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8CFD0DDC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 13:28:49 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C124663D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 13:28:48 +0000 (UTC)
Date: Thu, 13 Jun 2019 10:28:39 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20190613102839.2b08a959@coco.lan>
In-Reply-To: <CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Em Thu, 6 Jun 2019 11:26:20 -0700
Dan Williams <dan.j.williams@intel.com> escreveu:

> On Thu, Jun 6, 2019 at 9:30 AM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> >
> > On Thu, 2019-06-06 at 17:58 +0200, Greg KH wrote:  
> > > > 2) Patch Acceptance Consistency: At the moment, we have very
> > > > different acceptance criteria for patches into the various
> > > > maintainer trees.  Some of these differences are due to deeply held
> > > > stylistic beliefs, but some could be more streamlined to give a
> > > > more consistent experience to beginners who end up doing batch
> > > > fixes which cross trees and end up more confused than anything
> > > > else.  I'm not proposing to try and unify our entire submission
> > > > process, because that would never fly, but I was
> > > > thinking we could get a few sample maintainer trees to give their
> > > > criteria and then see if we could get any streamlining.  For
> > > > instance, SCSI has a fairly weak "match the current driver" style
> > > > requirement, a reasonably strong get someone else to review it
> > > > requirement and the usual good change log and one patch per
> > > > substantive change requirement.  Other subsystems look similar
> > > > without the review requirement, some have very strict stylistic
> > > > requirements (reverse christmas tree, one variable definition per
> > > > line, etc).  As I said, the goal wouldn't be to  beat up on the
> > > > unusual requirements but to see if we could agree some global
> > > > baselines that would at least make submission more uniform.  

Agreed. If all/most subsystems could have a common base of minimal
requirements, that would make a lot easier for incoming people to
submit patches on different subsystems.

One of the current problems I face is that people which also work 
on other related subsystems want to have other maintainer's model 
applied to the media subsystem, or sometimes submit patches that
use other coding styles, with doesn't seem to fit to well to the
way we work.

For example, lately, I started receiving a lot of patches following
this comment style:

	/* foo
	 * bar
	 */

Instead of:

	/*
	 * foo
	 * bar
	 */

with seems to be ok to some subsystems, but it violates the style we
adopt all over the subsystem.

> > >
> > > I thought Dan's "maintainer document" was going to help resolve
> > > things like this, both putting in writing just what those rules were,
> > > as well as help point out where things might be going too far in one
> > > direction or another in a much easier way, as they could be compared.  
> >
> > Well, um, I can't really comment on a document that doesn't yet exist.
> > However, I can note that the best kernel process documents describe
> > what we actually do (mostly because attempting to impose additional
> > processes by fiat [or by document] really doesn't go over well) and
> > that's orthogonal to what I'm proposing: I'm proposing that we examine
> > critically what we currently do and see if there aren't any more areas
> > where we could strive for greater consistency and uniformity.
> > Certainly, if Dan's doc exists by KS time it could be a useful input,
> > but to effect change in this area requires discussion and agreement by
> > the franchise holders (i.e. the maintainers) which is what I'm
> > proposing and which KS is the ideal venue to get.  
> 
> The doc which has failed to materialize is only meant to be a
> lightning rod to prompt conversations like this of "how and why are we
> inconsistent across subsystems?". The lightning rod aspect of the
> topic partially explains the lack of progress, it needs about the same
> level of care / attention as a core-mm patchset and I've kept it on
> the backburner until I could dedicate the necessary time.
> 
> That said, I do think moving forward with the document would be
> necessary pre-work for this conversation.

Yeah, I think it is a good starting point.

> Just the act of putting
> subsystem specific policies in writing even if they differ would go
> along way towards making the lives of contributors less fraught with
> arbitrary peril. Then at ksummit maintainers can compare subsystem
> notes and arm wrestle for the policies that do or do not need to
> remain differentiated.

I have a pending followup patch on the top of the Dan's RFC
patch, describing how we work on media:

	https://patchwork.linuxtv.org/patch/52999/

As I wrote this a while ago, some things could have changed, but
the basic idea about how we work are documented over there.

> 
> The conversation and certainly agreement is secondary in my mind to
> just documenting the local policy for contributors

Thanks,
Mauro
