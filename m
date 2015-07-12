Return-Path: <jpoimboe@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C871DAAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 12:28:27 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3FFF8186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 12:28:27 +0000 (UTC)
Date: Sun, 12 Jul 2015 07:28:23 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20150712122823.GA4366@treble.redhat.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20150712052317.GB15346@x>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Sat, Jul 11, 2015 at 10:23:17PM -0700, Josh Triplett wrote:
> On Sat, Jul 11, 2015 at 10:48:24PM -0500, Josh Poimboeuf wrote:
> > On Fri, Jul 10, 2015 at 06:00:50PM -0700, Davidlohr Bueso wrote:
> > > On Fri, 2015-07-10 at 13:14 -0500, Josh Poimboeuf wrote:
> > > > On Wed, Jul 08, 2015 at 02:53:15PM -0400, Steven Rostedt wrote:
> > > > > I personally don't trust a Reviewed-by tag much, as I sometimes see
> > > > > them appear without any comments.
> > > > > 
> > > > > I was thinking of writing a perl script that would read my LKML archive
> > > > > and somewhat intelligently looking at people who replied to patches,
> > > > > that also has snippets of the patch in the reply, and counting them. I
> > > > > think that would be a more accurate use of real reviewers than just the
> > > > > Reviewed-by tag.
> > > > 
> > > > I'm relatively new to lkml so my perceptions might be skewed.  But it
> > > > seems to me that, for non-trivial patches, the Reviewed-by tag is pretty
> > > > much useless as a metric.  From what I can tell, the biggest problems
> > > > with relying on Reviewed-by to get meaningful statistics are:
> > > > 
> > > > 1. It's self-reported by the reviewer.
> > > > 
> > > >    Maybe a reviewer gave some hugely valuable feedback in versions 1-4
> > > >    of the patch, but wasn't around to provide the Reviewed-by tag for
> > > >    the final v6.
> > > 
> > > Normally good maintainers pick up ack/review tags along the way when
> > > they pickup the final patch.
> > 
> > A maintainer can't pick up the tag if the reviewer doesn't post it.
> > 
> > In this example the reviewer wouldn't have posted Reviewed-by because,
> > despite the fact that they did a thorough review, the patch still had
> > issues in its earlier versions.  The reviewer did a lot of work but
> > didn't get credit for it.
> 
> And that's not always a bad thing.  Sometimes I review the previous
> version of a patch, and then see that tag applied to a later version
> that is substantially different from the version I reviewed; that makes
> me uncomfortable.  I care less about getting credit for a review and
> more about not having my Reviewed-by tag attached to something I didn't
> review.

If our goal is to quantify the work of good reviewers, so that we can
shine a light on them and hopefully motivate them to do more review,
then I'd argue that having a reviewer doing a lot of work and not
getting credit for it *is* a bad thing.

I agree that the Reviewed-by tag doesn't apply here.  It communicates
patch approval, rather than review helpfulness.  That's why I proposed a
new tag from the patch author and/or maintainer.

-- 
Josh
