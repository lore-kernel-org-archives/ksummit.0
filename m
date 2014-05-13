Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 039214D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:19:04 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8440F2022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:19:03 +0000 (UTC)
Date: Tue, 13 May 2014 13:18:58 -0700
From: josh@joshtriplett.org
To: Levente Kurusa <levex@linux.com>
Message-ID: <20140513201858.GB2911@cloud>
References: <CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <20140513155207.GA3538@linux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20140513155207.GA3538@linux.com>
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

On Tue, May 13, 2014 at 05:52:07PM +0200, Levente Kurusa wrote:
> Hi,
> 
> On Tue, May 13, 2014 at 12:08:51AM -0700, Josh Triplett wrote:
> > On Tue, May 13, 2014 at 09:44:26AM +0300, Teodora Băluţă wrote:
> > > On Mon, May 12, 2014 at 7:15 PM, Jason Cooper <jason@lakedaemon.net> wrote:
> > > > I'd like the URL to be valid (meaning base64 the compressed data) so
> > > > that we can get the data to the kernel.org server as easily as possible.
> > > > Making the app a requirement for reporting is too onerous for
> > > > non-developers.  I see no reason we can't link to (Open in/Install) it
> > > > on the webform though.
> > > 
> > > So from what I can understand, the QR code has an URL that has the
> > > base64 of the compressed Oops message. Right? I see three problems
> > > with this approach:
> > > 
> > > - base64 adds about 33% overhead (it's turning 3 octets into 4 encoded
> > > characters + padding). One issue with QR codes is that they have a
> > > limited amount of characters they can hold so that's why I do the
> > > compression in the first place
> > 
> > Putting base64-encoded data in a URL in a binary-format QR code with 8
> > bits per character does indeed waste quite a bit of space.  However, you
> > could put base32-encoded data into an alphanumeric-formatted QR code
> > with 5.5 bits per character, which would waste very little space.  (Or,
> > more efficiently but less conveniently, base40 or so.)
> 
> Base32 does sound good until you realize that it requires roughly 20%
> more space than Base64 does. We would need some calculations to
> decide if we were to go down this path.

QR has several encoding modes; it doesn't matter that base32 uses more
space in terms of characters, because QR itself has an alphanumeric
encoding mode that only uses 5.5 bits per character to encode 45
possible alphanumeric/symbol characters.  base64 wastes far more
relative to bytes (6 versus 8 bits) than base32 wastes relative to QR
alphanumeric (5 versus 5.5 bits).

- Josh Triplett
