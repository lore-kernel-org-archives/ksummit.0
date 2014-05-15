Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A897348E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:19:04 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7098B20327
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:19:04 +0000 (UTC)
Message-ID: <53751303.3010000@zytor.com>
Date: Thu, 15 May 2014 12:18:27 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Triplett <josh@joshtriplett.org>
References: <CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1>
In-Reply-To: <20140514185449.GB4475@jtriplet-mobl1>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 05/14/2014 11:54 AM, Josh Triplett wrote:
> 
> That's certainly true.  On the other hand, I'd really like to see a
> version of the oops-as-QR-code bits that uses VGA block characters to
> work in non-graphics, non-framebuffer mode, which would require fitting
> in at most 80x50 (using the half-block characters).  That wouldn't allow
> nearly as much data, but likely enough for a somewhat useful crash
> report, especially in aggregate.
> 

Now we're getting into a funny area, which is "what is the lowest common
denominator".  If the lowest common denominator is VGA, a simple VGA
driver could force the screen to 640x480 graphics mode, or reprogram the
font to allow for an 160x100 pixel pseudographic mode (more if we allow
the font size to be adjusted).  It is not at all clear that using IBM
pseudographics with no other programming is a useful point on that spectrum.

Either way, this is *way* past turning into a technical conversation,
and belongs on LKML and not ksummit-discuss.

	-hpa
