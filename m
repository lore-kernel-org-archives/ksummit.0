Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6375B847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 00:19:59 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E141F2023F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 00:19:58 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.mail.srv.osa [10.202.2.46])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 2FBFE21DBB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 20:19:51 -0400 (EDT)
Date: Wed, 4 Jun 2014 17:23:31 -0700
From: Greg KH <greg@kroah.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20140605002331.GB24037@kroah.com>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 02:07:36PM +0200, Linus Walleij wrote:
> On Wed, May 28, 2014 at 8:57 PM, Greg KH <greg@kroah.com> wrote:
> > On Wed, May 28, 2014 at 04:37:02PM +0100, Mel Gorman wrote:
> >> As LTP is reported to
> >> be sane these days for some tests, it could conceivably be wrapped by "make
> >> test" to avoid duplicating effort there. I think that would be worthwhile
> >> if someone had the time to push it because it would be an unconditional win.
> >
> > That is what I have been asking for for _years_.  Hopefully someday
> > someone does this...
> 
> Does this read "let's pull LTP into the kernel source tree"?

Everyone always asks this, and I say, "Sure, why not?"

Actually, if people do complain about "why", then let's take the
"useful" subset of LTP for kernel developers.  It's a great place to
start, don't you agree?

thanks,

greg k-h
