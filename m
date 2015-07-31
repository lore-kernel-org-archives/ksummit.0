Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2E0D40A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:15:08 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B25331DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:15:07 +0000 (UTC)
Date: Fri, 31 Jul 2015 10:15:00 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Greg KH <greg@kroah.com>
Message-ID: <20150731171500.GC4995@roeck-us.net>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150731170825.GA2721@kroah.com>
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

On Fri, Jul 31, 2015 at 10:08:25AM -0700, Greg KH wrote:
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

Hi Greg,

maybe my semantics wasn't perfect - my question was why Bjorn prefers
dev_printk(KERN_DEBUG, ..) over dev_dbg(), which he answered.

I did not (want to) make the claim or even suggest that dev_printk()
would be preferred over dev_dbg() in general.

Thanks,
Guenter
