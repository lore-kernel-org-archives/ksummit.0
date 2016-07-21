Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72279486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 11:19:25 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EBC4F1D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 11:19:24 +0000 (UTC)
Date: Thu, 21 Jul 2016 04:19:17 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160721111917.GA20006@x>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469097065.120686.124.camel@infradead.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 21, 2016 at 11:31:05AM +0100, David Woodhouse wrote:
> On Thu, 2016-07-21 at 07:59 +0200, Hannes Reinecke wrote:
> > > If we do all this stuff, can we also try to clean up earlyprintk a
> > > bit?  The whole earlyconsole mechanism is a mess, and switching over
> > > to the non-early console is only somewhat functional.  I'd love to see
> > > this all simplified: before there's any console at all available, just
> > > buffer messages.  Then, when a console shows up, write the buffer out.
> > > Then earlyprintk can work just like regular printk.
> > > 
> > Begging the question how one would debug failures during that time.
> > The current earlyprintk stuff is at least able to print out _something_,
> > so that you have some idea what went wrong.
> > Without that things will become _really_ hard during board bringup.
> 
> No, you don't actually *delay* the console output. You still register
> the console as soon as you physically can, but you just don't have all
> that nasty special-casing of the "earlyprintk" nonsense; you just make
> sure the standard console output is capable of working as early as you
> need it to.

I've run into various cases where "console=ttyS0,115200" didn't produce
any serial output at all, but "earlyprintk=ttyS0,115200,keep" did.
Perhaps "earlyprintk" expects less from the serial port than "console"
does, but that suggests that the differences involve more than just how
early the driver can work.
