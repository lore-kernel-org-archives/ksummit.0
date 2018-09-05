Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DA7611533
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:20:12 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E3BB7F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:20:12 +0000 (UTC)
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w85GFdv8015440 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 5 Sep 2018 12:20:12 -0400
Received: from e12.ny.us.ibm.com (e12.ny.us.ibm.com [129.33.205.202])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2maghmevaj-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 12:20:11 -0400
Received: from localhost
	by e12.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 5 Sep 2018 12:20:10 -0400
Date: Wed, 5 Sep 2018 09:20:07 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Reply-To: paulmck@linux.vnet.ibm.com
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180905115008.22e3d21f@gandalf.local.home>
Message-Id: <20180905162007.GO4225@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 11:50:08AM -0400, Steven Rostedt wrote:
> On Wed, 5 Sep 2018 08:03:15 -0700
> "Paul E. McKenney" <paulmck@linux.vnet.ibm.com> wrote:
> 
> > I am one of those strange people who rebase in order to improve
> > bisectability.  But one reason I can do that is that I have relatively
> > few patches, and it gets harder the more patches I am carrying.  I suppose
> > that someone (not me!) could rebase -stable to make it more bisectable,
> 
> How would rebasing it make stable more bisectable? Once you rebase, you
> don't have a tree that use to work? Although I guess you may find the
> commit that caused the problem better. But rebasing creates a lot of
> other issues, I would not recommend rebasing stable, as that would
> totally break the RT stable tree work flow.

Instead of leaving the buggy commit and the span where the bug exists,
you rebase the fix into the original buggy fix.

And I bet that rebasing -stable would cause no end of broken glass in
a great many projects.  ;-)

							Thanx, Paul
