Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 46462AD7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 18:26:33 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 858BA7F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 18:26:32 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id z23so2861516ote.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Jun 2019 11:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
In-Reply-To: <1559838569.3144.11.camel@HansenPartnership.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 6 Jun 2019 11:26:20 -0700
Message-ID: <CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Jun 6, 2019 at 9:30 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Thu, 2019-06-06 at 17:58 +0200, Greg KH wrote:
> > > 2) Patch Acceptance Consistency: At the moment, we have very
> > > different acceptance criteria for patches into the various
> > > maintainer trees.  Some of these differences are due to deeply held
> > > stylistic beliefs, but some could be more streamlined to give a
> > > more consistent experience to beginners who end up doing batch
> > > fixes which cross trees and end up more confused than anything
> > > else.  I'm not proposing to try and unify our entire submission
> > > process, because that would never fly, but I was
> > > thinking we could get a few sample maintainer trees to give their
> > > criteria and then see if we could get any streamlining.  For
> > > instance, SCSI has a fairly weak "match the current driver" style
> > > requirement, a reasonably strong get someone else to review it
> > > requirement and the usual good change log and one patch per
> > > substantive change requirement.  Other subsystems look similar
> > > without the review requirement, some have very strict stylistic
> > > requirements (reverse christmas tree, one variable definition per
> > > line, etc).  As I said, the goal wouldn't be to  beat up on the
> > > unusual requirements but to see if we could agree some global
> > > baselines that would at least make submission more uniform.
> >
> > I thought Dan's "maintainer document" was going to help resolve
> > things like this, both putting in writing just what those rules were,
> > as well as help point out where things might be going too far in one
> > direction or another in a much easier way, as they could be compared.
>
> Well, um, I can't really comment on a document that doesn't yet exist.
> However, I can note that the best kernel process documents describe
> what we actually do (mostly because attempting to impose additional
> processes by fiat [or by document] really doesn't go over well) and
> that's orthogonal to what I'm proposing: I'm proposing that we examine
> critically what we currently do and see if there aren't any more areas
> where we could strive for greater consistency and uniformity.
> Certainly, if Dan's doc exists by KS time it could be a useful input,
> but to effect change in this area requires discussion and agreement by
> the franchise holders (i.e. the maintainers) which is what I'm
> proposing and which KS is the ideal venue to get.

The doc which has failed to materialize is only meant to be a
lightning rod to prompt conversations like this of "how and why are we
inconsistent across subsystems?". The lightning rod aspect of the
topic partially explains the lack of progress, it needs about the same
level of care / attention as a core-mm patchset and I've kept it on
the backburner until I could dedicate the necessary time.

That said, I do think moving forward with the document would be
necessary pre-work for this conversation. Just the act of putting
subsystem specific policies in writing even if they differ would go
along way towards making the lives of contributors less fraught with
arbitrary peril. Then at ksummit maintainers can compare subsystem
notes and arm wrestle for the policies that do or do not need to
remain differentiated.

The conversation and certainly agreement is secondary in my mind to
just documenting the local policy for contributors
