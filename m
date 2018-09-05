Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D05341423
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 19:25:21 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5846E810
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 19:25:21 +0000 (UTC)
Date: Wed, 5 Sep 2018 21:25:17 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1536165914.3627.17.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

> We do this in SCSI as well, but only if the tree hasn't yet been 
> submitted to Linus.  The technical term is folding.  It's obviously 
> better to fix buggy commits that haven't gone upstream because it 
> improves bisectability.

We are drifting away a bit here, but now that you have mentioned it, let 
me add a datapoint to this -- it's actually causing issues to our 
workflow, as we have scsi.git as one of the upstreams [1], and when you 
rebase, it blows up our git workflow and we have to fixup things manually.

So if you are aware of your tree having downstreams, and care about not 
breaking them and want to be nice to them, you shouldn't rebase that tree 
[2].

[1] there are some funny technical details, but in basic principle it's 
    exactly like that

[2] https://yarchive.net/comp/linux/git_rebase.html

Thanks,

-- 
Jiri Kosina
SUSE Labs
