Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D7C3AE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:01:10 +0000 (UTC)
Message-ID: <1399914053.4337.21.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Levente Kurusa <levex@linux.com>
Date: Mon, 12 May 2014 19:00:53 +0200
In-Reply-To: <20140512163643.GA3509@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<20140512163643.GA3509@linux.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Mon, 2014-05-12 at 18:36 +0200, Levente Kurusa wrote:

> > I'd like the URL to be valid (meaning base64 the compressed data) so
> > that we can get the data to the kernel.org server as easily as possible.
> > Making the app a requirement for reporting is too onerous for
> > non-developers.  I see no reason we can't link to (Open in/Install) it
> > on the webform though.
> 
> +1, the app is a good idea but shouldn't at all be mandatory. If we
> add that as a requirement people might just get lazy and don't
> download the app at which point we lose the report. Of course,
> adding the app as a plus is a great idea, since then the geeky people
> can take a look at what really happenned if the QR code has messed up
> their stack traces or whatever they see on their screen.

If you have a well-known URL prefix then as far as I know you can (at
least on Android) still have a URL and invoke an app if it's installed,
via the intents system. You could thus still have a URL that displays
the information, or a local app that does it and can do more.

johannes
