Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C80DC23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 19:49:01 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 963E2766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 19:49:00 +0000 (UTC)
Date: Sun, 9 Sep 2018 21:48:58 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20180909125554.GB16474@kroah.com>
Message-ID: <nycvar.YFH.7.76.1809092143280.15880@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<nycvar.YFH.7.76.1809071526320.15880@cbobk.fhfr.pm>
	<20180909125554.GB16474@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 9 Sep 2018, Greg KH wrote:

> Yes, this is something that is happening today.
> 
> If you look, L1TF is not fully backported to 4.4.y, for anyone running
> 4.4.y as a host operating system.  The backport was just too horrible
> and no one wanted to do it and test it as all of the major hosting
> services have moved on to 4.9.y or better.

Unrelated sidenote: we have the whole thing backported to SUSE 4.4 kernel, 
so it can be cherry-picked from there if needed.

> There are other examples of this, spectre fixes for arm32 are not in any
> stable tree older than 4.18.y.  Same for other arches and kernel
> versions.
> 
> I tried to write up "what kernel version to use" on my blog a few weeks
> back to answer this type of question.  Basically, only "trust" the
> latest LTS stable kernel for security issues to be able to use it to run
> untrusted users.  When you start getting older kernels involved, nasty
> problems like what Meltdown and the like are having to implement, it
> just does not work.

OK, so as long as this message is completely clear to the stable tree 
consumers (see my other mail about potential legal implications for the 
downstream consumers in case they are not aware of this), then all is 
fine.

Thanks,

-- 
Jiri Kosina
SUSE Labs
