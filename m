Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 28CBB2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Jul 2016 17:14:20 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B01CA115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Jul 2016 17:14:19 +0000 (UTC)
Date: Mon, 25 Jul 2016 19:14:16 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Message-ID: <20160725171416.GQ5537@wotan.suse.de>
References: <15500.1469183675@warthog.procyon.org.uk>
	<20160722164411.GJ7094@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160722164411.GJ7094@linux.vnet.ibm.com>
Cc: jakub@redhat.com, parri.andrea@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	stern@rowland.harvard.edu, ramana.radhakrishnan@arm.com,
	luc.maranget@inria.fr, j.alglave@ucl.ac.uk
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory model,
 using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 22, 2016 at 09:44:11AM -0700, Paul E. McKenney wrote:
> On Fri, Jul 22, 2016 at 11:34:35AM +0100, David Howells wrote:
> > Earlier this year we had a discussion of the possibilities of using ISO C++11
> > atomic operations inside the kernel to implement kernel atomic ops of sorts
> > various, posted here:
> > 
> > 	Subject: [RFC PATCH 00/15] Provide atomics and bitops implemented with ISO C++11 atomics
> > 	Date: Wed, 18 May 2016 16:10:37 +0100
> > 
> > Is it worth getting together to discuss these in person in one of the tech
> > slots - especially if there are some gcc or llvm people available at plumbers
> > who could join in?
> > 
> > 
> > Further, Paul McKenney and others are assembling a memory model description.
> 
> We are attempting to automate memory-barriers.txt, so that you could
> provide fragments of C code, and the tool would tell you whether a given
> outcome happens always, sometimes, or never.  The current prototype
> handles memory accesses, memory barriers, and RCU, but not yet locking
> or read-modify-write atomics (though there is some vestigal support for
> RMW atomics).  We are currently playing whack-a-mole with odd corner cases
> of various architectures' memory models.  We are therefore also working
> on ways of handling the resulting uncertainty.  Good clean fun!  ;-)

Consider me interested in this discussion, patches, etc.

  Luis
