Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 201D885D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:17:20 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3F2620273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:17:19 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 29 May 2014 01:17:39 +0200
Message-ID: <13876340.WYWhRQ9Qdn@avalon>
In-Reply-To: <CAKMK7uGB8toTgmRJg4akj73CWBdKcUBH6CHt3TGHov5hHODwFA@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140528163902.GA5099@sirena.org.uk>
	<CAKMK7uGB8toTgmRJg4akj73CWBdKcUBH6CHt3TGHov5hHODwFA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday 29 May 2014 00:48:31 Daniel Vetter wrote:
> On Wed, May 28, 2014 at 6:39 PM, Mark Brown <broonie@kernel.org> wrote:
> > On Wed, May 28, 2014 at 04:39:15PM +0200, Daniel Vetter wrote:
> >> My approach has been to insist on an in-patch revision log which gets
> >> included in the commit. And that for any changes and bugs spotted the
> >> reviewer/commenter must be acknowleged. See e.g.
> >> d978ef14456a38034f6c0e for a very nice example of that. But that's
> >> also a good example for no tag to acknowledge all the work that went
> >> into this review/patch, since I've done the final review myself and
> >> only put my sob onto the patch.
> > 
> > This does mean that the final changelogs that get included in the kernel
> > get very large and noisy and is relying on the submitters doing a good
> > job paying attention to review comments in the first place, recording
> > exactly what changed and so on.  They are sometimes useful but normally
> > I'm finding very little value in the changelogs in the first place,
> > generally it doesn't really matter what the problems were in any
> > previous versions.
> 
> Thus far it didn't annoy me - it's at the bottom with the sob section.
> And occasionally I've found it useful to follow some of the steps laid
> out in there to understand why a patch looks what it looks like. I
> know that a lot of other maintainers want the patch revision log below
> the scissors.
> 
> And it also gives me a really good tool to scold patch authors if they
> don't follow up on all review comments, which is the other useful
> aspect.

That's one particular point that I have to spend too much time on according to 
my tastes. When receiving version N+1 of a patch, I need to compare versions N 
and N+1, open the comments I've sent for version N, and verify that they all 
have been taken into account. I'd be interested in knowing about how other 
maintainers automate (part of) that process (if they do).

> Including it in the commit makes it look a bit more valued imo and hopefully
> makes sure people take this all serious.

-- 
Regards,

Laurent Pinchart
