Return-Path: <bkuhn@sfconservancy.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3F282258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 17:19:53 +0000 (UTC)
Received: from pine.sfconservancy.org (pine.sfconservancy.org [162.242.171.33])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9219F14E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 17:19:52 +0000 (UTC)
From: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
To: ksummit-discuss@lists.linuxfoundation.org
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<1472225020.3680.8.camel@localhost.localdomain>
	<1472229438.5189.79.camel@HansenPartnership.com>
	<1472231998.3680.18.camel@localhost.localdomain>
	<20160827154320.GA27132@kroah.com>
Date: Sat, 27 Aug 2016 10:14:45 -0700
In-Reply-To: <20160827154320.GA27132@kroah.com> (Greg KH's message of "Sat, 27
	Aug 2016 17:43:20 +0200")
Message-ID: <87r39arv5m.fsf@ebb.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Greg KH wrote at 08:43 (PDT):
> [CCFinder is a] much different tool than what James was referring to.  The
> work that the LF has been doing is not based on CCFinder, and (in my
> opinion) is much more powerful and provides much more information about
> attribution of work and the proof of where all code changes came from.

It's really tough to know what this new tool is based on, because it's not
Open Source and Free Software (not yet anyway).  It's a tool that's been
presented in talks, but the data and code behind it remains hidden.

Both I and Karen have talked extensively on multiple occasions with dmg,
the tool's author.  He verified for me explictly that CCFinderX remains
indeed state-of-the-art (and still really hard to install ;).  He
indicated that his system, while it may or may not using CCFinderX's code
directly [0], has technology that's roughly the same.  Anyone who has worked
with CCFinderX and reviewed dmg's talks can see the obvious similarity.

The key new contribution it sounds like dmg has made is data curation.
>From his verbal description, it sounds like dmg has done a really excellent
job reconstructing the history of contributions to Linux that don't appear
directly in Git.  I'm excited to (eventually) see his data!

In April, I of course asked dmg to make the tool and the data available
publicly under an Open Source and Free Software license, and he said he will
do it eventually, but for the moment only his University team and the Linux
Foundation (as funders of the work) have access to it, and they aren't
willing to share their software and knowledge at the moment with others.

[0] dmg was cagey on all this because he's an academic and has not yet had
    the work published academically, and he lives under a publish-or-perish
    regime.  I'm sympathetic; he's between a rock and hard place.  Indeed,
    I've been looking lately into how unfriendly CS academia still remains to
    Open Source and Free Software that's developed in public -- and it's
    still as bad as when I was in graduate school.  I had so hoped it'd
    gotten better.
-- 
Bradley M. Kuhn
President & Distinguished Technologist of Software Freedom Conservancy
========================================================================
Become a Conservancy Supporter today: https://sfconservancy.org/supporter
