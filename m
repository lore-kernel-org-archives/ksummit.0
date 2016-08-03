Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25EA589C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 18:21:18 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2E7F117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 18:21:17 +0000 (UTC)
Date: Wed, 3 Aug 2016 11:21:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20160803182105.GA11395@roeck-us.net>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<57A21F88.7000504@roeck-us.net> <20160803172015.GA36266@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160803172015.GA36266@dtor-ws>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 10:20:15AM -0700, Dmitry Torokhov wrote:
> On Wed, Aug 03, 2016 at 09:44:56AM -0700, Guenter Roeck wrote:
> > On 08/03/2016 09:12 AM, Dmitry Torokhov wrote:
> > >On Wed, Aug 03, 2016 at 08:48:34AM -0700, Guenter Roeck wrote:
> > >>On 08/03/2016 07:45 AM, Jiri Kosina wrote:
> > >>>On Wed, 3 Aug 2016, Greg KH wrote:
> > >>>
> > >>>>>Has anything changed in the process that'd just make patches like this one
> > >>>>>to be not merged these days?
> > >>>>
> > >>>>We have Guenter's test-bot that has helped out immensely here with this.
> > >>>
> > >>>That's very good to know, I admit that I have close to zero idea about how
> > >>>the stable -rcs are being tested.
> > >>>
> > >>
> > >>... and when it doesn't work because I messed it up, we get issues such as 3.18
> > >>and 4.1 being broken for mips and sparc64 because a couple of patches which don't
> > >>apply to those kernels were tagged with an unqualified Cc: stable and applied.
> > >>
> > >>So, if anything, the one problem I see with the current stable process is
> > >>those unqualified stable tags. Maybe those should be deprecated; expecting
> > >>stable maintainers to figure out if a patch applies to a given stable branch
> > >>or not is a bit too much to ask for. With stable releases as far back as
> > >>3.2 (or 338,020 commits as of right now) it is almost guaranteed that a
> > >>patch tagged with an unqualified Cc: stable doesn't apply to all branches.
> > >
> > >When I put cc:stable it is simply a suggestion for stable maintainers to
> > >figure out if this commit is suitable for _their_ stable. I might have
> > >an idea about n-1.x stable series but I certainly do not have any desire
> > >nor time to research whether this patch applicable to 3.2 or 3.0 stable
> > >series.
> > >
> > >Stable maintaintership should be more than "swipe in everything marked
> > >as cc:stable, try compiling and hope it all good".
> > >
> > 
> > I don't think I can agree to that. Personally I see it as my responsibility
> > to give stable maintainers as much information as possible. Dave for networking
> > goes even further, essentially providing stable maintainers with the patches
> > to apply (granted, I have no idea how he finds the time to do that).
> 
> Me neither. There probably 100s of him, like Alans were in the days ;)
> 
> > 
> > How can one reasonable expect a stable maintainer to determine if a patch for
> > an oddball architecture applies, or one for a random subsystem ? Following
> > your argument, stable maintainers would have to be experts on all architectures
> > and subsystems in the kernel - because that is what they would have to be
> > in order to do more than "it compiles, therefore it works". Even compilation
> 
> Well, yes, they would have. Or they would have to assemble a team who
> can cover this. As it is it is quite easy to start a stable tree - do
> you need anything except to announce it? I do not see subsystems
> maintainers being asked if they have time/resources/desire in
> maintaining said stable trees.
> 

I think there are two questions to answer here. One is the level of support
required for stable releases by subsystem maintainers, the other is the level
of validation and testing expected from stable maintainers. Both are valid
questions to ask.

I try to resolve the first part by avoiding "Cc: stable" when possible
and using "Fixes:" instead. In most cases, that works just fine,
and I can even ask patch submitters to provide relevant "Fixes:" tags.
Setting up kerneltests.org was my attempt to address the second part,
though it is now getting overwhelmed by the sheer number of stable
releases.

So, what _are_ the expectations for stable release support from both
subsystem and stable tree maintainers ? And how can we reduce the number
of stable releases ?

Guenter
