Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 155D9ADE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:24:56 +0000 (UTC)
Date: Mon, 12 May 2014 13:24:49 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Levente Kurusa <levex@linux.com>
Message-ID: <20140512172449.GB12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<20140512155320.GW12708@titan.lakedaemon.net>
	<20140512164921.GB3509@linux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140512164921.GB3509@linux.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 06:49:21PM +0200, Levente Kurusa wrote:
> On Mon, May 12, 2014 at 11:53:20AM -0400, Jason Cooper wrote:
> > On Sun, May 11, 2014 at 07:18:24PM +0200, Levente Kurusa wrote:
...
> > > I guess we should also be careful with the bugzilla. We really don't
> > > want propertiary driver crashes added to the bugzilla automatically.
> > 
> > Correct, but the data is still worth recording.
> > 
> > > Nor do we want the same oops added twice, right?
> > 
> > We don't want two bugzilla entries, but we do want to know how many
> > times this event has happened.
> > 
> > > How would we differentiate between the two - essentially the same -
> > > oopses?
> > 
> > Hmm, oops cookie?  hex string of 32/64 bits read off of the entropy
> > pool?  This would give us an accurate number of events even if a user
> > scans multiple times.
> 
> Hmm, I've been wondering about this too. I guess 32 bits are enough to
> differentiate between oopses, and adding this to the QR code is
> relatively easy as well.

I was thinking directly in the oops.  Never underestimate the tenacity
of a user.  You'll get the qr-code scan, _and_ a bug report filed with a
grainy picture.

> What I wonder is how could we get the server back-end to not
> allow the same oopses from bad users.
> 
> Having a link like:
> 
> oops.kernel.org/submit_oops.php?qr=$ENTROPY$BASE64DATA
> 
> would mean that malicious users could edit the $ENTROPY part and
> hence effectively report the same oops twice. Maybe some checksum?
> Or will it be too much for an already damaged kernel?

encoding it in the oops text makes this a lot more difficult.  Plus,
what is the goal of the attacker in this scenario?

thx,

Jason.
