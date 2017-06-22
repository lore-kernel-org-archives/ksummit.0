Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 058CC504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 12:36:17 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A705AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 12:36:16 +0000 (UTC)
Date: Thu, 22 Jun 2017 14:36:13 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Laura Abbott <labbott@redhat.com>
In-Reply-To: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
Message-ID: <alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 21 Jun 2017, Laura Abbott wrote:

> Fedora tends to follow the most recent stable kernel very closely
> (e.g. 4.11.6 is currently pending for Fedora 24, 25, and 26).
> This works well enough, but there still seem to be some
> disconnects in the bug reporting process. Examples I can think of:
> 
> - When users report bugs on the Fedora tracker that look like
> actual upstream bugs, what's the best way to have those reported?
> I typically end up having to summarize from the Fedora bugzilla
> and send an e-mail which ends up being tedious. Can we make this
> bug reporting easier for non-kernel developers?

Just as a data point -- we do a "Kernel of the day" build of a branch that 
follows Linus' tree (with a few SUSE specific patches floating on top of 
it) and provide it in an optional package repository.

That allows the reporter to easily check whether the issue has been fixed 
in latest upstream without needing to have the skills required to compile 
own kernel.

If the issue is confirmed to be present in latest upstream as well, our 
internal person / maintainer responsible for that particular area usually 
takes over (there are cases when the reporter prefers to report the bug 
upstream by himself though).

I am not sure if there is a way how to improve this process even further 
... do you have any particular ideas?

Thanks,

-- 
Jiri Kosina
SUSE Labs
