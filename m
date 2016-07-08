Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC57C9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Jul 2016 23:21:54 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id F10D4146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Jul 2016 23:21:53 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jiri Kosina <jikos@kernel.org>
Date: Sat, 09 Jul 2016 01:19:53 +0200
Message-ID: <3875641.cvfvOBftGF@vostro.rjw.lan>
In-Reply-To: <alpine.LNX.2.00.1607082030470.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082030470.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] cleaning up kthread freezer hell,
	part 2
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Saturday, July 09, 2016 12:31:33 AM Jiri Kosina wrote:
> On last year's kernel summit, I've been talking about why I consider 
> kthread freezer harmful and why it ultimately should be removed. LWN 
> coverage of that session is here:
> 
> 	https://lwn.net/Articles/662703/
> 
> During the past year, I've invested a bit of a time into actually looking 
> deeper into the dark corners of kernel sources to see how kthread freezer 
> is used throughout the codebase, with the intent to ultimately fix all the 
> buggy places. While doing that, I was petrified by two facts:
> 
> - there are a *lot* of places where kthread freezer is used in a 
>   completely buggy (or useless) way
> 
> - one of the obstacles fixing it are maintainers who actually don't 
>   understand the purpose of the kthread freezer (the usual pattern is that 
>   the main kthread loop has been copy/pasted from different code, which 
>   already used freezer, and so disease spreads)
> 
> Therefore I'd propose a v2 of the last year's session; first summarizing 
> the horrible experience I've done on this kthread freezer journey, and as 
> a followup, try to (re-)explain the issue and the way I think it should be 
> resolved.

Yes, please.

Let me know if/how I can help.

> The idea is to get as much coverage among high-profile maintainers as 
> possible, in a hope that this will result in ultimate tree-wide cleanup of 
> the current mess. That's why I propose this as a core topic rather than 
> tech topic, although it might sound like a rather bordeline one.

I guess that first needs to be "core" so it can become "tech" later when
everybody is on the same page in general.

Thanks,
Rafael
