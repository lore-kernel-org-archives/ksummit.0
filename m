Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10981415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:26:43 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A0A461CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:26:42 +0000 (UTC)
Message-ID: <1438363601.2179.49.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>
Date: Fri, 31 Jul 2015 10:26:41 -0700
In-Reply-To: <20150731170825.GA2721@kroah.com>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net> <20150731170825.GA2721@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2015-07-31 at 10:08 -0700, Greg KH wrote:
> On Fri, Jul 31, 2015 at 09:59:15AM -0700, Guenter Roeck wrote:
> > Hi Bjorn,
> > 
> > On Fri, Jul 31, 2015 at 11:27:38AM -0500, Bjorn Helgaas wrote:
> > > On Thu, Jul 30, 2015 at 9:55 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
> > > > Mainly I'd like to talk about improving testing around the kernel, both by catching bugs
> > > > and by improving the quality of debug output that comes out of the kernel.
> > > 
> > > What sort of debug output improvements are you interested in?  I spend
> > > a fair amount of time converting to dev_printk and %pR.  They make the
> > 
> > I have been wondering about that, especially since dev_dbg() and
> > 'dev_printk(KERN_DEBUG, ...)' are semantically different. Any reason
> > for preferring dev_printk() over dev_dbg() ?
> 
> The opposite is true, please always use dev_dbg() as it properly ties
> into the overall kernel-wide dynamic debug infrastructure, providing a
> unified way to enable/disable debug messages, or even, compiling them
> out if none are wanted due to size constraints.

Other than to confuse us all over minute details, is there a reason for
this difference to exist?  I realise right at the moment dev_dbg can be
configured off by a variety of symbols and dev_printk(KERN_DEBUG) can't,
conversely dev_printk doesn't pick up the location information and
dev_dbg does, but there's no reason all that couldn't be harmonised so
we didn't have to have arguments about which to use (and endless patches
switching from one to the other)?

James
