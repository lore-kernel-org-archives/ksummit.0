Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 736937AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:25:53 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF7AF21E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:25:52 +0000 (UTC)
Date: Wed, 3 Aug 2016 15:26:07 +0200
From: Greg KH <greg@kroah.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20160803132607.GA31662@kroah.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87a8guq9y8.fsf@intel.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 04:05:35PM +0300, Jani Nikula wrote:
> > really?  Yes, we have regressions at times in stable kernels, but
> > really, our % is _very_ low.  Probably less than "normal" releases, but
> > that's just a random guess, it would be good for someone to try to do
> > research on this before guessing...
> 
> Sorry for not being clear. More than anything, I was looking for a
> better definition of what cc: stable means when applied by developers
> and maintainers, and what the expectation should be. Should it be
> considered more a hint that the commit should be considered for
> backporting or an explicit request to backport? This will affect how
> easily maintainers add cc: stable. Should I add it to any fix that I
> think might be useful that satisfies stable rules, or just the severe
> ones that are absolutely needed, or something between? I just don't
> think we have any consistency on this across the kernel.

Really?  After 10+ years of stable kernels people still don't understand
this?  Are you sure?  Isn't the stable rule list explicit enough?  What
more do I need to do to say, "stable patches fix bugs"?

It really isn't hard here people, don't make it more difficult than it
has to be.

> >> However, I presume maintainers don't add cc: stable lightly, even when
> >> the fix could benefit stable kernel users, if there's any risk of the
> >> backport coming back to haunt you. I believe maintainers assume some
> >> degree of responsibility for the backport when they add cc: stable, even
> >> when they don't have the means to do QA. (And with the plethora of
> >> longterm kernels around these days, who does?)
> >> 
> >> But does being more liberal in adding cc: stable tags and shifting the
> >> responsibility for backports towards stable kernel maintainers work
> >> either? The bugs will anyway be reported to subsystem/driver
> >> maintainers, not stable maintainers.
> >> 
> >> Side note, I think it would be helpful to be allowed to revert clearly
> >> broken stable kernel backports even without an accompanying mainline
> >> revert. The original commit might be perfectly fine upstream, while the
> >> backport is bogus.
> >
> > Since when do we reject such reverts?  I'd much rather fix something
> > properly, the way it was fixed in Linus's tree, as that is better off
> > for users, don't you agree?
> 
> Of course I agree with that, but it's not what I was saying! If Linus'
> tree + some commit is the perfect fix, it doesn't mean that Linus' tree
> half a dozen releases ago + some commit also is.

Are you sure about that?  My experience here says that is _exactly_ what
the perfect fix is.  Sure there are exceptions, but those are lost in
the noise of the general stable patch flow (8-10 patches a day, every
day, non-stop)

> If we tagged that commit cc: stable and it fails in stable, we should
> be able to revert that from stable without touching Linus' tree.

Sure, let me know, but again, I don't like this as it obviously was a
bug to be fixed, so why wouldn't we want to fix it?

> Perhaps it's a corner case and generally not a problem [citation
> needed], but we've hit it. Not sure if that's enough to warrant a
> mention in stable rules?

No, I don't think it is, as I think you are totally over-thinking this
whole thing.

What _specifically_ is wrong with the current workflow where you have
seen problems that stable kernel users have hit?

Real examples from now on please, if there are problems in the stable
workflow that we have today, everyone needs to show it with examples,
I'm tired of seeing mental gymnastics around stable kernels just because
it is "fun".

thanks,

greg k-h
