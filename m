Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4DFBA70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:08:55 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D425620255
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:08:54 +0000 (UTC)
Date: Fri, 9 May 2014 21:08:49 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Johannes Berg <johannes@sipsolutions.net>
In-Reply-To: <1399656674.4136.12.camel@jlt4.sipsolutions.net>
Message-ID: <alpine.LNX.2.00.1405092108130.21712@pobox.suse.cz>
References: <20140509170709.GA9747@redhat.com> <20140509171954.GC8289@cloud>
	<1399656674.4136.12.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 9 May 2014, Johannes Berg wrote:

> > I'd also like to nominate Christopher Li, for Sparse.
> 
> Seconded, I'm also interested in general in whether people still think
> sparse is useful and we should give it attention, or should focus more
> on really getting everything into gcc - we have a number of sparse
> warnings in very low-level header files that get used everywhere, for
> example the one I just fixed in [1] or the one I tried to fix but that
> ended up being buggy ([2]), but there doesn't seem to be much attention
> to these during the patch submission etc.

Just for the sake of datapoint -- running 'make C=1' before every git push 
is part of my automated workflow. So yes, I am routinely using sparse.

-- 
Jiri Kosina
SUSE Labs
