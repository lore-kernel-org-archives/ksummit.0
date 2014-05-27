Return-Path: <lczerner@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 726B4990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 17:27:13 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 92C052023E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 17:27:12 +0000 (UTC)
Date: Tue, 27 May 2014 19:27:06 +0200 (CEST)
From: =?ISO-8859-15?Q?Luk=E1=A8_Czerner?= <lczerner@redhat.com>
To: Wolfram Sang <wsa@the-dreams.de>
In-Reply-To: <20140524111927.GA3455@katana>
Message-ID: <alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 24 May 2014, Wolfram Sang wrote:

> Date: Sat, 24 May 2014 13:19:28 +0200
> From: Wolfram Sang <wsa@the-dreams.de>
> To: James Bottomley <James.Bottomley@HansenPartnership.com>
> Cc: ksummit-discuss@lists.linuxfoundation.org
> Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
> 
> 
> > A lot of the problems accepting patches into the kernel stem from trying
> > to get them reviewed
> 
> So true.
> 
> > I'm really looking for evidence of actually having read (and
> > understood) the patch, so the best review usually comes with a
> > sequence of comments, questions and minor nits and a reviewed-by at
> > the end.
> 
> Yes, this is good (and as much needed as describing the tests done for a
> patch by the submitter). Still, trust is an issue here. Even with
> comments you described above, if it is from a person you don't know the
> review needs to be reviewed. Depending on the reviewer that might take
> more time than to do the review on your own. Which pays off if the
> person stays. If not, well, then I still see this as something a
> maintainer should do, simply to educate people. It just might not help
> getting patches reviewed faster.
> 
> > review pool, so we need more than the Reviewed-by: tag.  It has been
> > suggested that people who submit patches should also be required to
> > review patches from other people
> 
> Eeks. Enforced reviews are likely to be sloppy IMO. And sloppy reviews
> can easily cause more work, just like sloppy documentation.
> 
> > conferences and development sprints which do hack time.  Another
> > possibility is to publish a subsystem to review list (similar to the
> > to do list idea). This at least shows submitters why their patch
> > series is languishing and could serve as a call to arms if it gets too
> > long.
> 
> For those using patchwork, such lists are on the web and referenced in
> MAINTAINERS. Submitters don't use it much (yet), according to my
> experiences.
> 
> The thing I'd like to see way more in the Linux ecosystem:
> 
> Paid reviewers/maintainers (selected people, no hiring offers). The
> number of developers increases faster than the number of quality
> keepers. So, the latter should be given the chance to focus on it, if
> they want to.

That does not make much sense to me. In order to review the code you
need to understand it and if you already understand the code, you
can write it as well. I do not think that having dedicated reviewers
is realistic in the long run.

However encouraging reviewers by treating reviewed-by tag with equal
"respect" as signed-off-by seems like the better way.

-Lukas

> 
>    Wolfram
> 
> 
