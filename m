Return-Path: <dave@stgolabs.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3247B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 01:01:00 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39122207
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 01:01:00 +0000 (UTC)
Message-ID: <1436576450.27924.59.camel@stgolabs.net>
From: Davidlohr Bueso <dave@stgolabs.net>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 10 Jul 2015 18:00:50 -0700
In-Reply-To: <20150710181409.GA30145@treble.redhat.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2015-07-10 at 13:14 -0500, Josh Poimboeuf wrote:
> On Wed, Jul 08, 2015 at 02:53:15PM -0400, Steven Rostedt wrote:
> > I personally don't trust a Reviewed-by tag much, as I sometimes see
> > them appear without any comments.
> > 
> > I was thinking of writing a perl script that would read my LKML archive
> > and somewhat intelligently looking at people who replied to patches,
> > that also has snippets of the patch in the reply, and counting them. I
> > think that would be a more accurate use of real reviewers than just the
> > Reviewed-by tag.
> 
> I'm relatively new to lkml so my perceptions might be skewed.  But it
> seems to me that, for non-trivial patches, the Reviewed-by tag is pretty
> much useless as a metric.  From what I can tell, the biggest problems
> with relying on Reviewed-by to get meaningful statistics are:
> 
> 1. It's self-reported by the reviewer.
> 
>    Maybe a reviewer gave some hugely valuable feedback in versions 1-4
>    of the patch, but wasn't around to provide the Reviewed-by tag for
>    the final v6.

Normally good maintainers pick up ack/review tags along the way when
they pickup the final patch.

> 
>    Or maybe they're just focused on the review, and forget or don't care
>    to ask for credit for it at the time by adding a tag.
> 
>    Or maybe they're a maintainer who used Signed-off-by instead (but
>    Signed-off-by doesn't necessarily imply a review).

At least at some level any patches picked up by a maintainer should at
least be compile tested and looked at any obvious issues -- when the
maintainer trusts other devs/submaintainers that did the more thorough
review process.

> 
>    Also, as others have mentioned, it creates the ability to game the
>    system by saying you've reviewed a patch when you really haven't.

The system can always be gamed.

> 
> 2. It's too broad of a statement.  It requires the reviewer to make an
>    official certification that they fully understand and approve of the
>    *entire* patch.  That's certainly a useful statement, but:
> 
>    A reviewer might review only part of the patch, and provide some
>    useful comments for just the part of the patch they reviewed.  But
>    they don't want to take responsibility for saying, to quote Steven,
>    "I took enough effort to understand every part of the patch as if I
>    wrote it myself."
> 
>    Or maybe they didn't carefully review the patch, but instead added
>    something valuable to the discussion which improved the patch in a
>    future version.
> 
>    So it denies credit to all the other people who provided useful
>    comments along the way.

Mentioning/thanking others that helped in any meaningful way is always a
good idea.

> 
> Review comments such as "here's a problem with your code" or "have you
> thought about doing this instead?" can often be more useful a comment
> than "your code looks good".  Maybe it would be a good idea to
> acknowledge those people who give valuable feedback, in all its forms.
> Maybe a new tag would be useful?  Something which:
> 
> a) is reported by the patch author and/or maintainer, since they're in
>    the best position to keep track of useful comments across versions;
> 
>    and
> 
> b) means something like "I'm grateful to this person for giving some
>    valuable feedback".

A tag for this? Nah.

Thanks,
Davidlohr
