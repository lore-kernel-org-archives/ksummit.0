Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0196E976
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 14:39:12 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C46E200AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 14:39:11 +0000 (UTC)
Date: Tue, 27 May 2014 16:39:08 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1401119598.3303.6.camel@dabdike>
Message-ID: <alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 26 May 2014, James Bottomley wrote:

> > I think SCSI is almost uniquely difficult for this.  The drivers are so
> > big and different from each other.  Competitors aren't going to review
> > each other's code.
> 
> To be honest, my review standard for drivers is does it pass checkpatch
> (for an ignored subset of warnings, like lines over 80 characters), does
> it compile individually and when I look through the patch does anything
> leap out as wrong.  That's by no means an extensive review, but it's
> about all that you can do without understanding the internals of the
> driver.  I figure mostly that if something goes wrong within a big
> driver then in won't affect other drivers, so the manufacturer would
> only have themselves to blame and thus be nicely motivated to fix it.

With my distro person hat on, I'd really like to call at least for pushing 
driver maintainers much harder to be a lot more verbose in their 
changelogs (if splitting the commits into smaller chunks is not an 
option). Without that, trying to find out what change might potentially 
cause what kind of behavior turns into a nightmare.

For an example picked up in a completely in random, look at this one

	commit 1ba981fd3ad1f91b8bb205ce6aac6aad45f2fa7a
	Author: James Smart <james.smart@emulex.com>
	Date:   Thu Feb 20 09:56:45 2014 -0500

	    [SCSI] lpfc 8.3.45: Incorporated support of a low-latency io path

No changelog at all, which doesn't look really right when looking at this:

	13 files changed, 1622 insertions(+), 75 deletions(-)

Thanks,

-- 
Jiri Kosina
SUSE Labs
