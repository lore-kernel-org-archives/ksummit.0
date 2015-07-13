Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2580D93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:22:26 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86BAD253
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:22:25 +0000 (UTC)
Date: Mon, 13 Jul 2015 14:22:22 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150713182222.GC11033@thunk.org>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
	<20150713140752.GA15582@gmail.com>
	<1436801960.6901.19.camel@HansenPartnership.com>
	<20150713160541.GC15582@gmail.com>
	<1436804056.6901.27.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436804056.6901.27.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 13, 2015 at 05:14:16PM +0100, James Bottomley wrote:
> 
> So: I admit that if I'm careless, 2fa helps protect everyone else.
> However, I think you can see that if I'm careful (as I claim I am) 2fa
> doesn't buy me much.

The whole point of defense in depth is that even if you normally are
very careful, if you screw up, there are backup protections that
hopefully will prevent the lapse from being a disaster.

With security, it's always about "belt and suspenders".  Sure, we need
to trade off security gains versus the impacts to convenience.  For
me, using 2FA to protect my ssh and GPG keys makes more sense, so I'm
using a Yubikey Neo to provide that 2FA protection.

						- Ted
