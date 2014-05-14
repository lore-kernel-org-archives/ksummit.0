Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 764F3AF6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:52:46 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D5FC520111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:52:44 +0000 (UTC)
Date: Wed, 14 May 2014 08:52:30 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20140514155230.GB1873@thin>
References: <1995824.rdvEX5SOIt@avalon> <20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <20140513155207.GA3538@linux.com>
	<20140513201858.GB2911@cloud>
	<1400055652.4759.6.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1400055652.4759.6.camel@jlt4.sipsolutions.net>
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

On Wed, May 14, 2014 at 10:20:52AM +0200, Johannes Berg wrote:
> On Tue, 2014-05-13 at 13:18 -0700, josh@joshtriplett.org wrote:
> 
> > > Base32 does sound good until you realize that it requires roughly 20%
> > > more space than Base64 does. We would need some calculations to
> > > decide if we were to go down this path.
> > 
> > QR has several encoding modes; it doesn't matter that base32 uses more
> > space in terms of characters, because QR itself has an alphanumeric
> > encoding mode that only uses 5.5 bits per character to encode 45
> > possible alphanumeric/symbol characters.  base64 wastes far more
> > relative to bytes (6 versus 8 bits) than base32 wastes relative to QR
> > alphanumeric (5 versus 5.5 bits).
> 
> This subthread is kinda going on a tangent now, but ...
> 
> The valid characters seem to be
> 
> 0-9A-Z $%*+-./:
> 
> so you'll need to be careful to not use a ? for URL parameters [1],
> [1] i.e. the previously suggested https://oops.kernel.org/?qr=... will
> not work

https://oops.kernel.org/qr/...
Or:
https://qr.kernel.org/...

> Since you really wouldn't want to use % due to URL-encoding
> difficulties, and $ and space also seem a bit questionable, you could
> still extend the encoding alphabet to at least base36 (0-9A-Z) and even
> add +-./: without much difficulty to get to base41.

space and % seem like the only ones that need avoiding, both because of
URL-encoding issues; you could use all six of $*+-./: , giving 43 of 45
possible characters.  On the other hand, is it worth the complexity of
using base43 encoding rather than base32?

- Josh Triplett
