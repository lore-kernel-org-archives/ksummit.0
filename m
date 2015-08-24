Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9A28B76
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 12:52:39 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56A8EE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 12:52:38 +0000 (UTC)
Date: Mon, 24 Aug 2015 12:51:53 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150824125153.GG3684@io.lakedaemon.net>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 02:29:41PM +0200, Linus Walleij wrote:
> Kselftest may be helpful, but basically any loads that heavily
> exercise the kernel internals are helpful to harden the kernel.
> Some of these are custom test suites I suspect. Any good hints
> for a simple embedded developer like me?

A great place to start is this paper:

  http://messenger.jhuapl.edu/the_mission/publications/Hill.2007.pdf

It's a walk-through of how NASA's JHU/APL facility stress-tests software
intended for deep space missions, including Messenger, New Horizons, and
STEREO.  Lot's of good concepts, no specific test harnesses, though.

thx,

Jason.
