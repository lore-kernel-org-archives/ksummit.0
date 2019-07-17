Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9549BCB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:23:52 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03ED663D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:23:51 +0000 (UTC)
Date: Wed, 17 Jul 2019 12:23:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20190717092313.GA3111@kadam>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5h5zomp4vh.wl-tiwai@suse.de>
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 01, 2019 at 09:53:54AM +0200, Takashi Iwai wrote:
> On Mon, 01 Jul 2019 09:49:56 +0200,
> Thomas Gleixner wrote:
> > 
> > On Mon, 1 Jul 2019, Peter Zijlstra wrote:
> > 
> > > On Sun, Jun 30, 2019 at 12:31:20PM -0400, Konstantin Ryabitsev wrote:
> > > > On Sat, Jun 29, 2019 at 05:16:18PM +0200, Thomas Gleixner wrote:
> > > > > > Makes all sense to me.  One question/remark:
> > > > > > 
> > > > > > Documentation/process/submitting-patches.rst says:
> > > > > > 
> > > > > >  "If the patch follows from a mailing list discussion, give a URL to the
> > > > > >   mailing list archive; use the https://lkml.kernel.org/ redirector with
> > > > > >   a ``Message-Id``, to ensure that the links cannot become stale."
> > > > > > 
> > > > > > and it does not mention "lore.kernel.org": does this doc want an update?
> > > > > 
> > > > > Yes. lkml.kernel.org/r was the initial redirector, but lore is the new
> > > > > thing.
> > > > 
> > > > FYI, lkml.kernel.org == lore.kernel.org in all respects. Using
> > > > lore.kernel.org/r/<messageid> will match *any* mailing list archived at
> > > > lore.kernel.org (for the full list, see https://lore.kernel.org/lists.html).
> > > > I prefer people use lore.kernel.org because that name doesn't imply that the
> > > > search will only match LKML.
> > > 
> > > I much prefer https://lkml.kernel.org/r/$msgid over lore, because I can
> > > change it to marc.info with a single character change. And while lore
> > > has improved, the thing is still a horrible horrible ugly site (an
> > > actual fixed frame for the thread overview, and hiding that 'Reply
> > > instructions' and 'LKML Archive on lore.kernel.org' somewhow would
> > > already be a big improvement).
> > 
> > But lore allows to reference all mailinglists which are archived
> > there, while lkml.k.org is hardcoded to lkml.
> > 
> > > Also, strlen("lkml.kernel.org/r/") < strlen("lore.kernel.org/lkml/").
> > 
> > Come on ....
> 
> If the size matters, how about just putting the message id?
> Something like:
>   Link: <alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>

We could add an option to `git am` to save the Message-ID automatically.

regards,
dan carpenter
