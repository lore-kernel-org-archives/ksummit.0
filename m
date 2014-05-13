Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5CD80979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:29:32 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFD9720215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:29:31 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 8BCD3AD11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:29:30 +0000 (UTC)
Date: Wed, 14 May 2014 01:29:29 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: NeilBrown <neilb@suse.de>
In-Reply-To: <20140514092340.24ab4c9e@notabene.brown>
Message-ID: <alpine.LNX.2.00.1405140127240.16459@pobox.suse.cz>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140514092340.24ab4c9e@notabene.brown>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 14 May 2014, NeilBrown wrote:

> A particular practical issue is that when doing a git-bisect there might 
> be a range of commits that only compile/run if some later commit is 
> applied. If I'm bisecting in that range, I have to repeatedly apply that 
> commit by hand.

You can just have it stored in a separate branch and perform the bisection 
using a script that will always first merge the branch, and reset after 
good/bad verification is done.

If the fix is already applied (because you are testing a state of the tree 
which has the commit already), git handles the merge of the 
already-applied patch with grace even if they don't have the same SHA-1.

-- 
Jiri Kosina
SUSE Labs
