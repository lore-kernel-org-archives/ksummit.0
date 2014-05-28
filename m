Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D2E20982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:55:59 +0000 (UTC)
Received: from Galois.linutronix.de (www.linutronix.de [62.245.132.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AA752033D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:55:58 +0000 (UTC)
Date: Thu, 29 May 2014 01:55:51 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: josh@joshtriplett.org
In-Reply-To: <20140528233145.GA14933@cloud>
Message-ID: <alpine.DEB.2.10.1405290138290.3952@nanos>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 28 May 2014, josh@joshtriplett.org wrote:
> On Wed, May 28, 2014 at 11:59:02PM +0200, Thomas Gleixner wrote:
> > You need to look at the underlying problem. And that's at least
> > related by the commit statistics. The flood of crappy patches and the
> > amount of review cycles it takes to get even trivial stuff into an
> > acceptable shape is what makes the live of a maintainer and reviewer a
> > nightmare.
> > 
> > The goals of some organizations, to reach a top X contributor level in
> > 201X, results in a frency of half baken "works for me" patches,
> > completely unreviewed inside of the organization and let lose on the
> > maintainers/reviewers who are burdened to educate the submitters.
> 
> While I do think that problem exists, I don't think the presence or
> absence of commit statistics particularly motivate it.  Either way,

It does. I've heard and seen written statements, that corporate goals
are to show up in the top X rank of lwn stats. That's the sad truth.

The reason is simple. stats are an "objective" measure for managers,
while patch quality cannot be expressed in any excel sheet.

> you'll have random driver/patch submissions motivated by "I need to ship
> a product" or "entity X made it a requirement to get my driver
> upstream".

That does not excuse that exactly those people try to offload the
education of their engineers to the maintainers/reviewers. That simply
does not work and it does not make sense either.
 
> > That's the real issue. And this needs to be fixed first.
> > 
> > I really started to put breaks into this cycle of hell, where I get
> > spammed with a 30+ patch series in the morning and after I spent some
> > quality time looking at it and replying to a particular patch, I get
> > another spam bomb within a few hours, which is not much better than
> > the previous one.
> 
> That's definitely a good workflow question.  We tell people to break
> huge patches down into pieces, and that can turn substantial changes
> into long patch series.  Which of the following is your primary concern:
> 
> - That people update the patch series before you're done submitting
>   feedback on it?  That does seem like an annoying problem, and I
>   haven't seen anyone explicitly talk about it; we should document it,
>   and develop some standard boilerplate saying "If you get feedback on
>   patch 04/25, don't send out v2 of the whole series until you get the
>   remaining feedback on the patches".  And until users are reasonably
>   educated on that problem, frequent reviewers may want to include that
>   boilerplate in their patch reviews.

I'm happy to add a boiler plate if that actually makes people to think
about what they are doing. I just doubt that it works.
 
> - That a 30-patch series is painful to review via email?  Agreed
>   completely; I think we need better git-based workflows that don't
>   always have to fall back to the least-common-denominator of patchbomb
>   threads.

No. I rather review a 30+ patch series in email than going through
loops and hoops of git tools and whatever. That's a non starter as
trying to force people to deal with bugzilla.

You are trying again to solve a non technical problem with technical
measures. That does not work. The mail volume is not the issue. I can
easily delete a whole thread with one keystroke.

The issue is the quality and you are not going to fix that by git
based workflows or whatever tools you dream of. A large well thought
of large patch queue is very well manageable in mail.

Crap stays crap no matter what tools you are using to relay it. You
need to fix the crap issue before you even start to think about better
tools.

Thanks,

	tglx
