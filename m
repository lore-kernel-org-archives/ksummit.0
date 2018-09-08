Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5FC4D75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:54:30 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6FB5D5E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:54:30 +0000 (UTC)
Message-ID: <1536422066.22308.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>
Date: Sat, 08 Sep 2018 08:54:26 -0700
In-Reply-To: <20180908153235.GB11120@kroah.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan> <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Sat, 2018-09-08 at 17:32 +0200, Greg KH wrote:
> On Sat, Sep 08, 2018 at 08:00:29AM -0700, James Bottomley wrote:
> > On Sat, 2018-09-08 at 13:34 +0200, Greg KH wrote:
> > > On Sat, Sep 08, 2018 at 08:21:41AM -0300, Mauro Carvalho Chehab
> > > wrote:
> > > > IMHO, the best would be to have a formal/legal way to handle
> > > > it.
> > > 
> > > No, sorry, some of us are not allowed legally to sign NDAs for
> > > stuff like this.
> > 
> > As a blanket statement this simply isn't true.
> 
> Um, I said "some of us".  Some of us can, some of us can not.  That's
> a blanket statement that has to be true :)

OK, let me make it more specific: there exists no individual
contributing to open source in a leadership capacity for whom a
signable NDA cannot be crafted.

The reason is fairly simple: leadership positions come with duties of
care which include duties of confidentiality (think adjudication of
anti-harassment policy or code of conflict) and an NDA could be crafted
directly along the lines of the duty of confidentiality.  Now it's not
that an employment or other agreement couldn't forbid this, but if it
did the leader in question would be in a false position already because
their agreement effectively forbids them from taking a leadership
position in open source in the first place.

James
