Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 93BFB48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:53:46 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03F37201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:53:45 +0000 (UTC)
Date: Thu, 15 May 2014 21:53:43 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: "H. Peter Anvin" <hpa@zytor.com>
In-Reply-To: <537513BC.6020401@zytor.com>
Message-ID: <alpine.LNX.2.00.1405152151130.16459@pobox.suse.cz>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<1399992357.879.207.camel@i7.infradead.org>
	<537513BC.6020401@zytor.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 15 May 2014, H. Peter Anvin wrote:

> 	-hpa (who is suddenly thinking extremely evil thoughts about
>               modem tones and sound cards.)

I recall a patchset flying by years ago, which could use either keyboard 
LEDs or pc speaker to provide the oops to in morse code.

It's now more difficult with USB keyboards, because you need a lot of 
stuff to happen (including scheduling a workqueue) to blink the LEDs, but 
the pc speaker part should work.

Then you just run an app on your smartphone which decodes the morse back 
to the actual oops message, and you are done :)

-- 
Jiri Kosina
SUSE Labs
