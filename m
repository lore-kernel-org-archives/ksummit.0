Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5F8774C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:51:42 +0000 (UTC)
Received: from e36.co.us.ibm.com (e36.co.us.ibm.com [32.97.110.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90CB41FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:51:41 +0000 (UTC)
Received: from /spool/local
	by e36.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Fri, 2 May 2014 14:51:40 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id 7827319D8040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 14:51:33 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s42KpcNR3015126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 2 May 2014 22:51:38 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s42KtR8t027393 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 2 May 2014 14:55:27 -0600
Date: Fri, 2 May 2014 13:51:38 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140502205138.GA19798@linux.vnet.ibm.com>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
Reply-To: paulmck@linux.vnet.ibm.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 09:42:04PM +0200, Jiri Kosina wrote:
> I am a responsible maintainer of kernels for SUSE enterprise products. As 
> such, I am dealing with -stable trees on a regular basis. Hence, if there 
> is any discussion related to -stable tree process going to happen, I am 
> highly interested in that discussion.
> 
> I'd like to re-iterate my usual question / discussion topic of 
> responsibility distribution for -stable patches; my proposal again would 
> be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
> subsystem maintainers preparing 'for-stable' branches and sending pull 
> requests to the stable team, instead of rather random cherry-picking of 
> the patches from the air as they fly by the stable team members.
> 
> Suggested participants: stable team, major distro kernel maintainers

Just for historical interest, there was extensive discussion of this
topic last year:

https://www.kernel.org/pub/linux/kernel/people/paulmck/LKS/LKS2013Topic/000014a.html

The resulting discussion at LKS is recorded here:

http://lwn.net/Articles/571980/

							Thanx, Paul
