Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4877C910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 20:46:23 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 4D33A1FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 20:46:21 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Theodore Ts'o <tytso@mit.edu>
Date: Thu, 29 May 2014 23:03:28 +0200
Message-ID: <700704721.GMn4j9GJx9@vostro.rjw.lan>
In-Reply-To: <20140529182753.GJ25041@thunk.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
	Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday, May 29, 2014 02:27:53 PM Theodore Ts'o wrote:
> On Wed, May 28, 2014 at 06:48:47PM +0000, Paul Walmsley wrote:
> > 
> > Also long-overdue is a clarification on exactly what "Acked-by" means.
> > Right now it is being used for at least two distinct and
> > mutually-incompatible purposes:
> > 
> > 1. A maintainer A for code affected by a patch, who is distinct from a
> > maintainer B queuing a patch, has reviewed the patch and has cleared it as
> > being OK for maintainer B to send upstream
> > 
> > 2. A casual review has been done by someone who is not a maintainer for
> > the code in question
> > 
> > What I would propose is to have the first use replaced by a new tag, 
> > "Maintainer-acked-by:", and the second use abolished, along with 
> > "Acked-by:", and replaced by "Reviewed-by:".
> 
> I agree in general, but if we're going to abolish the 2nd use
> entirely, then it's much simpler to keep Acked-by for its original
> meaning; it's easier to type, after all.
> 
> This is basically I do for ext4 patches today; if someone sends me an
> acked-by in the #2 sense, I simply won't add it to the s-o-b section,
> and I don't let the fact that someone has asserted that they have done
> a casual review to give me a false sense of security; if I still have
> to do a deep review, I'm going to catch the casual stuff anyway, and
> the fact that a casual review doesn't obviate the need for a careful
> review.
> 
> But if a senior ext4 developer adds a Reviewed-by:, that does lend a
> lot of value to me as a maintainer, since I can trust that certain
> folks like Jan and Eric and Lukas and others will do a good job doing
> the review, and that actually *does* offload significant amounts of
> work off my shoulders.

Well, perhaps we can reserve the Acked-by for maintainers and add
something like Supported-by for the 2nd meaning.

Rafael
