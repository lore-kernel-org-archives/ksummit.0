Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8C27E70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 00:16:30 +0000 (UTC)
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F7A420212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 00:16:29 +0000 (UTC)
Received: from /spool/local
	by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 7 May 2014 18:16:28 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id 49D9619D8026
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:16:20 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s480GQMh65011830
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 8 May 2014 02:16:26 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s480KGxX030039 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 7 May 2014 18:20:16 -0600
Date: Wed, 7 May 2014 17:16:24 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140508001624.GA21038@linux.vnet.ibm.com>
References: <20140502165658.GA1962@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502165658.GA1962@jtriplet-mobl1>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominations for Kernel Summit
Reply-To: paulmck@linux.vnet.ibm.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 09:56:59AM -0700, Josh Triplett wrote:
> I'd like to nominate the following people:
> 
> - Tom Zanussi <tom.zanussi@linux.intel.com> - doing extensive work on
>   shrinking the kernel and embedded userspace to fit in shockingly tiny
>   spaces.
> - Julia Lawall <julia.lawall@lip6.fr> - maintainer of cocinelle, the
>   semantic patch tool, which has collectively saved an incredible amount
>   of kernel maintainer time and effort.
> - Andi Kleen <ak@linux.intel.com> - working on LTO and many other kernel
>   projects.
> 
> I'd also like to nominate myself; in addition to the kernel tinification
> topic I've already proposed, I plan to coordinate RCU topics with Paul
> McKenney.

Sounds very good!  The RCU topics that occur to me immediately include:

o	How do we tell compilers about RCU's memory-ordering requirements?
	Follow up to http://lwn.net/Articles/586838/ and
	https://lwn.net/Articles/588300/.  This could potentially
	converge before August, but the odds do not look all that
	favorable.  Might be an interesting discussion of the
	interaction between the kernel and compiler, though perhaps
	in the Chinese sense.  ;-)

o	What use cases are not supported well, and what should we be
	doing to better support them, in RCU or otherwise?  Without
	some reasonably controversial proposals, this aspect seems
	unlikely to be LKS material.

o	Can we do a better job of automatically catching RCU usage
	bugs?  Or, for that matter, RCU bugs!

Other thoughts for topics?

							Thanx, Paul
