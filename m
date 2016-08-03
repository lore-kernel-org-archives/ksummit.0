Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 214318A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:10:23 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B641FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:10:22 +0000 (UTC)
Date: Wed, 3 Aug 2016 16:10:20 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1470233095.2482.46.camel@HansenPartnership.com>
Message-ID: <alpine.LNX.2.00.1608031608160.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Trond Myklebust <trondmy@primarydata.com>,
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

On Wed, 3 Aug 2016, James Bottomley wrote:

> OK, so let me put the opposite point.  Most of us only keep the current
> version of the kernel around for building and testing.  We already tell
> people who complain about older kernels on the list to go away and try
> upstream, so why would it be reasonable to expect us to go back to
> older kernels for stable?  I honestly think the stable review process
> doesn't add much value precisely because of this.  I do try to mark
> patches for backport either with a Fixes label, so you should
> mechanically be able to catch the fact that a patch is applied before
> what its fixing or manually with a # 4.7+ tag.  If you expect me to do
> more, it's not going to happen.

And that's very likely absolutely sufficient. If the person who added the 
base kernel annotation to the patch we're currently discussing, it'd work.

> > > Secondly, if the upstream review didn't catch the problems why 
> > > would we suddenly catch them in a stable review?
> > 
> > The patch was pretty fine for upstream, as it fixed a real bug there. 
> > But the buggy code wasn't present in -stable.
> 
> OK, so how about you only apply stable patches with a cc stable and a
> fixes tag?

Either that, or an explicit version range that would be a big improvement 
I think. Both would make someone actually think before adding a stable 
anotation, which is always a good thing :), but shouldn't be imposing 
unacceptable overhead.

Thanks,

-- 
Jiri Kosina
SUSE Labs
