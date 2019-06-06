Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EDE2ED83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 15:58:50 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D7CCA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jun 2019 15:58:50 +0000 (UTC)
Date: Thu, 6 Jun 2019 17:58:46 +0200
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Message-ID: <20190606155846.GA31044@kroah.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1559836116.15946.27.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Thu, Jun 06, 2019 at 06:48:36PM +0300, James Bottomley wrote:
> This is probably best done as two separate topics
> 
> 1) Pull network: The pull depth is effectively how many pulls your tree
> does before it goes to Linus, so pull depth 0 is sent straight to
> Linus, pull depth 1 is sent to a maintainer who sends to Linus and so
> on.  We've previously spent time discussing how increasing the pull
> depth of the network would reduce the amount of time Linus spends
> handling pull requests.  However, in the areas I play, like security,
> we seem to be moving in the opposite direction (encouraging people to
> go from pull depth 1 to pull depth 0).  If we're deciding to move to a
> flat tree model, where everything is depth 0, that's fine, I just think
> we could do with making a formal decision on it so we don't waste
> energy encouraging greater tree depth.

That depth "change" was due to the perceived problems that having a
deeper pull depth was causing.  To sort that out, Linus asked for things
to go directly to him.

It seems like the real issue is the problem with that subsystem
collection point, and the fact that the depth changed is a sign that our
model works well (i.e. everyone can be routed around.)

So, maybe some work on fixing up subsystems that have problems
aggregating things?  Seems like some areas of the kernel do this just
fine, perhaps some workflow for the developers involved needs to be
adjusted?

> 2) Patch Acceptance Consistency: At the moment, we have very different
> acceptance criteria for patches into the various maintainer trees. 
> Some of these differences are due to deeply held stylistic beliefs, but
> some could be more streamlined to give a more consistent experience to
> beginners who end up doing batch fixes which cross trees and end up
> more confused than anything else.  I'm not proposing to try and unify
> our entire submission process, because that would never fly, but I was
> thinking we could get a few sample maintainer trees to give their
> criteria and then see if we could get any streamlining.  For instance,
> SCSI has a fairly weak "match the current driver" style requirement, a
> reasonably strong get someone else to review it requirement and the
> usual good change log and one patch per substantive change requirement.
>  Other subsystems look similar without the review requirement, some
> have very strict stylistic requirements (reverse christmas tree, one
> variable definition per line, etc).  As I said, the goal wouldn't be to
>  beat up on the unusual requirements but to see if we could agree some
> global baselines that would at least make submission more uniform.

I thought Dan's "maintainer document" was going to help resolve things
like this, both putting in writing just what those rules were, as well
as help point out where things might be going too far in one direction
or another in a much easier way, as they could be compared.

thanks,

greg k-h
