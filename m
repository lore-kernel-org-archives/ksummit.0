Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F6BF308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 10:20:23 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EC75FCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 10:20:22 +0000 (UTC)
Date: Sun, 10 Jul 2016 12:20:19 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5h37nij6h4.wl-tiwai@suse.de>
Message-ID: <alpine.LNX.2.00.1607101215200.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<s5h37nij6h4.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 10 Jul 2016, Takashi Iwai wrote:

> IMO, we need a really better QA before releasing stable trees.  They are 
> all fixes, yes, but they aren't always fixes for stable trees, in 
> reality.

I agree.

BTW, how much coverage does -stable get from Fengguang's 0day robot? I 
think that as most of the stable tress don't really use the git workflow, 
the trees are being pushed out to git.kernel.org only shortly before 
actual release, so the 0day bot doesn't have enough time to catch up; but 
I have to admit I don't really know how exactly the timing and flow of 
patches works here.

Thanks,

-- 
Jiri Kosina
SUSE Labs
