Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EBA64988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 21:59:12 +0000 (UTC)
Received: from Galois.linutronix.de (www.linutronix.de [62.245.132.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5DC5D1FFF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 21:59:12 +0000 (UTC)
Date: Wed, 28 May 2014 23:59:02 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Josh Triplett <josh@joshtriplett.org>
In-Reply-To: <20140528162833.GA23815@thin>
Message-ID: <alpine.DEB.2.10.1405282332430.3952@nanos>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
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

On Wed, 28 May 2014, Josh Triplett wrote:
> 
> Or perhaps in LWN's statistics, which focus on Signed-off-by but don't
> mention Reviewed-by at all.

Oh no. The existing madness about the LWN stats is bad enough. We
don't want to encourage another excel sheet accountable competition.

It's bad enough that the stats already foster a metric ton of horrible
patches. The least we need is a metric ton of horrible reviews
conducted just to show up in the rankings.

You cannot fix the lack of capable reviewers or the lack of time of
those who are capable by any tags, statitics or whatever.

You need to look at the underlying problem. And that's at least
related by the commit statistics. The flood of crappy patches and the
amount of review cycles it takes to get even trivial stuff into an
acceptable shape is what makes the live of a maintainer and reviewer a
nightmare.

The goals of some organizations, to reach a top X contributor level in
201X, results in a frency of half baken "works for me" patches,
completely unreviewed inside of the organization and let lose on the
maintainers/reviewers who are burdened to educate the submitters.

That's the real issue. And this needs to be fixed first.

I really started to put breaks into this cycle of hell, where I get
spammed with a 30+ patch series in the morning and after I spent some
quality time looking at it and replying to a particular patch, I get
another spam bomb within a few hours, which is not much better than
the previous one.

Hell no, that does not work. No matter how many maintainers/reviewers
you have there is no way that they can scale to that global effort
which is obviously conducted to prove a newfangled variant of the
Infinite-Monkey-Theorem: Computers instead of typewriters and well
written kernel patches instead of Shakespeares writings.

Thanks,

	tglx
