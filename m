Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3BDD9B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 03:13:25 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 163B1ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 03:13:23 +0000 (UTC)
Date: Thu, 9 Jul 2015 23:13:16 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20150710001411.GJ9417@thunk.org>
Message-ID: <alpine.DEB.2.10.1507092311140.2595@hadrien>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150709193951.GE9169@vmdeb7>
	<20150709202152.GE1237@dtor-ws> <20150710001411.GJ9417@thunk.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 9 Jul 2015, Theodore Ts'o wrote:

> On Thu, Jul 09, 2015 at 01:21:52PM -0700, Dmitry Torokhov wrote:
> >
> > No, that is not always true. If I see a naked "reviewed-by" from a
> > person who's been working on the subsystem quite a bit and shown a good
> > judgement it is enough for me. I do not need them to find something to
> > nitpick over so that there is "meat" to the review.
>
> Absolutely.  If I'm looking at a patch for ext4, and I see a bare
> Reviewed-by: from Jan Kara, I treat that very differently compared to
> a Reviewed-by: coming from someone like Nick Krause.
>
> The challenge is if we are using a scheme that uses some kind of
> automated counting of Reviewed-by lines, how do we make the system
> smart enough so it counts the former, but not the latter?

I guess it's possible using various features of what the person has done
in the past to devise a machine learning algorithm that could make this
distinction.

julia

> Or worse,
> *encourages* more of the latter, which just adds more noise which
> actually increases the load on Maintainers, not decreases.
>
> (Which is also my objection to people sending patches generated from
> "checkpatch --file" runs.  Maybe it's fine in for staging code, but
> for other subsystems, it basically just means there are more patches
> that require review by someone clueful --- since sometimes "cleanup"
> patches from trolls actually introduce bugs.)
>
> 						- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
