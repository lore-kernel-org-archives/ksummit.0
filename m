Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7C67F69
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 19:55:02 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CD858B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 19:55:02 +0000 (UTC)
Date: Thu, 6 Sep 2018 21:54:59 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1536176428.3627.28.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, James Bottomley wrote:

> > We are drifting away a bit here, but now that you have mentioned it,
> > let me add a datapoint to this -- it's actually causing issues to
> > our workflow, as we have scsi.git as one of the upstreams [1], and
> > when you rebase, it blows up our git workflow and we have to fixup
> > things manually.
> 
> Describe the issues and we'll try to come up with a fix, but on the
> whole you should regard the scsi trees somewhat similarly to linux-
> next: it's our proposal for a patch set but we may update it.

We order patches in our trees in the same git-topological-ordering as they 
are upstream. It has a lot of benefits, most importantly: it doesn't 
introduce artificial conflicts that don't exist in reality.

In order to achieve that, we of course need 1:1 mapping between our 
patches and upstream commits.
Rebases destroy that mapping.

And in some areas (scsi is one, but not the only one), we basically had no 
other choice than considering maintainer's tree to be already "upstream 
enough", without waiting for Linus' tree merge.

> > So if you are aware of your tree having downstreams, and care about
> > not breaking them and want to be nice to them, you shouldn't rebase
> > that tree [2].
> 
> Well, I wasn't aware of this one, but I'm sure we can come up with a
> functional workflow once I understand what's happening with the
> downstream tree.

Thanks,

-- 
Jiri Kosina
SUSE Labs
