Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0C2609B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:23:07 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EDEC420417
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:23:04 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 2242E21A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:23:04 -0400 (EDT)
Date: Tue, 13 May 2014 01:23:02 +0200
From: Greg KH <greg@kroah.com>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140512232302.GB17027@kroah.com>
References: <20140511053037.GQ12708@titan.lakedaemon.net>
	<536FBA0E.5090301@gmail.com> <20140511190752.GC2527@linux.com>
	<20140511192630.GA14115@kroah.com>
	<20140512163838.GA12708@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140512163838.GA12708@titan.lakedaemon.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] hobbyist recruiting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 12:38:38PM -0400, Jason Cooper wrote:
> On Sun, May 11, 2014 at 09:26:30PM +0200, Greg KH wrote:
> > On Sun, May 11, 2014 at 09:16:02PM +0200, Levente Kurusa wrote:
> > > Of course, the Eudyptula challenge did bring some new developers,
> > > but as far as I see most of them posted only one patch/patchset.
> > 
> > How do you know who is doing this challenge and who isn't?  I see a lot
> > of new people coming in with multiple sets of patches for cleanups and
> > good fixes over the past month or so.
> 
> Is it mostly in the staging tree?  That's where I really got my feet wet
> when I started.  Assisting with code cleanup isn't glamorous, but it's a
> good place to learn the ropes.  And the staging tree is, imho, a more
> receptive place for cleanup patches.  Since the code isn't kernel
> qwality to begin with.

Most of the cleanup is in the staging tree that I see, given that I'm
the maintainer of it, and we need lots of cleanup there :)

> > If you track the number of unique people I take patches from, it's
> > going up, as is our number of unique contributors to the kernel overall.
> > It's been constantly increasing for the past 8 years, ever since I
> > started tracking the kernel development statistics.
> 
> Cool, I didn't know you were actively tracking that.  Is the data
> publicly hosted?  Is that based on merged patches, or posted emails?

It's based on merged patches, and can all be found at:
	https://github.com/gregkh/kernel-history
along with the scripts that generate the numbers.

> My primary goal is to draw attention to the issue of aggressive mail
> filtering, new devs can pop up anywhere, and acknowledging them.  By
> acknowledge, I mean answering the email, and treating them like everyone
> else.  But we have to spot the emails first.

Why would someone "new" be treated any differently?  Everyone should be
treated with the same response and respect.

greg k-h
