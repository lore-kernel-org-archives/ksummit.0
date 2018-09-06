Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A30C4E18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 19:18:10 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3683B7D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 19:18:10 +0000 (UTC)
Received: from relay1.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 772EFAE70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 19:18:08 +0000 (UTC)
Date: Thu, 6 Sep 2018 21:18:07 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
	security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I believe we have reasonably well-established process for handling 
security issues that are a matter of a single, reasonably self-contained 
fixup.

Past experiences with Meltdown, Spectre and L1TF have shown that we're not 
really ready to handle that in a reasonably sane way yet.

Yeah, at the end of the day we managed to have the fixes propagated in 
time to Linus' tree, to stable, and to distros as well, but it was 
completely out of anything regular, and definitely had permanent damaging 
effects (I'd say both in personal and business aspects for almost 
everybody who had to participate).

I'd believe that everybody involved would agree that this didn't work 
really well, and if it potentially would have to happen again (and we 
already went through it at least twice this year), it would not be 
sustainable.

I am not completely sure what we could do to improve this, especially with 
our kernel community hats on -- I am pretty sure a lot is happening on the 
corporate level between individual "corporate stakeholders". Ideas I think 
would be worth discussing:

- how to adapt our processess to be able to deal with such situations 
  better should they happen in the future again. So far all our 
  longer-term development has been concentrated around LKML (and other 
  MLs) and the existing maintainership communities / structures, but the 
  embargos for new big features don't really fit into this

- how to make sure that proper pressure is applied on the companies that 
  are handling embargoes irresponsibly wrt. linux/opensource development 
  (well, even some proprietary vendors were rather unhappy with those 
  events) from us as the linux kernel community
  + and perhaps even more importantly, what exactly we should be pressing 
    for

Thanks,

-- 
Jiri Kosina
SUSE Labs
