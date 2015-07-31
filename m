Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD6D698
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:43:46 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 24336207
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:43:46 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 7C4FD208B6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 13:43:45 -0400 (EDT)
Date: Fri, 31 Jul 2015 10:43:43 -0700
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150731174343.GA9609@kroah.com>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
	<1438363601.2179.49.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1438363601.2179.49.camel@HansenPartnership.com>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 10:26:41AM -0700, James Bottomley wrote:
> On Fri, 2015-07-31 at 10:08 -0700, Greg KH wrote:
> > On Fri, Jul 31, 2015 at 09:59:15AM -0700, Guenter Roeck wrote:
> > > Hi Bjorn,
> > > 
> > > On Fri, Jul 31, 2015 at 11:27:38AM -0500, Bjorn Helgaas wrote:
> > > > On Thu, Jul 30, 2015 at 9:55 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
> > > > > Mainly I'd like to talk about improving testing around the kernel, both by catching bugs
> > > > > and by improving the quality of debug output that comes out of the kernel.
> > > > 
> > > > What sort of debug output improvements are you interested in?  I spend
> > > > a fair amount of time converting to dev_printk and %pR.  They make the
> > > 
> > > I have been wondering about that, especially since dev_dbg() and
> > > 'dev_printk(KERN_DEBUG, ...)' are semantically different. Any reason
> > > for preferring dev_printk() over dev_dbg() ?
> > 
> > The opposite is true, please always use dev_dbg() as it properly ties
> > into the overall kernel-wide dynamic debug infrastructure, providing a
> > unified way to enable/disable debug messages, or even, compiling them
> > out if none are wanted due to size constraints.
> 
> Other than to confuse us all over minute details, is there a reason for
> this difference to exist?

dev_dbg() uses dev_printk(KERN_DEBUG) to build on, we can't delete
dev_printk() from the tree, so we are stuck with both.  If you can
figure out a way to prevent this, that would be great.

thanks,

greg k-h
