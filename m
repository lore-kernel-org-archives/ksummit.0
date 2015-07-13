Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EAEBDAB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:38:15 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B9B5235
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:38:14 +0000 (UTC)
Date: Mon, 13 Jul 2015 21:37:49 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
In-Reply-To: <20150713160541.GC15582@gmail.com>
Message-ID: <alpine.LNX.2.00.1507132134370.7522@pobox.suse.cz>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
	<20150713140752.GA15582@gmail.com>
	<1436801960.6901.19.camel@HansenPartnership.com>
	<20150713160541.GC15582@gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015, Konstantin Ryabitsev wrote:

> Getting private ssh keys is a lot easier than getting full access to a
> developer's workstation:

Well ... even the recent example on this very list (a bug in script for 
applying patches being used by prominent maintainers) could be used by an 
attacker to open remote shell with repository access credentials on the 
local system of the maintainer. So I would be rather careful with stating 
that all this is just theoretical excercise.

Thanks,

-- 
Jiri Kosina
SUSE Labs
