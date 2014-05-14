Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9A9634C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 18:54:59 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8E4A201B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 18:54:58 +0000 (UTC)
Date: Wed, 14 May 2014 11:54:49 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140514185449.GB4475@jtriplet-mobl1>
References: <CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53739333.30108@zytor.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] Fwd: [TECH TOPIC] QR encoded oops for the
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 14, 2014 at 09:00:51AM -0700, H. Peter Anvin wrote:
> On 05/13/2014 12:08 AM, Josh Triplett wrote:
> > 
> > Many users will already have a QR-code scanning app installed, and such
> > apps always support loading URLs in a browser.
> > 
> 
> Let me disavow you of the notion that stock scanning apps handle large
> QR symbols.

That's certainly true.  On the other hand, I'd really like to see a
version of the oops-as-QR-code bits that uses VGA block characters to
work in non-graphics, non-framebuffer mode, which would require fitting
in at most 80x50 (using the half-block characters).  That wouldn't allow
nearly as much data, but likely enough for a somewhat useful crash
report, especially in aggregate.

- Josh Triplett
