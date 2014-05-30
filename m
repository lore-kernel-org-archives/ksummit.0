Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4AC61B27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 17:29:04 +0000 (UTC)
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A16720356
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 17:29:03 +0000 (UTC)
Received: from /spool/local
	by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Fri, 30 May 2014 11:29:02 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id 204D219D803E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 11:28:53 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08025.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4UHT0Ix8454410
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 19:29:00 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s4UHWw4t000456 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 11:32:59 -0600
Date: Fri, 30 May 2014 10:28:58 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20140530172858.GA16343@linux.vnet.ibm.com>
References: <20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
	<1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528173553.GE5099@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F328205B1@ORSMSX114.amr.corp.intel.com>
	<20140528183825.GA21477@sirena.org.uk>
	<alpine.DEB.2.10.1405282325020.3952@nanos>
	<5386FDAB.3010106@huawei.com> <20140529174122.GC7889@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140529174122.GC7889@kroah.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
Reply-To: paulmck@linux.vnet.ibm.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 29, 2014 at 10:41:22AM -0700, Greg KH wrote:
> On Thu, May 29, 2014 at 05:28:11PM +0800, Li Zefan wrote:
> > On 2014/5/29 5:32, Thomas Gleixner wrote:
> > > On Wed, 28 May 2014, Mark Brown wrote:
> > > 
> > >> On Wed, May 28, 2014 at 05:44:41PM +0000, Luck, Tony wrote:
> > >>
> > >>>> There's a world of difference between thanking people for review and a
> > >>>> detailed account of all the changes made in every single iteration of
> > >>>> the review.
> > >>
> > >>> This is already covered in Documentation/SubmittingPatches. Quoting
> > >>> lines 585-592 (see last sentence):
> > >>
> > >> Right, but Daniel is proposing lifting that above the --- and including
> > >> it in git.
> > > 
> > > What you really want is:
> > > 
> > > Link: https://lkml.kernel.org/r/MESSAGE_ID_OF_PATCH
> > > 
> > > It's way more useful than any of the v1-n writeups, which are most of
> > > the time just a completely waste of electrons. Even if written well,
> > > without the actual review context they are pretty pointless.
> > > 
> > 
> > A QA asked me about kernel development process. One of his question is,
> > he found some valuable information in the discussion of the patch often
> > won't be added to the changelog, so providing the commit how to find
> > the discussion?
> 
> A research group has created a tool that takes a given git commit, finds
> the mailing list discussion for that patch.  It was posted to lkml 6 or
> so months ago, you should point them at that tool if they want to do
> this.

This one?  https://lkml.org/lkml/2014/3/11/2

							Thanx, Paul
