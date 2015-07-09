Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D970A04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:21:58 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC3C811B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:21:57 +0000 (UTC)
Received: by iggp10 with SMTP id p10so21995936igg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 09 Jul 2015 13:21:57 -0700 (PDT)
Date: Thu, 9 Jul 2015 13:21:52 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150709202152.GE1237@dtor-ws>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150709193951.GE9169@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709193951.GE9169@vmdeb7>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 12:39:51PM -0700, Darren Hart wrote:
> On Wed, Jul 08, 2015 at 02:53:15PM -0400, Steven Rostedt wrote:
> > On Wed, 08 Jul 2015 09:00:32 +0100
> > jic23@jic23.retrosnub.co.uk wrote:
> > 
> > 
> > > > We can alter that somewhat.  We used to run a Maintainers lottery for
> > > > the kernel summit ... we could instead offer places based on the number
> > > > of Reviewed-by: tags ... we have all the machinery to calculate that.  I
> > > > know an invitation to the kernel summit isn't a huge incentive, but it's
> > > > a useful one.
> > > 
> > > Sounds like a good idea to me, though it would only effect a tiny
> > > percentage of our reviewers.  I suppose publishing a short list of the top 
> > > n% of reviewers from which the lottery runs might give some
> > > recognition. 
> > > 
> > 
> > I personally don't trust a Reviewed-by tag much, as I sometimes see
> > them appear without any comments.
> > 
> > I was thinking of writing a perl script that would read my LKML archive
> > and somewhat intelligently looking at people who replied to patches,
> > that also has snippets of the patch in the reply, and counting them. I
> > think that would be a more accurate use of real reviewers than just the
> > Reviewed-by tag.
> 
> Agreed. Unless there is commentary accompanying the review, it doesn't add a
> lot.

No, that is not always true. If I see a naked "reviewed-by" from a
person who's been working on the subsystem quite a bit and shown a good
judgement it is enough for me. I do not need them to find something to
nitpick over so that there is "meat" to the review.

> While the nod of approval builds incremental confidence, the true measure
> of a review is a resulting change to the patch for the better. Of course, a good
> review takes the same amount of time regardless of if a change is required.

Thanks.

-- 
Dmitry
