Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 786BA7FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:54:17 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB5FB20394
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:54:16 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 95B322151C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 14:54:13 -0400 (EDT)
Date: Wed, 28 May 2014 11:57:48 -0700
From: Greg KH <greg@kroah.com>
To: Mel Gorman <mgorman@suse.de>
Message-ID: <20140528185748.GA30673@kroah.com>
References: <537F3551.2070104@hitachi.com>
 <20140528153702.GU23991@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140528153702.GU23991@suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 04:37:02PM +0100, Mel Gorman wrote:
> make test will be fine for feature verification and some functional
> verification that does not depend on hardware. So new APIs should have test
> cases that demonstrate the feature works and make test would be great for
> that which is something that is not enforced today. As LTP is reported to
> be sane these days for some tests, it could conceivably be wrapped by "make
> test" to avoid duplicating effort there. I think that would be worthwhile
> if someone had the time to push it because it would be an unconditional win.

That is what I have been asking for for _years_.  Hopefully someday
someone does this...

> However, beware of attempting to put all testing under its banner as
> performance testing is never going to fully fit under its umbrella.

No one is saying this is going to be true, but at the least, we want a
way to document _how_ one can run the performance tests if you want to.

thanks,

greg k-h
