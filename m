Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8C6D40A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 20:30:10 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D58E7118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 20:30:09 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id F1FD820B21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:30:08 -0400 (EDT)
Date: Mon, 20 Jul 2015 13:30:07 -0700
From: Greg KH <greg@kroah.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150720203007.GA7797@kroah.com>
References: <20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<alpine.DEB.2.10.1507201022370.2408@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1507201022370.2408@hadrien>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

On Mon, Jul 20, 2015 at 10:27:39AM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 20 Jul 2015, James Bottomley wrote:
> 
> > On Mon, 2015-07-20 at 00:19 +0200, Jiri Kosina wrote:
> > > On Fri, 17 Jul 2015, Steven Rostedt wrote:
> > >
> > > [ ... snip ... ]
> > > > But that was an exception because the code submitted was really worth
> > > > while
> > >
> > > This really made me wonder. Maybe we should really focus on why such
> > > ocasions need to be pointed out as exceptions.
> > >
> > > Is it that Linux kernel development got hyped so much that everyone wants
> > > to have that bullet in his CV, no matter how stupid the submitted patch
> > > would be?
> > >
> > > If so, what should we do to change it?
> > >
> > > I.e. I might propose a a slightly controversial topic, going a bit the
> > > other direction than the whole "motivating newcomers" discussion: how to
> > > get rid of useless submissions that are slowing maintainers down?
> >
> > I second.  I think we concentrate too much on contribution and not
> > enough on useful contribution.
> >
> > > Should we stop publishing all the statistics? I believe there is no
> > > question that those are one of the primary drivers of useless submissions.
> > > Once maintainers get DoSed by submissions of wrong and/or useless patches
> > > that eat non-negligible amount of their time, we're in trouble.
> >
> > I'm not sure it's just the stats.  We also have to be careful about
> > negative perceptions, so I don't think we want to go around highlighting
> > bad patches.  There are a couple of patch sets that are draining review
> > talent from my point of view: the mechanical one file at a time fixing
> > X.  I think we need someone to be the gatekeeper and review and apply
> > the script in one go.  And perhaps we should call the other "small
> > patches which don't fix bugs" ... I'm less sure what to do about these.
> 
> If there really is a problem that some maintainer is getting inundated
> with patches addressing unimportant cosmetic issues, could it be a good
> idea to:
> 
> * Fix the code and get it over with,
> * Drop the code from the kernel, if no one uses it, or
> * Put a comment in the file saying that the file is no longer being
> actively developed and only bug fixes will be accepted.

I agree with this.  If your subsystem is constantly getting hit with
coding style cleanups that you don't want (i.e. SCSI), put something in
the top of the file that says "don't clean up the style".

Of course it will be ignored (like pci_ids.h), but then you can write a
simple script that just rejects such patches with a "Sorry, but please
read the top of the file" rejection notice.

There, annoying patches taken care of.

greg k-h
