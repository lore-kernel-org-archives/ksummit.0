Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 54C55C0C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 21:04:22 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A2B6782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 21:04:21 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 14 Sep 2018 00:04:21 +0300
Message-ID: <1591325.98K2JSm7l9@avalon>
In-Reply-To: <20180913201406.GA3554@kroah.com>
References: <CAPcyv4i=h-7CHpu5ZvXxPsgUOPY-B-wAjX3e5+W9vCm+o081xw@mail.gmail.com>
	<20180913201406.GA3554@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] EXPORT_SYMBOL_GPL
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday, 13 September 2018 23:14:06 EEST Greg KH wrote:
> On Thu, Sep 13, 2018 at 12:43:15PM -0700, Dan Williams wrote:
> > Currently the only guidance we have about EXPORT_SYMBOL_GPL usage in
> > Documentation/ is:
> > 
> > "It implies that the function is considered an internal implementation
> > issue, and not really an interface."
> > 
> > The topics for a Maintainer Summit discussion are:
> > 
> > 1/ The criteria "is considered an internal implementation issue" is
> > sufficiently vague and seems to lead to arbitrary and subjective
> > decisions by individual developers. Are there some objective technical
> > criteria we can apply? For example, the symbol consumes other
> > EXPORT_SYMBOL_GPL functionality, the symbol can effect kernel-wide
> > state / policy, or the symbol leaks internal implementation details
> > that are more unstable than typical EXPORT_SYMBOL apis. Any additional
> > subjective criteria to consider? For example, it would be better for
> > long term health of Linux if the consumers of a given API had the
> > EXPORT_SYMBOL_GPL-related encouragement to get their code upstream.
> > 
> > 2/ With expanded criteria in hand the question then becomes what are
> > the considerations for changing an existing symbol between
> > EXPORT_SYMBOL or EXPORT_SYMBOL_GPL? I expect it would be awkward and
> > unwanted to set down hard rules, but a list of considerations that a
> > change proposal needs to address would at least help guide such
> > discussions.
> > 
> > Not being a lawyer, I'm less interested in legal concerns, and more
> > the technical, code maintenance, and health of the kernel aspects of
> > what EXPORT_SYMBOL_GPL influences.
> > 
> > Note, I am not available to travel to Edinburgh to lead this discussion.
> 
> Nice topic, I like it!
> 
> Being the one who used this symbol first (I think, maybe I am wrong),
> I'd be glad to lead this if others think it would be a good thing to
> formally document.
> 
> And yes, I'm in the "let's document this thing somehow to keep
> maintainers from getting stuck in the middle" camp :)

As Guenter, I use EXPORT_SYMBOL_GPL as a political mean more than a technical 
mean. From a legal point of view it has always seemed a very grey area to me 
(especially since nobody has tested this particular in court). While a clear 
documentation would be useful to agree on a common meaning, I fear we will 
have many stakeholders trying to pull in different directions.

>From a technical point of view, this is the first time I hear about 
EXPORT_SYMBOL_GPL implying an internal implementation instead of an interface. 
The sentence has been introduced in

commit b6c17ea4eff360359d1741272028610035bb2da9
Author: Rusty Russell <rusty@rustcorp.com.au>
Date:   Fri Sep 9 13:10:11 2005 -0700

    [PATCH] Update Documentation/DocBook/kernel-hacking.tmpl

without any explanation in the commit message. That seems a dubious claim to 
me, given that EXPORT_SYMBOL_GPL allows linking a module to the kernel, in 
effect creating an API.

-- 
Regards,

Laurent Pinchart
