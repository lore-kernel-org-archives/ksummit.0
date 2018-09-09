Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45AC2CA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 12:51:35 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 294552C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 12:51:34 +0000 (UTC)
Date: Sun, 9 Sep 2018 14:51:30 +0200
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180909125130.GA16474@kroah.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan>
	<20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1536422066.22308.3.camel@HansenPartnership.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Sep 08, 2018 at 08:54:26AM -0700, James Bottomley wrote:
> On Sat, 2018-09-08 at 17:32 +0200, Greg KH wrote:
> > On Sat, Sep 08, 2018 at 08:00:29AM -0700, James Bottomley wrote:
> > > On Sat, 2018-09-08 at 13:34 +0200, Greg KH wrote:
> > > > On Sat, Sep 08, 2018 at 08:21:41AM -0300, Mauro Carvalho Chehab
> > > > wrote:
> > > > > IMHO, the best would be to have a formal/legal way to handle
> > > > > it.
> > > > 
> > > > No, sorry, some of us are not allowed legally to sign NDAs for
> > > > stuff like this.
> > > 
> > > As a blanket statement this simply isn't true.
> > 
> > Um, I said "some of us".  Some of us can, some of us can not.  That's
> > a blanket statement that has to be true :)
> 
> OK, let me make it more specific: there exists no individual
> contributing to open source in a leadership capacity for whom a
> signable NDA cannot be crafted.

"can be crafted eventually" :)

There are language issues, corporate issues, and lots and lots of other
issues involved here, you know this.  Look at Mauro's situation for one
example.

Anyway, if the main goal here is to somehow have the LF provide some
sort of situation where we can invoke the old "3-way" NDA process to
handle security issues, then fine, let's propose that and see if the LF
wishes to do this.

But remember, this is only needed for the "crazy" issues, like Meltdown.
What we put together add-hoc for L1TF worked well, and what we do every
week in handling security issues sent to security@k.org works very well
also.  So well that no one really realizes what we do there :)

So again, if this is something that people strongly feel the LF should
handle, let the TAB know and they will be glad to work on it.

thanks,

greg k-h
