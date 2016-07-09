Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3F8108D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 06:19:35 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EE778E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  9 Jul 2016 06:19:33 +0000 (UTC)
Date: Sat, 9 Jul 2016 08:19:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <3875641.cvfvOBftGF@vostro.rjw.lan>
Message-ID: <alpine.DEB.2.10.1607090819190.3236@hadrien>
References: <alpine.LNX.2.00.1607082030470.24757@cbobk.fhfr.pm>
	<3875641.cvfvOBftGF@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] cleaning up kthread freezer hell, part 2
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Sat, 9 Jul 2016, Rafael J. Wysocki wrote:

> On Saturday, July 09, 2016 12:31:33 AM Jiri Kosina wrote:
> > On last year's kernel summit, I've been talking about why I consider
> > kthread freezer harmful and why it ultimately should be removed. LWN
> > coverage of that session is here:
> >
> > 	https://lwn.net/Articles/662703/
> >
> > During the past year, I've invested a bit of a time into actually looking
> > deeper into the dark corners of kernel sources to see how kthread freezer
> > is used throughout the codebase, with the intent to ultimately fix all the
> > buggy places. While doing that, I was petrified by two facts:
> >
> > - there are a *lot* of places where kthread freezer is used in a
> >   completely buggy (or useless) way
> >
> > - one of the obstacles fixing it are maintainers who actually don't
> >   understand the purpose of the kthread freezer (the usual pattern is that
> >   the main kthread loop has been copy/pasted from different code, which
> >   already used freezer, and so disease spreads)
> >
> > Therefore I'd propose a v2 of the last year's session; first summarizing
> > the horrible experience I've done on this kthread freezer journey, and as
> > a followup, try to (re-)explain the issue and the way I think it should be
> > resolved.
>
> Yes, please.
>
> Let me know if/how I can help.

Likewise.

julia

>
> > The idea is to get as much coverage among high-profile maintainers as
> > possible, in a hope that this will result in ultimate tree-wide cleanup of
> > the current mess. That's why I propose this as a core topic rather than
> > tech topic, although it might sound like a rather bordeline one.
>
> I guess that first needs to be "core" so it can become "tech" later when
> everybody is on the same page in general.
>
> Thanks,
> Rafael
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
