Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0CD5ABCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:24:11 +0000 (UTC)
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF312101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:24:10 +0000 (UTC)
Received: by pabvl15 with SMTP id vl15so173102314pab.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:24:10 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 10 Jul 2015 13:24:07 -0700
From: Guenter <linux@roeck-us.net>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20150710202407.GC9469@groeck-UX31A>
References: <559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org>
	<20150710182045.GA19854@roeck-us.net>
	<20150710185800.GW23515@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710185800.GW23515@io.lakedaemon.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org, jic23@jic23.retrosnub.co.uk
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

On Fri, Jul 10, 2015 at 06:58:00PM +0000, Jason Cooper wrote:
> > Agreed. On the other side, is gaming really a problem with kernel code
> > reviews ? Sure, a search engine provider will have to look out for
> > abuse patterns, but for code reviews I am not sure if it is worth the
> > effort. I would suspect that it is much more likely that the simple
> > "wc -w" approach should provide you with worthy candidates for the KS.
> > Since you are not dealing with hundreds or thousands of candidates,
> > I'd assume you'll do a hand screening anyway, and quickly identify any
> > gamers. I'd be quite surprised if there are any, though.
> 
> I've personally seen it, and I don't think I'm alone.  It seems to follow
> a pattern of:
> 
>  - Manager/HR thinks counting tags is a useful metric (#!@$ laziness).
>  - tag-count becomes an evaluation item.
>  - Pay raises are affected.
>  - patch submitters do the obvious.
>  - maintainers weep and die a little inside.
> 
Sigh :-(. Guess I never had the pleasure of working for any of those
companies, and the areas of the kernel I care about may be too obscure
to get much attention by the gamers.

> The easy ones to spot are multiple-S-o-bs.  I've actually been told "No,
> he didn't write any code, I was just trying to help him out."
> 
Multiple S-o-b's don't always mean gaming, though. For example, my
company's workflow requires me to sign off upstream patches, not to
get annother S-o-b with my name on it, but to certify that the patch 
does not accidentially publish any company IP (and, if it does, it is
my fault, not the fault of the person who wrote the code).

Guenter
