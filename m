Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C4C84AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:28:38 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 44F617C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:28:38 +0000 (UTC)
Date: Mon, 13 Jul 2015 21:28:35 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Guenter <linux@roeck-us.net>
Message-ID: <20150713192835.GM7021@wotan.suse.de>
References: <20150709190640.GC788@roeck-us.net> <20150709194734.GG9169@vmdeb7>
	<20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org>
	<20150710182045.GA19854@roeck-us.net>
	<20150710185800.GW23515@io.lakedaemon.net>
	<20150710202407.GC9469@groeck-UX31A>
	<20150710211405.GJ7021@wotan.suse.de>
	<20150711005212.GA11164@groeck-UX31A>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711005212.GA11164@groeck-UX31A>
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

On Fri, Jul 10, 2015 at 05:52:12PM -0700, Guenter wrote:
> Hi Luis,
> 
> On Fri, Jul 10, 2015 at 11:14:05PM +0200, Luis R. Rodriguez wrote:
> > > > 
> > > Multiple S-o-b's don't always mean gaming, though. For example, my
> > > company's workflow requires me to sign off upstream patches, not to
> > > get annother S-o-b with my name on it, but to certify that the patch 
> > > does not accidentially publish any company IP (and, if it does, it is
> > > my fault, not the fault of the person who wrote the code).
> > 
> > There is a danger to having people interpret the s-o-b tag differently
> > than what it originally was intended for, such confusion deserves
> > serious attention and my hope is that if folks detect these misuses
> > they can try to educate folks on it. The s-o-b tag means the person
> > is certifying under the Developer Certificate or Origin (DCO) the
> > patch in question. That's it. The practical gains of such a leight
> > weight development tool to use something like the s-o-b combined
> > with the huge legal merit behind it has convinced us to generalize
> > the DCO and encourage people outside of Linux to use it:
> > 
> Not really sure if I understand you correctly. Are you saying that you
> consider the above to be a mis-use of s-o-b ?

Only if folks disregard or not aware of the DCO.

> By co-signing a patch I do (co-)certify it under DCO; I am well aware
> of that. That it may have an additional context doesn't change that,
> or limit its value.

Sure.

> I can well imagine that other companies have a
> similar approval flow, and I don't really understand why that would
> or could be a problem. Can you educate me ?

The concern is when folks document SOB practices which do not address
first and foremost that the SOB *is* primarily for the DCO, now if
companies or groups like to have their own other internal ammendments
for it, that's fine, its just that for patches that go into Linux
the SOB just is meant to implicate the DCO. Nothing more.

 Luis
