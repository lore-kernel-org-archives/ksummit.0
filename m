Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7F0D89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 16:03:25 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 645B16B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 16:03:24 +0000 (UTC)
Date: Thu, 10 May 2018 18:03:22 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
References: <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 9 May 2018, Daniel Vetter wrote:

> >> Then, why don't we have a pre-integration tree for fixes? That would
> >> at least simply automated testing of fixes separately from new
> >> material.
> >
> >> Perhaps this has already been discussed, and concluded and it's not
> >> worth it, then apologize for my ignorance.
> >
> > I think this is an excellent idea, copying in Stephen for his input.
> > I'm currently on holiday but unless someone convinces me it's a terrible
> > idea I'm willing to at least give it a go on a trial basis once I'm back
> > home.
> 
> Since Stephen merges all -fixes branches first, before merging all the
> -next branches, he already generates that as part of linux-next. All
> he'd need to do is push that intermediate state out to some
> linux-fixes branch for consumption by test bots.

What I do for my trees is that I actually merge the '-fixes' branch (that 
is scheduled to go to Linus in the 'current' cycle) into my for-next 
branch as well.

This has the advantage of (a) getting all the coverage linux-next does (b) 
seeing any potential merge conflicts early

Is this not feasible for other trees?

-- 
Jiri Kosina
SUSE Labs
