Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9FC1386D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 14 Jul 2019 10:14:01 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8905471C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 14 Jul 2019 10:13:58 +0000 (UTC)
Date: Sun, 14 Jul 2019 12:13:53 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
In-Reply-To: <20190714103509.2dd72c90@archlinux>
Message-ID: <alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Jonathan,

On Sun, 14 Jul 2019, Jonathan Cameron wrote:
> To throw another element in here, as a maintainer, the level of review
> done by myself varies a lot depending on
> 
> 1. Trust of the submitter.  I won't check register definitions against
>    data sheets from someone whom history has suggested is careful.
>    When the submitter is someone new to me, I'm much more likely to
>    go through these with a fine toothed comb.
> 
> 2. Reviews from others.  This is the scalability question.  I have a
>    number of very good reviewers for my corner of the kernel.  I'll take
>    a much more superficial look at new code if one of them as given a
>    reviewed-by.
> 
> 3. Chances of side effects.  Core code patches always need (ideally
>    multiple) thorough reviews and even then I'll take a careful look
>    at them and sometimes spin up some additional tests.
> 
> I'm guessing many others follow a similar 'risk' assessment based
> approach.

I certainly do and from my observation this seems to be a pretty common
modus operandi.

> Should we be reflecting that in the tags that maintainers
> add?  Normally it's all just hidden in a signed-off-by.

So we'd need to come up with another set of complicated rules which merily
create the illusion of an objective and quantifyable meaning of these tags.

Even if we agree on a set of new tags the usage will still be based on
individual interpretation, which brings us back to square one.

So no, let's just accept that these things are subjective and apply common
sense to make the best use of them.

Thanks,

	tglx
