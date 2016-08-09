Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33D443EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 00:10:13 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9245822C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 00:10:12 +0000 (UTC)
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u7909hkY017223 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 8 Aug 2016 20:10:11 -0400
Received: from e17.ny.us.ibm.com (e17.ny.us.ibm.com [129.33.205.207])
	by mx0b-001b2d01.pphosted.com with ESMTP id 24n8tyjp5y-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 08 Aug 2016 20:10:11 -0400
Received: from localhost
	by e17.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Mon, 8 Aug 2016 20:10:11 -0400
Received: from b01cxnp23034.gho.pok.ibm.com (b01cxnp23034.gho.pok.ibm.com
	[9.57.198.29])
	by d01dlp03.pok.ibm.com (Postfix) with ESMTP id 31AD0C9003E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Aug 2016 20:09:57 -0400 (EDT)
Received: from d01av01.pok.ibm.com (d01av01.pok.ibm.com [9.56.224.215])
	by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u790ABXA19005936 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 9 Aug 2016 00:10:11 GMT
Received: from d01av01.pok.ibm.com (localhost [127.0.0.1])
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u790A7k0019637 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 8 Aug 2016 20:10:07 -0400
Date: Mon, 8 Aug 2016 17:10:10 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Josh Triplett <josh@joshtriplett.org>
Reply-To: paulmck@linux.vnet.ibm.com
References: <20160729075039.GA26402@x>
	<1469804144.2330.6.camel@HansenPartnership.com>
	<20160729150522.GC12137@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160729150522.GC12137@x>
Message-Id: <20160809001010.GA23815@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 08:05:22AM -0700, Josh Triplett wrote:
> On Fri, Jul 29, 2016 at 07:55:44AM -0700, James Bottomley wrote:
> > On Fri, 2016-07-29 at 00:50 -0700, Josh Triplett wrote:
> > > I'd welcome any feedback, whether on the interface and workflow, the
> > > internals and collaboration, ideas on presenting diffs of patch 
> > > series, or anything else.
> > 
> > I've got an offer for you:  The Plumbers PC has been kicking around the
> > idea of a git MC at Plumbers.  We got as far ask asking Junio Hamano,
> > who said he'd commit to coming, but didn't want to run the MC.  Would
> > you be interested in running it?  Since it's a barely formed idea at
> > the moment, it would still have to go through the usual Plumbers
> > process of proposing it on
> > 
> > http://wiki.linuxplumbersconf.org/2016:topics
> > 
> > And then getting formal plumbers PC acceptance (Paul McKenney shepherds
> > this).  You can put me down as a committed attendee because, like a lot
> > of people, I have quite a bit of scripting around my git infrastructure
> > which, I suspect, could be shared.
> 
> I'd mentioned the idea of a git MC to Paul, and I'd be happy to give a
> git-series presentation/BoF at one, but I don't have the bandwidth to
> run one.

Which is exactly how the MC proposal came to be.  ;-)

Kate Stewart took over the shepherding and has found a runner, so here is
hoping that this will actually happen!

							Thanx, Paul
