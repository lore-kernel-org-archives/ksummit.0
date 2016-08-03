Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7285956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:05:38 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 15E6210A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:05:38 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20160803110935.GA26270@kroah.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com>
Date: Wed, 03 Aug 2016 16:05:35 +0300
Message-ID: <87a8guq9y8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 03 Aug 2016, Greg KH <greg@kroah.com> wrote:
> On Wed, Aug 03, 2016 at 12:36:29PM +0300, Jani Nikula wrote:
>> On Wed, 03 Aug 2016, "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
>> > On Tuesday, August 02, 2016 04:34:00 PM Mark Brown wrote:
>> >> On Tue, Aug 02, 2016 at 05:12:47PM +0300, Jani Nikula wrote:
>> >> 
>> >> > Generally adding cc: stable is like, this is clearly a fix to a bug that
>> >> > is present in stable kernels, and the bug should be fixed, but I have no
>> >> > idea nor resources to review or test if this is the right fix across all
>> >> > stable kernels. You end up relying on your gut feeling too much to be
>> >> > comfortable. You have to make the call too early in the process.
>> >> 
>> >> I think the problems here are more in the process of how things go from
>> >> being tagged stable to appearing in a stable release - the QA or lack
>> >> thereof and so on.  While I do share some of your misgivings here I do
>> >> also really like the fact that it's really easy for people to push
>> >> things out for the attention of those working on backports.  It's
>> >> essentially the same as the question I often find myself asking people
>> >> who don't upstream - "why would this fix not benefit other users?".
>> >
>> > Agreed, and I think that's exactly where the expectations don't match what's
>> > delivered in the long-term-stable trees.
>> >
>> > It should be made clear that "stable" doesn't mean "no regressions".  What
>> > it reall means is "hey, if you care about backports, this is the stuff to take
>> > into consideration in the first place".
>> 
>> I think this interpretation matches reality better than what
>> Documentation/stable_kernel_rules.txt leads you to believe about adding
>> cc: stable tag.
>
> really?  Yes, we have regressions at times in stable kernels, but
> really, our % is _very_ low.  Probably less than "normal" releases, but
> that's just a random guess, it would be good for someone to try to do
> research on this before guessing...

Sorry for not being clear. More than anything, I was looking for a
better definition of what cc: stable means when applied by developers
and maintainers, and what the expectation should be. Should it be
considered more a hint that the commit should be considered for
backporting or an explicit request to backport? This will affect how
easily maintainers add cc: stable. Should I add it to any fix that I
think might be useful that satisfies stable rules, or just the severe
ones that are absolutely needed, or something between? I just don't
think we have any consistency on this across the kernel.

>> However, I presume maintainers don't add cc: stable lightly, even when
>> the fix could benefit stable kernel users, if there's any risk of the
>> backport coming back to haunt you. I believe maintainers assume some
>> degree of responsibility for the backport when they add cc: stable, even
>> when they don't have the means to do QA. (And with the plethora of
>> longterm kernels around these days, who does?)
>> 
>> But does being more liberal in adding cc: stable tags and shifting the
>> responsibility for backports towards stable kernel maintainers work
>> either? The bugs will anyway be reported to subsystem/driver
>> maintainers, not stable maintainers.
>> 
>> Side note, I think it would be helpful to be allowed to revert clearly
>> broken stable kernel backports even without an accompanying mainline
>> revert. The original commit might be perfectly fine upstream, while the
>> backport is bogus.
>
> Since when do we reject such reverts?  I'd much rather fix something
> properly, the way it was fixed in Linus's tree, as that is better off
> for users, don't you agree?

Of course I agree with that, but it's not what I was saying! If Linus'
tree + some commit is the perfect fix, it doesn't mean that Linus' tree
half a dozen releases ago + some commit also is. If we tagged that
commit cc: stable and it fails in stable, we should be able to revert
that from stable without touching Linus' tree. Perhaps it's a corner
case and generally not a problem [citation needed], but we've hit
it. Not sure if that's enough to warrant a mention in stable rules?

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
