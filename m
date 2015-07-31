Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C01ED279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:40:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 55D51E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:40:41 +0000 (UTC)
Message-ID: <1438368039.2179.62.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Fri, 31 Jul 2015 11:40:39 -0700
In-Reply-To: <20150731182815.GK5613@dtor-ws>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org>
	<1438362159.2179.42.camel@HansenPartnership.com>
	<20150731170523.GF5613@dtor-ws>
	<1438362797.2179.45.camel@HansenPartnership.com>
	<20150731173335.GI5613@dtor-ws>
	<1438364188.2179.53.camel@HansenPartnership.com>
	<20150731182815.GK5613@dtor-ws>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2015-07-31 at 11:28 -0700, Dmitry Torokhov wrote:
> On Fri, Jul 31, 2015 at 10:36:28AM -0700, James Bottomley wrote:
> > On Fri, 2015-07-31 at 10:33 -0700, Dmitry Torokhov wrote:
> > > On Fri, Jul 31, 2015 at 10:13:17AM -0700, James Bottomley wrote:
> > > > On Fri, 2015-07-31 at 10:05 -0700, Dmitry Torokhov wrote:
> > > > > On Fri, Jul 31, 2015 at 10:02:39AM -0700, James Bottomley wrote:
> > > > > > On Fri, 2015-07-31 at 09:53 -0700, Christoph Hellwig wrote:
> > > > > > > On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> > > > > > > > How is this different from the free happening explicitly in the remove
> > > > > > > > function?
> > > > > > > 
> > > > > > > It's not.  The real problem is that people don't understand life time
> > > > > > > rules and expect magic interfaces to fix it for them.
> > > > > > 
> > > > > > So surely the rule is that we do this in module removal.  That doesn't
> > > > > > get called until last put on the module and that can't happen (or
> > > > > > shouldn't happen) while userspace is holding open one of the /sys
> > > > > > or /proc interfaces (usually those objects hold a reference on something
> > > > > > within the driver to prevent this).
> > > > > > 
> > > > > > There is an alternative way of handling this:  that would be to detach
> > > > > > the file from the backing interface at _del time, so sysfs/kernfs would
> > > > > > take over the interface and return -ENODEV or something  meaning we
> > > > > > could tear down the module even if there was an open interface file.
> > > > > > I'm not advocating this as a solution because I can already see the
> > > > > > problems (like how do you switch interfaces atomically) but if this
> > > > > > really is a serious problem, we should explore alternative solutions.
> > > > > 
> > > > > Tejun already done such "switching" for sysfs so it should be possible,
> > > > > however (blasphemy!) there are other entities than files that also may
> > > > > have different lifetime rules that live past device unbinding.
> > > > 
> > > > By unbinding do you mean when the unbind is called, which is fine, the
> > > > interface handler is still there, or when the final module put is
> > > > called, which is not fine because that's a lifetime problem.  In the
> > > > latter case we need a hunting expedition to have them all caught and
> > > > shot.
> > > 
> > > I was talking about former because module is normally stays pinned if it
> > > implements file_operations and will not be unpinned until last release
> > > on file (device) is called.
> > 
> > Yes, I thought so, so that tells us the problem isn't really lifetime
> > rules per-se (the handlers and module are still present and won't be
> > released until the pinned object is), it's about the way we handle the
> > teardown ... effectively the devm_ memory is released at the wrong point
> > during teardown.  Effectively, if this happens a lot, it's saying our
> > rules and best practises for this are hard to follow.
> 
> I am not sure why you are making distinction between module lifetime
> rules and driver data lifetime rules. Both are objects that have certain
> lifetimes and when there is a mismatch in lifetimes between objects that
> use/being used the havoc ensues.

Driver static data (as opposed to the dynamic stuff we allocate to
service requests) falls into two categories: that which can be released
at del_ time and that which can only be released at module last put
time.  It sounds like we have some data in the wrong category.  As
Russell says, this looks to be an orthogonal problem to devm_kzalloc.

James
