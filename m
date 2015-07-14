Return-Path: <jpoimboe@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFCF083D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:52:52 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7674F10A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:52:52 +0000 (UTC)
Date: Tue, 14 Jul 2015 10:52:49 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20150714155249.GC4562@treble.redhat.com>
References: <20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
	<20150712122823.GA4366@treble.redhat.com>
	<20150713140113.GB4341@mwanda>
	<20150713143331.GA21079@quack.suse.cz>
	<20150713162439.GI4289@mwanda> <20150714043803.GA3290@sudip-PC>
	<20150714151618.GA27755@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20150714151618.GA27755@kroah.com>
Cc: jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Tue, Jul 14, 2015 at 08:16:18AM -0700, Greg KH wrote:
> On Tue, Jul 14, 2015 at 10:08:03AM +0530, Sudip Mukherjee wrote:
> > On Mon, Jul 13, 2015 at 07:28:25PM +0300, Dan Carpenter wrote:
> > > On Mon, Jul 13, 2015 at 04:33:31PM +0200, Jan Kara wrote:
> > > > On Mon 13-07-15 17:20:47, Dan Carpenter wrote:
> > > > > On Sun, Jul 12, 2015 at 07:28:23AM -0500, Josh Poimboeuf wrote:
> > > 
> > > This happened hours ago in staging.  Someone sent a buggy patch and
> > > reviewers spotted the bug but no one got credit.
> > > 
> > > http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2015-July/072662.html
> > > http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2015-July/072668.html
> > > 
> > > Imagine how special Patrick would feel if we gave him a nice
> > > "With-fix-from: Patrick Farrell <paf@cray.com>" tag.  :)  Also the other
> > > rule would be that only the first person to report the bug gets the
> > > credit (Sorry, Sudip).
> > Doesn't matter. I am a volunteer and contributing here is not part of
> > my dayjob. I do it because I like doing it.
> > >The next version of the patch had a process
> > > problem which Sudip noticed as well but that still doesn't earn a
> > > with-fix-from tag.
> > Then will the first reviewer always get the credit? Suppose a hypothetial
> > situation where v1 is just having a bug like the one you mentioned,
> > reviewer X points that out so he gets "With-fix-from:", but v2 has a more
> > serious problem and results in build failure and reviewer Y points that out
> > and v3 is the final patch that is accepted. So now who will get
> > "With-fix-from:" ?
> 
> Or even more important, how in the world will the maintainer be adding
> these tags in a simple manner?  It's a manual thing for me to do today,
> which is a pain, and given that I have no "state" of previous patches
> remembering what happened in previous versions, I don't know how I would
> be expected to keep track of all of this.
> 
> So whatever scheme people come up with, please remember that it has to
> be easy to actually implement...

I think it would need to be up to the patch author, not the maintainer,
to add the tag.  The patch author already tracks the patch state from
version to version.  And the author is in the best position to know
which comments are helpful.

Also I'd suggest something a little broader than "With-fix-from".  Not
all useful comments are "fixes".  For example, an insightful question or
comment can sometimes result in big changes in the next version of the
patch.

-- 
Josh
