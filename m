Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71832AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 22:35:43 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5612D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 22:35:42 +0000 (UTC)
Date: Wed, 28 Jun 2017 00:35:40 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1498588234.18166.29.camel@HansenPartnership.com>
Message-ID: <alpine.LSU.2.20.1706280033050.30709@cbobk.fhfr.pm>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
	<20170627175321.GS21846@wotan.suse.de>
	<1498588234.18166.29.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
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

On Tue, 27 Jun 2017, James Bottomley wrote:

> So I think it would be a useful service for distro's to provide a 
> release of -next that users can try.  Perhaps it doesn't have to be 
> daily, but at least weekly would be enormously helpful.

We do:

	https://build.opensuse.org/repositories/Kernel:linux-next

But we are getting close to zero bugreports against it. Which either means 
it's very rarely used (and therefore we should perhaps be more vocal about 
it), or people who are educated enough to use it are actually educated 
enough to report any issues directly upstream.

-- 
Jiri Kosina
SUSE Labs
