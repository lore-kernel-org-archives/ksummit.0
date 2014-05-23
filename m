Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0E8FB82D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 07:44:41 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77A1C2022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 07:44:39 +0000 (UTC)
Date: Fri, 23 May 2014 16:44:30 +0900
From: Greg KH <greg@kroah.com>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140523074430.GA14763@kroah.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
	<20140523021347.GB26799@kroah.com>
	<CAPcyv4hqxrWmPYVTsu80=L6hka4bAg6qdkk7CiGKqxkJm4r82Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4hqxrWmPYVTsu80=L6hka4bAg6qdkk7CiGKqxkJm4r82Q@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 22, 2014 at 08:03:32PM -0700, Dan Williams wrote:
> >> Neil already disabused me of the idea that a "gatekeeper" could be
> >> used to beneficial effect in the core kernel, and I can see it's
> >> equally difficult to use this in filesystems that need to be careful
> >> of ABI changes.  However, nothing presented so far has swayed me from
> >> my top of mind concern which is the ability to ship pre-production
> >> driver features in the upstream kernel. I'm thinking of it as
> >> "-staging for otherwise established drivers".
> >
> > The thing you need to realize is that the large majority of people who
> > would ever use that new "feature" will not until it ends up in an
> > "enterprise" kernel release.  And that will not be for another few
> > years, so while you think you got it all right, we really don't know who
> > is using it, or how well it works, for a few years.
> >
> > But feel free to try to do this in your subsystem, as Ted points out, it
> > can be done for somethings, but be careful about thinking things are ok
> > when you don't have many real users :)
> >
> 
> Point taken.
> 
> However, if this is the case, why is there so much tension around some
> merge events?  Especially in cases where there is low risk for
> regression.

What "tension" are you speaking of?  Getting new apis correct before we
do a release?  Or something else?

I didn't see any specific examples mentioned in this thread, but I might
have missed it.

> We seem to aim for perfection in merging and that is
> specifically the latency I am targeting with a "this feature is behind
> a gatekeeper" release-valve for that pressure to not merge.  If things
> stay behind a gatekeeper too long they get reverted.  Would that
> modulate the latency to "ack" in any meaningful way.

For a filesystem, or a driver, as stated, this might work.  For a
syscall, or new subsystem api to userspace, that isn't going to work for
the above mentioned reasons.  See the cgroups interface for one example
of how long it took for people to actually start to use it (years) and
then, once we realized just how bad the interface really was for
real-world usages, it was too late as people were already using them, so
we have to have them around for an indefinate time before they can be
removed, if ever.

thanks,

greg k-h
