Return-Path: <mgorman@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE2B289C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 06:55:01 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 927012023F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 06:55:00 +0000 (UTC)
Date: Thu, 5 Jun 2014 07:54:55 +0100
From: Mel Gorman <mgorman@suse.de>
To: Greg KH <greg@kroah.com>, chrubis@suse.cz
Message-ID: <20140605065455.GM10819@suse.de>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <20140605002331.GB24037@kroah.com>
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

On Wed, Jun 04, 2014 at 05:23:31PM -0700, Greg KH wrote:
> On Fri, May 30, 2014 at 02:07:36PM +0200, Linus Walleij wrote:
> > On Wed, May 28, 2014 at 8:57 PM, Greg KH <greg@kroah.com> wrote:
> > > On Wed, May 28, 2014 at 04:37:02PM +0100, Mel Gorman wrote:
> > >> As LTP is reported to
> > >> be sane these days for some tests, it could conceivably be wrapped by "make
> > >> test" to avoid duplicating effort there. I think that would be worthwhile
> > >> if someone had the time to push it because it would be an unconditional win.
> > >
> > > That is what I have been asking for for _years_.  Hopefully someday
> > > someone does this...
> > 
> > Does this read "let's pull LTP into the kernel source tree"?
> 
> Everyone always asks this, and I say, "Sure, why not?"
> 
> Actually, if people do complain about "why", then let's take the
> "useful" subset of LTP for kernel developers.  It's a great place to
> start, don't you agree?
> 

Cyril Hrubis is an LTP expert who has spend a considerable amount of time
cleaning it up but is not often seen in kernel development circles so I added
him to the cc. He's stated before that there is a large subset of LTP that
is considerably cleaner than it was a few years ago. Cyril, you are probably
not subscribed but the list archives for the "kernel testing standard" thread
can be seen at http://lists.linuxfoundation.org/pipermail/ksummit-discuss/
if you dig around a bit.

There is a hazard that someone bisecting the tree would need to be careful
to not bisect LTP instead. Otherwise, in your opinion how feasible
would it be to import the parts of LTP you trust into the kernel tree
under tools/testing/ ?

-- 
Mel Gorman
SUSE Labs
