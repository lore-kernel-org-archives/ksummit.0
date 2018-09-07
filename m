Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E4A6F77
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 13:30:35 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B6DBA623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 13:30:34 +0000 (UTC)
Date: Fri, 7 Sep 2018 15:30:32 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Eduardo Valentin <edubezval@gmail.com>
In-Reply-To: <20180906225531.GB2251@localhost.localdomain>
Message-ID: <nycvar.YFH.7.76.1809071526320.15880@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
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

On Thu, 6 Sep 2018, Eduardo Valentin wrote:

> Should we add maybe a point here to discuss which kernels are to be 
> considered for patching in these cases? All the stable branches? Only 
> mainline? Obviously, either extreme cases can hurt people. Patching 
> older kernels requires insane amount of work and patching only mainline 
> leaves distros on limbo.

That'd be mostly question for the stable guys I guess. I am not sure how 
often did they in the past have to say "sorry, the backport is horribly 
complex, so we are not backporting the fix and we're keeping the bug 
unfixed".

Greg, is this something that actually has been happening for real in the 
past? Or would that absolutely break the expectations that stable tree 
consumers have?

Thanks,

-- 
Jiri Kosina
SUSE Labs
