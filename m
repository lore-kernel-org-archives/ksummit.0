Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CB71CA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:53:24 +0000 (UTC)
Date: Mon, 12 May 2014 11:53:20 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Levente Kurusa <levex@linux.com>
Message-ID: <20140512155320.GW12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140511171824.GB2527@linux.com>
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

On Sun, May 11, 2014 at 07:18:24PM +0200, Levente Kurusa wrote:
> Hi,
> 
> On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
> > On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
...
> > > Not sure about how would we create the bugzilla entry? I mean, which
> > > section, urgency, etc. how would we decide on those solely based on
> > > the OOPS? Or should we ask the user to fill it out?
> > 
> > Filling a complex form on a handheld device can be pretty tedious. A two steps 
> > procedure that would allow entering long text on a real computer could be an 
> > interesting option.
> > 
> 
> Makes sense.
> 
> What about only asking for an email address and then sending them
> an automated message with a link where they can continue to add more
> information to the report? (i.e. fill out the bugzilla)

Agree.

> I guess we should also be careful with the bugzilla. We really don't
> want propertiary driver crashes added to the bugzilla automatically.

Correct, but the data is still worth recording.

> Nor do we want the same oops added twice, right?

We don't want two bugzilla entries, but we do want to know how many
times this event has happened.

> How would we differentiate between the two - essentially the same -
> oopses?

Hmm, oops cookie?  hex string of 32/64 bits read off of the entropy
pool?  This would give us an accurate number of events even if a user
scans multiple times.

thx,

Jason.
