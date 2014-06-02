Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D29879C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Jun 2014 12:00:06 +0000 (UTC)
Received: from mho-02-ewr.mailhop.org (mho-02-ewr.mailhop.org [204.13.248.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DA6F1FA1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Jun 2014 12:00:05 +0000 (UTC)
Date: Mon, 2 Jun 2014 08:00:00 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Shuah Khan <shuahkhan@gmail.com>
Message-ID: <20140602120000.GZ8664@titan.lakedaemon.net>
References: <20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
	<20140530050220.GA2505@kroah.com>
	<1401427998.2163.37.camel@dabdike>
	<20140530165646.GZ25041@thunk.org>
	<CAKocOOPv1tRz0RoebO52bTJSkHjjKDMTDSLb-mnjyFqp++hFiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKocOOPv1tRz0RoebO52bTJSkHjjKDMTDSLb-mnjyFqp++hFiA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] More productive uses of enthusiastic new
 kernel developers (was: Re: [TOPIC] Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 01:54:49PM -0600, Shuah Khan wrote:
> On Fri, May 30, 2014 at 10:56 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> > Thinking about this some more, what if instead of, or in addition to,
> > having newcomers work on cleanup patches, what if we encouraged some
> > of them to help to manually backport patches to the stable kernels
> > that don't apply automatically?
> >
> > Currently the stable maintainers will typically send a notification
> > subsystem maintainer / mailing lists that a particular patch didn't
> > apply and that it's up some subsystem developers to handle resolving
> > the patch conflict.
> >
> > What if those patches were also cc'ed to a separate mailing list which
> > was also monitored by patchwork, and newcomers were encouraged to grab
> > patches and try to make a determination whether it's really needed,
> > and how to handle doing the backport, and once the patch was properly
> > backported they could cc the subsystem mailing list asking for
> > approval before the patch could get fed into a long-term stable tree?
> >
> > It does mean more patches to reviews, but I'd much rather review a
> > patch going into a long-term stable tree that would otherwise get
> > dropped (and thus avoid whiny entitled users and/or embedded engineers
> > who think it's the maintainer's job to backport to N different stable
> > kernels), rather than review whitespace patches.
> >
> > If this worked out, I could also imagine encouraging more advanced
> > newcomers to look for bug fix patches that didn't have an explicit cc:
> > stable@vger.kernel.org, and look to see if they should be backported.
> > This would help for certain subsystems that have elected not to
> > automatically mark their patches.  There are subsystems which don't
> > like anyone but their experienced developers to handle doing
> > backports, but I suspect there would also be many subsystems that
> > would welcome the extra help, especially if it was much more likely to
> > result in additional reviewers / subsystem developers.
> >
> 
> In addition to the above, how about keeping a maintainer and sub-maintainer
> wish list of tasks and work they would like to see get done in their areas and
> don't have time do it themselves. It could be maintained on kernelnewbies site.
> Having something like this will help guide and give direction to people looking
> to get started in a new area and/or any area of the kernel.

There was some previous discussion on this that I can't locate atm.  In
short, the staging tree already has TODO files in-tree.  The advantage
being the patch handling the todo item should also delete the item from
the list.

Keeping it on a separate website just means additional out-of-workflow
maintenance for people who are already saturated.

thx,

Jason.
