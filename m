Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C3371BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:02:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3742B1F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:02:41 +0000 (UTC)
Message-ID: <1438362159.2179.42.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Hellwig <hch@infradead.org>
Date: Fri, 31 Jul 2015 10:02:39 -0700
In-Reply-To: <20150731165346.GA18984@infradead.org>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Tejun Heo <tj@kernel.org>, Russell King <linux@arm.linux.org.uk>,
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

On Fri, 2015-07-31 at 09:53 -0700, Christoph Hellwig wrote:
> On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> > How is this different from the free happening explicitly in the remove
> > function?
> 
> It's not.  The real problem is that people don't understand life time
> rules and expect magic interfaces to fix it for them.

So surely the rule is that we do this in module removal.  That doesn't
get called until last put on the module and that can't happen (or
shouldn't happen) while userspace is holding open one of the /sys
or /proc interfaces (usually those objects hold a reference on something
within the driver to prevent this).

There is an alternative way of handling this:  that would be to detach
the file from the backing interface at _del time, so sysfs/kernfs would
take over the interface and return -ENODEV or something  meaning we
could tear down the module even if there was an open interface file.
I'm not advocating this as a solution because I can already see the
problems (like how do you switch interfaces atomically) but if this
really is a serious problem, we should explore alternative solutions.

James
