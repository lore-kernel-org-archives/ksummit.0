Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA95B2565
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 12:34:25 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2626887C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 12:34:25 +0000 (UTC)
Date: Mon, 8 Jul 2019 14:34:21 +0200
From: Greg KH <greg@kroah.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20190708123421.GA20112@kroah.com>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 08, 2019 at 01:35:15PM +0200, Jiri Kosina wrote:
> On Mon, 8 Jul 2019, Sasha Levin wrote:
> > 
> > >> If we were to start avoiding driver updates, it would act as an
> > >> incentive for people not to upgrade their kernel.
> > >
> > >I'm not sure I follow the logic here?
> > 
> > The way I see it, the lower your "effective delta" is between to
> > kernels, the easier it is to move forward. For example, if I have a
> > product that runs on 4.19 and uses all our core kernel code + 10
> > drivers, and I know that those drivers had most of the fixes backported
> > to my LTS tree, I'd feel much more confident going to 5.4 knowning that
> > I already have most of the patches that come with 5.4.
> > 
> > For me it's a matter of how one would budget a move from a kernel X LTS
> > to kernel Y LTS, and I think that as that budget requirement grows it's
> > actually harder to actually do it (and convince management), acting as a
> > negative incentive to stay with whatever works now.
> 
> But where does the 'stable' aspect appear here?
> 
> I think it's reasonable to expect 'stable' to mean 'minimal number of 
> changes needed to maintain stability of the kernel', and that I believe 
> was the original purpose of stable tree.
> 
> Now you seem to be repurposing 'stable' as 'as close to upstream as 
> possible in order to minimize cost of version updates'.

"stable" means "All the bugfixes that we have in Linus's tree,
backported to this one as well to resolve known issues".  That's all
that is happening here with the autosel stuff.  There are a load of
subsystems that still do not tag stuff for stable backporting, and
sometimes even the maintainers miss them as well (I am guilty of that as
well.)  So autosel finds those fixes and backports them, it's no
different from a distro doing the exact same thing when a bug report
comes into it, but it happens _BEFORE_ the bug report happens.

> I guess that's one of the reasons why distros are gradually turning away 
> from stable tree the main purpose of distros is to provide stability, 
> while it clearly is not minimizing acumulation of cost for future version 
> updates.

That's directly opposite of what I see happening with loads of
real-world devices.

As proof of this, and as part of a talk I gave a few weeks ago, I can
quote the Android security team.  They kept track of all requests that
they made to be backported to their device trees for 2018.  Out of 218
requests, 201 of them were _ALREADY_ in the LTS release tree.  The other
remaining ones were due to out-of-tree code being in the devices, or due
to bugs in backports that were not upstream.

So again, bugs are being fixed _before_ people report them, which sounds
exactly like what a distro needs to have happen for them :)

thanks,

greg k-h
