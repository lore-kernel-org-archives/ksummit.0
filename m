Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6311889E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 15:33:47 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C78F7A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 15:33:45 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 30 Aug 2016 17:33:36 +0200
References: <20160826193331.GA29084@jra3> <20160829115018.GA16353@kroah.com>
	<20160830095737.GC18605@lukather>
In-Reply-To: <20160830095737.GC18605@lukather>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit
Message-Id: <201608301733.36149.arnd@arndb.de>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 30 August 2016, Maxime Ripard wrote:
> On Mon, Aug 29, 2016 at 01:50:18PM +0200, Greg KH wrote:
> > > On Sat, Aug 27, 2016 at 06:26:55PM +0200, Greg KH wrote:
> > > > Someone in a reddit thread about this email conversation said, in trying
> > > > to quote Linus, something along the lines of "the nuclear option should
> > > > have been done to Allwinner a long time ago".  And that proved my point
> > > > exactly.  Allwinner was a pain for a very long time.  But as developers,
> > > > and through the efforts of a lot of people at the Linux Foundation and
> > > > Linaro, Allwinner is now a contributor to the kernel, and actively
> > > > sponsors developers to write GPLv2 code for their chips.
> > > 
> > > While I generally agree with you on this topic, this is simply not
> > > true.
> > > 
> > > As the Allwinner SoC maintainer, I never received any patch from
> > > someone either from the Linux Foundation or Linaro. And to the best of
> > > my knowledge, I'm not aware of anyone being paid by Allwinner to work
> > > on the kernel.
> > 
> > You wouldn't have gotten anything from the LF (we don't have many
> > developers as you know), but I thought that Allwinner was part of
> > Linaro, is that not correct?
> 
> They used to yes. However, even though I don't really how Linaro works
> internally, my understanding was that being part of Linaro doesn't
> imply that you have engineers assigned. It's probably related to some
> level of membership.

Correct, the higher membership levels require assigning engineers,
but that doesn't mean these engineers work on upstreaming code
of that member company, or even working on the kernel.

We do provide all kinds of help to member companies and engineers
to learn everything about upstreaming their code and working with
the communities, and a lot of member companies use that help, but
other members don't.

> Anyway, like I was saying, no one from Linaro ever contributed
> something meaningful (except some cross-tree patches, and the usual
> "maintainance" patches).

I'm not surprised at all. Most of the kernel work we do in
Linaro is intentionally cross-platform (so it benefits all members
equally), or it is done on those platforms that the members decide
are important upstream.

	Arnd
