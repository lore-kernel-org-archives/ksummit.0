Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBE1A96
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:59:34 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F0791D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:59:34 +0000 (UTC)
Date: Fri, 17 Jul 2015 09:59:26 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20150717165925.GA1424@x>
References: <20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150717101151.5d5bc86d@lwn.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 17, 2015 at 10:11:51AM -0600, Jonathan Corbet wrote:
> On Thu, 16 Jul 2015 19:24:35 +0300
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > Seriously, what is the actual problem?  Who bites the heads off newbies
> > for sport?  I ask because the first patch submission is usually treated
> > with helpfulness and tolerance, at least where I've been on the cc list.
> 
> So, obviously, I was going for dramatic effect in my other posting.
> "Biting the heads off newbies" doesn't ordinarily happen.  I think the
> whole Nick episode has shown how tolerant we can be, actually.  The point
> I was trying to make is that there isn't one way to submit a patch to the
> kernel, there's a hundred ways to submit to various subsystems.
> 
> Over on linux-kernel, I just saw a newish developer being politely told
> that a patch was unacceptable because the local variable declarations
> were not in reverse-Christmas-tree order.  That's not in CodingStyle, and
> it's certainly not a universal rule in the kernel; it's just one of those
> things you have to know if you wander into certain scary neighborhoods.

That's the kind of thing that ought to be raised, politely, in response
to such a mail, pointing out that the kernel's coding style should be
universal to avoid making people deal with maintainer-specific
idiosyncrasies.  A few reminders of that from other kernel maintainers
couldn't hurt.

Such additional requirements don't seem onerous to the maintainer making
them, but add them up across all maintainers and you have a horrendous
mess.

- Josh Triplett
