Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5781DCF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Nov 2018 13:13:17 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1C3D70B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Nov 2018 13:13:16 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA2DAwqK017286 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 2 Nov 2018 09:13:16 -0400
Received: from e14.ny.us.ibm.com (e14.ny.us.ibm.com [129.33.205.204])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2ngm0n8nuh-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 Nov 2018 09:13:15 -0400
Received: from localhost
	by e14.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Fri, 2 Nov 2018 13:13:15 -0000
Date: Fri, 2 Nov 2018 06:13:11 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Josh Triplett <josh@joshtriplett.org>
Reply-To: paulmck@linux.ibm.com
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
	<20181024121622.GA10942@localhost>
	<87ftwt6850.fsf@notabene.neil.brown.name>
	<20181027011010.GA29769@localhost>
	<20181101164544.GA31540@linux.ibm.com>
	<20181101211152.GA6007@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181101211152.GA6007@localhost>
Message-Id: <20181102131311.GP4170@linux.ibm.com>
Cc: NeilBrown <neil@brown.name>, Mishi Choudhary <mishi@linux.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Call to Action Re: [PATCH 0/7] Code of
 Conduct: Fix some wording, and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Nov 01, 2018 at 02:11:53PM -0700, Josh Triplett wrote:
> On Thu, Nov 01, 2018 at 09:45:44AM -0700, Paul E. McKenney wrote:
> > On Sat, Oct 27, 2018 at 02:10:10AM +0100, Josh Triplett wrote:
> > > Not when that document started out effectively saying, in an elaborate
> > > way, "code > people".
> > 
> > Interesting.
> > 
> > I am curious what leads you to your "code > people" statement.  Of course,
> > one could argue that this does not really matter given that the code of
> > conflict is no longer.  However, I would like to understand for future
> > reference, if for no other reason.
> > 
> > One possibility is that you are restricting the "people" to only those
> > people directly contributing in one way or another.  But those using the
> > kernel (both directly and indirectly) are important as well, and it is
> > exactly this group that is served by "the most robust operating system
> > kernel ever", the chest-beating sentiment notwithstanding.  Which is in
> > fact why I must reject (or rework or whatever) any patch that might result
> > in too-short RCU grace periods:  The needs of the patch's submitter are
> > quite emphatically outweighed by the needs of the kernel's many users,
> > and many of the various technical requirements and restrictions are in
> > fact proxies for the needs of these users.
> 
> As discussed in many other places as well, nobody is suggesting at all
> that the standards for accepting code should change. Reject the patches
> you would have rejected, accept the patches you would have accepted.

There have been a great many discussions in a great many places expressing
a great many views, but it is good to hear your view on this particular
point.  It should come as no surprise that I advise you in the strongest
possible terms to continue with the view that standards for accepting code
into the Linux kernel should not decrease.

>                                                                      All
> of this affects *communication*.

Communication is inherently difficult.  As I suspect the two of us just
demonstrated.  ;-)

							Thanx, Paul
