Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48D9B78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 18:57:30 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDA852F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 18:57:29 +0000 (UTC)
Date: Wed, 3 Aug 2016 20:57:26 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <57A21F88.7000504@roeck-us.net>
Message-ID: <alpine.LNX.2.00.1608032052430.22028@cbobk.fhfr.pm>
References: <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<57A21F88.7000504@roeck-us.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 3 Aug 2016, Guenter Roeck wrote:

> How can one reasonable expect a stable maintainer to determine if a 
> patch for an oddball architecture applies, or one for a random subsystem?

So *who* is supposed to be *the* responsible person for cherry-picking the 
patch and verifying that it is applicable to particular -stable?

The statement above suggests that it's definitely not a responsibility of 
stable branch maintainer.

OTOH Greg (and not only him) argues that maintainers are already 
overloaded, so asking them to actually prepare patches for particular 
stable trees (at least the ones they care about) is too much to ask.

Thanks,

-- 
Jiri Kosina
SUSE Labs
