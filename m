Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EFB9ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 20:28:31 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED0C13CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 20:28:30 +0000 (UTC)
Date: Fri, 23 Jun 2017 22:28:28 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <20170623145229.GB1855@kroah.com>
Message-ID: <alpine.LSU.2.20.1706232226370.30709@cbobk.fhfr.pm>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<20170623145229.GB1855@kroah.com>
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

On Fri, 23 Jun 2017, Greg KH wrote:

> Ok, I'll bite, what exactly do you mean by "large time"?  During the 
> -rc1 merge window, it can take a few weeks for me to catch up with the 
> large onslaught of patches marked for stable, but almost all of those 
> were determined by the develoers to not be all-so-serious, as they were 
> delayed in getting to Linus for -rc1, and not before.
> 
> You can always email and ask for specific patches to be queued up now,
> as I go through the list in a semi-random manner.
> 
> After the big -rc1 chunk of patches are merged, it's usually only a week
> at most before the patches hit a stable release, people usually complain
> it goes too fast, not that it's too slow these days.

I agree, we don't see the pace at which patches make it into -stable as a 
big issue for us (*); in case we need anything cherry-picked from Linus' 
tree earlier than it appears in -stable, we just do that, and drop it from 
our tree once we merge new -stable.

(*) sometimes it's actually quite the contrary :)

Thanks,

-- 
Jiri Kosina
SUSE Labs
