Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 943F92FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:13:46 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1AC7720117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:13:45 +0000 (UTC)
Date: Sun, 11 May 2014 23:13:32 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140512061332.GA10134@thin>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<53703416.5070400@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53703416.5070400@zytor.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>, Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 11, 2014 at 07:38:14PM -0700, H. Peter Anvin wrote:
> As valuable as I obviously believe this project is, is there actually
> anything that warrants discussion at the Kernel Summit?  It seems like
> something to Just Do[TM].

I believe there is actually a key part of this discussion to have at
Kernel Summit.  We don't need to discuss the technical details of the
implementation; we do need to discuss the implications of enabling mass
oops-reporting, the infrastructure and information we want to include in
codes valid for the next decade or so, the tradeoffs between ease of
reporting and value of the reports, some potential approaches to
aggregate the date, and similar.

- Josh Triplett
