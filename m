Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B86EFF83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 02:17:37 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 49C48800
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 02:17:37 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id h69-v6so4449683pfd.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 19:17:37 -0700 (PDT)
Date: Wed, 5 Sep 2018 19:17:29 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180906021719.GA7303@localhost.localdomain>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<CAFbkSA3Zjojhb4uUFrdpJUTSWz1V9RbG_EL83roQY3bzX80i-g@mail.gmail.com>
	<20180905144233.GB15573@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180905144233.GB15573@kroah.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Justin Forbes <jforbes@redhat.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hey,

On Wed, Sep 05, 2018 at 04:42:33PM +0200, Greg KH wrote:
> On Tue, Sep 04, 2018 at 04:22:59PM -0500, Justin Forbes wrote:

<cut>

> 
> Laura, thanks for bringing this up.  I'll try to respond here given that
> Justin agrees with the issue of timing.
> 
> Honestly, this year has been a total shit-storm for stable due to the
> whole security mess we have been dealing with.  The number of
> totally-crazy-intrusive patches I have had to take is insane.  Combine
> that with a total lack of regard for the security issues for some arches
> (arm32 comes to mind), it's been a very rough year and I have been just
> trying to keep on top of everything.
>

Cannot agree more :-)

> Because of these issues (and it wasn't just spectre/meltdown, we have
> had other major fire drills in some subsystems), the release cycles have
> been quick and contain a lot of patches, sorry about that.  But that is
> reflected in Linus's tree as well, so maybe this is just the "new
> normal" that we all need to get used to.
> 
> I could do a "one release a week" cycle, which I would _love_ but that
> is not going to decrease the number of patches per release, it is only
> going to make them large (patch rate stays the same, and increases, no
> matter when I release)  So I had been thinking that to break the
> releases up into a "here's a hundred or so patches" per release, was a
> helpful thing to the reviewers.
> 
> If this assumption is incorrect, yes, I can go to one-per-week, if
> people agree that they can handle the large increase per release
> properly.  Can you all do that?
> 

I think the fixed schedule is fine for us. But as any good rule has
exceptions, I am assuming there will still be exceptions to the proposed
1 release per week, right? For example, are the insane security backports,
like meltdown / spectre, still follow the cadence or are they gonna be
out of order, as their nature seams to be :-) ?


> Are we going to do a "patch tuesday" like our friends in Redmond now? :)
> 
> Note, if we do pick a specific day-per-week, then anything outside of
> that cycle will cause people to look _very_ close at the release.  I
> don't know if that's a good thing or not, but be aware that it could
> cause unintended side-affects.  Personally I think the fact that we are
> _not_ regular is a good thing, no out-of-band information leakage
> happens that way.

Well, the ability to do a release per major change/backport (L1TF/Meltdown)
may be one thing to consider, yes. I agree that for these cases, having
out-of-order releases may be a good thing.

Now, with that said, the testing effort with cadence or not will not
change, as the amount of patches / rate of patches won't really change.

How about having a couple of stable-rc per week and then finalize the week
with one release? That should give opportunity for people who want
to dilute the testing effort on smaller chunks by focusing on  testing every rc
and also give opportunity for those who want to have a longer release
cycle of one release per week. That would be following what is done by
Linus. 

BR, Eduardo

> 
> thanks,
> 
> greg k-h
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
