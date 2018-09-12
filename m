Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56E40D53
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 09:04:10 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D9DA813A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 09:04:09 +0000 (UTC)
Date: Wed, 12 Sep 2018 12:03:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180912090357.4i3bvh5ioca7tfok@mwanda>
References: <CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
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
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911170212.GC8284@roeck-us.net>
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

On Tue, Sep 11, 2018 at 10:02:12AM -0700, Guenter Roeck wrote:
> FWIW, for the most part I stopped reporting issues with -next after some people
> yelled at me for the 'noise' I was creating. Along the line of "This has been
> fixed in branch xxx; why don't you do your homework and check there", with
> branch xxx not even being in -next. I don't mind "this has already been
> reported/fixed", quite the contrary, but the "why don't you do your homework"
> got me over the edge.
> 
> To even consider reporting issues in -next on a more regular basis, I'd like
> to see a common agreement that reporting such issues does not warrant being
> yelled at, even if the issue has been fixed somewhere or if it has already
> been reported. Otherwise I'll stick with doing what I do now: If something
> is broken for more than a week, I _may_ start looking at it if I have some
> spare time and/or need a break from my day-to-day work.

I ran into the same issue with static checker warnings.  I tried to make
it more obvious that my bug reports were basically automated.  I tried
to make the language a bit stilted and robotic.  Robots don't judge you
and it does no good to get angry with a robot.

The static checker people sometimes do send duplicate fixes.  But really
if people don't want that they should stop writing buggy code to begin
with.  I think everyone is used to getting duplicate warnings and
patches now maybe so they don't complain so much any more.  (to me).

The deal with using a different tree.  I do that for networking because
Dave Miller is a very busy maintainer, but for everyone else I just use
linux-next.  Some people have complained that they are special but all
the static checker devs assured them that they are not.  We are not
going to read the custom documentation for sending patches to their
git tree.  Unless they can script it so it works automatically for
everyone then, sorry.  I will still send them bug reports, but I'm not
going to send custom formatted patches.  Just give me Reported-by credit
and custom format it your own blasted self.  :)

regards,
dan carpenter
