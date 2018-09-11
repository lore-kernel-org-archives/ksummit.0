Return-Path: <SRS0=zQUY=LZ=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 580A81418
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:45:42 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB63076D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:45:41 +0000 (UTC)
Date: Tue, 11 Sep 2018 14:45:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180911144538.3ceecd8d@vmware.local.home>
In-Reply-To: <20180911170212.GC8284@roeck-us.net>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 11 Sep 2018 10:02:12 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> FWIW, for the most part I stopped reporting issues with -next after some people
> yelled at me for the 'noise' I was creating. Along the line of "This has been
> fixed in branch xxx; why don't you do your homework and check there", with
> branch xxx not even being in -next. I don't mind "this has already been
> reported/fixed", quite the contrary, but the "why don't you do your homework"
> got me over the edge.

A bug reporter should never be yelled at. The correct response should
be "Thank you for the report, but we have already fixed that bug in XYZ
branch, would you mind testing that?"

That's how I respond to such reports.

I've been told that yelling is never appropriate (although I may not
totally agree with that statement), but nasty messages to people
reporting bugs to your code (regardless if it's fixed or not someplace
else) is totally uncalled for.

-- Steve
