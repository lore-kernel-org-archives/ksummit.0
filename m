Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CF77998F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 17:37:49 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F39421FFEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 17:37:47 +0000 (UTC)
Date: Thu, 29 May 2014 10:41:22 -0700
From: Greg KH <greg@kroah.com>
To: Li Zefan <lizefan@huawei.com>
Message-ID: <20140529174122.GC7889@kroah.com>
References: <CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
	<1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528173553.GE5099@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F328205B1@ORSMSX114.amr.corp.intel.com>
	<20140528183825.GA21477@sirena.org.uk>
	<alpine.DEB.2.10.1405282325020.3952@nanos>
	<5386FDAB.3010106@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5386FDAB.3010106@huawei.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 29, 2014 at 05:28:11PM +0800, Li Zefan wrote:
> On 2014/5/29 5:32, Thomas Gleixner wrote:
> > On Wed, 28 May 2014, Mark Brown wrote:
> > 
> >> On Wed, May 28, 2014 at 05:44:41PM +0000, Luck, Tony wrote:
> >>
> >>>> There's a world of difference between thanking people for review and a
> >>>> detailed account of all the changes made in every single iteration of
> >>>> the review.
> >>
> >>> This is already covered in Documentation/SubmittingPatches. Quoting
> >>> lines 585-592 (see last sentence):
> >>
> >> Right, but Daniel is proposing lifting that above the --- and including
> >> it in git.
> > 
> > What you really want is:
> > 
> > Link: https://lkml.kernel.org/r/MESSAGE_ID_OF_PATCH
> > 
> > It's way more useful than any of the v1-n writeups, which are most of
> > the time just a completely waste of electrons. Even if written well,
> > without the actual review context they are pretty pointless.
> > 
> 
> A QA asked me about kernel development process. One of his question is,
> he found some valuable information in the discussion of the patch often
> won't be added to the changelog, so providing the commit how to find
> the discussion?

A research group has created a tool that takes a given git commit, finds
the mailing list discussion for that patch.  It was posted to lkml 6 or
so months ago, you should point them at that tool if they want to do
this.

greg k-h
