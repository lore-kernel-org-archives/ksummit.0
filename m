Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1FDA2979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 22:55:35 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 506FD201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 22:55:34 +0000 (UTC)
Date: Wed, 14 May 2014 15:55:23 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Levente Kurusa <levex@linux.com>
Message-ID: <20140514225523.GA10344@jtriplet-mobl1>
References: <1995824.rdvEX5SOIt@avalon> <20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1>
	<20140514200043.GA2516@linux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140514200043.GA2516@linux.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>
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

On Wed, May 14, 2014 at 10:00:43PM +0200, Levente Kurusa wrote:
> On Wed, May 14, 2014 at 11:54:49AM -0700, Josh Triplett wrote:
> > On Wed, May 14, 2014 at 09:00:51AM -0700, H. Peter Anvin wrote:
> > > On 05/13/2014 12:08 AM, Josh Triplett wrote:
> > > > 
> > > > Many users will already have a QR-code scanning app installed, and such
> > > > apps always support loading URLs in a browser.
> > > > 
> > > 
> > > Let me disavow you of the notion that stock scanning apps handle large
> > > QR symbols.
> > 
> > That's certainly true.  On the other hand, I'd really like to see a
> > version of the oops-as-QR-code bits that uses VGA block characters to
> > work in non-graphics, non-framebuffer mode, which would require fitting
> > in at most 80x50 (using the half-block characters).  That wouldn't allow
> > nearly as much data, but likely enough for a somewhat useful crash
> > report, especially in aggregate.
> 
> Not really possible, from my experiences the QR code that results from
> a random oops is ranging from 100x100 to 150x150 depending on the size
> of stack trace and stuff like that. Of course, we can decrease the
> error recovery region and that might make it smaller. I'll take a look
> at this a bit later. If that doesn't work, then that means that we can't
> shuffle that into the textmode's 80x25. Not to mention that the block
> characters in the ASCII table (I think you meant that, if not please
> correct me) are not neccessarily square, which is needed for maximum
> scannability.

In the standard EGA/VGA/DOS character font, see characters DB (solid
block), DC (lower half block), and DF (upper half block).  Those allow
drawing 80x50 on an 80x25 console.  Unicode has those as well, and also
supports a full set of quarter-character blocks which would allow
160x50; see U+2580 through U+259F.

I've also seen discussions about removing less useful information from
the oops backtrace (simplifying it to just the backtrace itself, and
less of the guessed-at information).

> One thing that we currently support and can be a solution is Micro QR
> code. It removes two of the three coordinators and does some more
> compression AFAIK. It might be possible to shuffle that into textmode.

How widely do stock barcode reader apps support that?

- Josh Triplett
