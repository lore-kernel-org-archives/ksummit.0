Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 38B00ADD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:21:39 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B83CE20364
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:21:38 +0000 (UTC)
Date: Fri, 9 May 2014 10:21:33 -0700
From: josh@joshtriplett.org
To: Christoph Lameter <cl@linux.com>
Message-ID: <20140509172133.GD8289@cloud>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1405091150410.11810@gentwo.org>
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 11:55:23AM -0500, Christoph Lameter wrote:
> On Fri, 9 May 2014, Steven Rostedt wrote:
> > Size may not be as important as having reuse of code. Perhaps if you
> > can tweak several functions to call one helper function, which may
> > actually increase the total size of the kernel, but having more helper
> > functions that live in cache longer may be of benefit.
> 
> More helper functions means more use of l1 cache lines which reduces
> performance.

If done poorly, but on the other hand, factoring a common code path out
of many call sites into one helper function makes it more likely that
helper function will remain cached.

- Josh Triplett
