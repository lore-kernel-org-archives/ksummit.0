Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8FE5C899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:04:57 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3F4F0186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:04:57 +0000 (UTC)
Message-ID: <1470233095.2482.46.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Wed, 03 Aug 2016 10:04:55 -0400
In-Reply-To: <alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Wed, 2016-08-03 at 15:59 +0200, Jiri Kosina wrote:
> On Wed, 3 Aug 2016, James Bottomley wrote:
> 
> > This isn't a viable approach.  Firstly stable review is less 
> > thorough than upstream review because the review mostly goes "yes, 
> > I already reviewed this in upstream".  
> 
> Which is exactly the problem I am trying to bring more attention to.

OK, so let me put the opposite point.  Most of us only keep the current
version of the kernel around for building and testing.  We already tell
people who complain about older kernels on the list to go away and try
upstream, so why would it be reasonable to expect us to go back to
older kernels for stable?  I honestly think the stable review process
doesn't add much value precisely because of this.  I do try to mark
patches for backport either with a Fixes label, so you should
mechanically be able to catch the fact that a patch is applied before
what its fixing or manually with a # 4.7+ tag.  If you expect me to do
more, it's not going to happen.

> > Secondly, if the upstream review didn't catch the problems why 
> > would we suddenly catch them in a stable review?
> 
> The patch was pretty fine for upstream, as it fixed a real bug there. 
> But the buggy code wasn't present in -stable.

OK, so how about you only apply stable patches with a cc stable and a
fixes tag?

James
