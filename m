Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AD329B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 23:14:04 +0000 (UTC)
Received: from e34.co.us.ibm.com (e34.co.us.ibm.com [32.97.110.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8856EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 23:14:03 +0000 (UTC)
Received: from /spool/local
	by e34.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Sun, 26 Jul 2015 17:14:03 -0600
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 28D0C1FF0042
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 17:05:09 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t6QNDx2I35651712
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 16:13:59 -0700
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t6QNDwWv020178 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 17:13:59 -0600
Date: Sun, 26 Jul 2015 16:13:56 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150726231356.GA19480@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
	<20150709214718.GG9417@thunk.org> <20150709231352.GB4516@cloud>
	<20150710164938.72da8ef1@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710164938.72da8ef1@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 04:49:38PM -0400, Steven Rostedt wrote:
> On Thu, 9 Jul 2015 16:13:52 -0700
> josh@joshtriplett.org wrote:
> 
> 
> > That assumes the patch actually has issues.  To use the reviews I do on
> > RCU patches as an example, in a patch series, I might reply to a few
> > patches with "here are some issues; with those fixed, Reviewed-by...",
> > and then reply to the remaining unproblematic patches (individually or
> > in aggregate) with just the Reviewed-by.
> 
> Josh, I read your reviews. Yes, you have a bunch of single "Reviewed-by"
> tags, but you also have a lot of emails with substantially significant
> comments. What Ted is saying, is to see how many significant replies one
> has. In fact, I would say if we were to automate this, each significant
> reply (one with actual comments), would increase the weight that a
> single "Reviewed-by" email would carry. That way people like yourself
> would have more weight attached to emails with single "Reviewed-by"
> than others that don't have many emails with actual comments attached.

Just to state the obvious, I greatly value Josh's reviews as well,
especially the ones where he points out a bug.  Much easier than
finding them the hard way!  ;-)

							Thanx, Paul
