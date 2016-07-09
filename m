Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D49E6258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 08:37:14 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B8E3152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 08:37:14 +0000 (UTC)
Date: Sat, 9 Jul 2016 10:37:12 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <20160709000648.GG28589@dtor-ws>
Message-ID: <alpine.LNX.2.00.1607091035150.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <2544945.WExZRG40u7@vostro.rjw.lan>
	<20160709000648.GG28589@dtor-ws>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linux-foundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Fri, 8 Jul 2016, Dmitry Torokhov wrote:

> Also, do we have many changes that go to stable without maintainers 
> actually adding cc: stable annotation in mainline?

I have a feeling (but it's not backed up by any proper statistics) that we 
do have quite a high number of such patches.

Yes, sure, the maintainer is later CCed on the patch in the -stable queue 
review patchbomb, but that's unfortunately in practice not the same thing 
as if he actually actively considered the patch for inclusion himself.

-- 
Jiri Kosina
SUSE Labs
