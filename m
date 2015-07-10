Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C7FFAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:14:09 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3D09616B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:14:08 +0000 (UTC)
Date: Fri, 10 Jul 2015 23:14:05 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Guenter <linux@roeck-us.net>
Message-ID: <20150710211405.GJ7021@wotan.suse.de>
References: <1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org>
	<20150710182045.GA19854@roeck-us.net>
	<20150710185800.GW23515@io.lakedaemon.net>
	<20150710202407.GC9469@groeck-UX31A>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710202407.GC9469@groeck-UX31A>
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

On Fri, Jul 10, 2015 at 01:24:07PM -0700, Guenter wrote:
> On Fri, Jul 10, 2015 at 06:58:00PM +0000, Jason Cooper wrote:
> > > Agreed. On the other side, is gaming really a problem with kernel code
> > > reviews ? Sure, a search engine provider will have to look out for
> > > abuse patterns, but for code reviews I am not sure if it is worth the
> > > effort. I would suspect that it is much more likely that the simple
> > > "wc -w" approach should provide you with worthy candidates for the KS.
> > > Since you are not dealing with hundreds or thousands of candidates,
> > > I'd assume you'll do a hand screening anyway, and quickly identify any
> > > gamers. I'd be quite surprised if there are any, though.
> > 
> > I've personally seen it, and I don't think I'm alone.  It seems to follow
> > a pattern of:
> > 
> >  - Manager/HR thinks counting tags is a useful metric (#!@$ laziness).
> >  - tag-count becomes an evaluation item.
> >  - Pay raises are affected.
> >  - patch submitters do the obvious.
> >  - maintainers weep and die a little inside.
> > 
> Sigh :-(. Guess I never had the pleasure of working for any of those
> companies, and the areas of the kernel I care about may be too obscure
> to get much attention by the gamers.
> 
> > The easy ones to spot are multiple-S-o-bs.  I've actually been told "No,
> > he didn't write any code, I was just trying to help him out."
> > 
> Multiple S-o-b's don't always mean gaming, though. For example, my
> company's workflow requires me to sign off upstream patches, not to
> get annother S-o-b with my name on it, but to certify that the patch 
> does not accidentially publish any company IP (and, if it does, it is
> my fault, not the fault of the person who wrote the code).

There is a danger to having people interpret the s-o-b tag differently
than what it originally was intended for, such confusion deserves
serious attention and my hope is that if folks detect these misuses
they can try to educate folks on it. The s-o-b tag means the person
is certifying under the Developer Certificate or Origin (DCO) the
patch in question. That's it. The practical gains of such a leight
weight development tool to use something like the s-o-b combined
with the huge legal merit behind it has convinced us to generalize
the DCO and encourage people outside of Linux to use it:

http://developercertificate.org/

There was coverage over this on lwn:

https://lwn.net/Articles/592503/

I've also written about the importance here:

http://www.do-not-panic.com/2014/02/developer-certificate-of-origin.html

The list of users is outdated and I cannot keep up counting folks
using it, but the more, quite recently the docker project announced
it was embracing it for instance (although it seems they modified it
mildly, WTF(?)):

https://blog.docker.com/2014/01/docker-code-contributions-require-developer-certificate-of-origin/

Because of its legal value, and because we all stand to gain from this
legal value then as a commnity at large we should try to correc
innappropriate uses of the s-o-b and educate folks on it.

I'll stay out of the conversation of other tag's, only to second Julia's
sentiments

  Luis
