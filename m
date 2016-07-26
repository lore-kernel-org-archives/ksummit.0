Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0AC09950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:35:57 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8AFEB150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:35:56 +0000 (UTC)
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6QDXqd3002064 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 09:35:56 -0400
Received: from e17.ny.us.ibm.com (e17.ny.us.ibm.com [129.33.205.207])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24dsrnff9a-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 09:35:55 -0400
Received: from localhost
	by e17.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Tue, 26 Jul 2016 09:35:54 -0400
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com
	[9.57.198.27])
	by d01dlp02.pok.ibm.com (Postfix) with ESMTP id 261426E8040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 09:35:32 -0400 (EDT)
Received: from d01av01.pok.ibm.com (d01av01.pok.ibm.com [9.56.224.215])
	by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6QDZuJb54067384 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:35:56 GMT
Received: from d01av01.pok.ibm.com (localhost [127.0.0.1])
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6QDZoIu025153 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 09:35:51 -0400
Date: Tue, 26 Jul 2016 06:35:51 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Alan Stern <stern@rowland.harvard.edu>
Reply-To: paulmck@linux.vnet.ibm.com
References: <f423b811-88a4-b8ca-6793-1a543e8dc88d@suse.com>
	<Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
Message-Id: <20160726133551.GU7094@linux.vnet.ibm.com>
Cc: jakub@redhat.com, parri.andrea@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	ramana.radhakrishnan@arm.com, luc.maranget@inria.fr, j.alglave@ucl.ac.uk
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

On Tue, Jul 26, 2016 at 09:10:32AM -0400, Alan Stern wrote:
> On Tue, 26 Jul 2016, Hannes Reinecke wrote:
> 
> > I have been playing around with RCUs and memory barriers quite a lot 
> > recently, and found some really 'odd' use-cases in the kernel which 
> > would benefit from improvements here.
> 
> Could you post one or two examples?  It would be interesting to see 
> what they involve.

I would be intersted as well!

							Thanx, Paul
