Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8AF149B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 17:08:16 +0000 (UTC)
Received: from e32.co.us.ibm.com (e32.co.us.ibm.com [32.97.110.150])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 055EE20119
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 17:08:15 +0000 (UTC)
Received: from /spool/local
	by e32.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 28 May 2014 11:08:14 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 229061FF003F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 11:08:12 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4SH8Cpf3998090
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:08:12 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s4SHCAVc017230 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 11:12:10 -0600
Date: Wed, 28 May 2014 10:08:11 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140528170811.GA1130@linux.vnet.ibm.com>
References: <5370DB7B.2040706@fb.com>
 <20140512235430.GA16440@thin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140512235430.GA16440@thin>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
Reply-To: paulmck@linux.vnet.ibm.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 04:54:35PM -0700, Josh Triplett wrote:
> On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
> > Hi everyone,
> > 
> > We're in the middle of upgrading the tiers here from older kernels (2.6.38,
> > 3.2) into 3.10 and higher.
> > 
> > I've been doing this upgrade game for a number of years now, with different
> > business cards taped to my forehead and with different target workloads.
> > 
> > The result is always the same...if I'm really lucky the system isn't slower,
> > but usually I'm left with a steaming pile of 10-30% regressions.
> 
> How automated are your benchmark workloads, how long do they take, and
> how consistent are they from run to run (on a system running nothing
> else)?  What about getting them into Fengguang Wu's automated patch
> checker, or a similar system that checks every patch or pull rather than
> just full releases?  If we had feedback at the time of patch submission
> that a specific patch made the kernel x% slower for a specific
> well-defined workload, that would prove much easier to act on than just
> a comparison of 3.x and 3.y.

Good point on Fengguang's checker!  I do sometimes get emails from him
noting changes in performance, conveniently bisected down to the commit.

							Thanx, Paul
