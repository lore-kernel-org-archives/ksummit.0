Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17808258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 14:42:28 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7BCD1ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 14:42:27 +0000 (UTC)
Date: Sun, 10 Jul 2016 10:42:24 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20160710144224.GF26097@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<CAOesGMgL8AD+_uW+cD83ZLbnc3OiahfzJx6hhg1XTCyzgwZecQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOesGMgL8AD+_uW+cD83ZLbnc3OiahfzJx6hhg1XTCyzgwZecQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 09, 2016 at 11:19:39PM -0700, Olof Johansson wrote:
> 
> The in-house developers on a certain subsystem didn't trust the
> upstream maintainers to not regress their drivers -- in particular
> they had seen some painful regressions on older chipsets when newer
> hardware support was picked up. Esoteric bugs that had been fixed with
> the help of the support team weren't folded in properly in the
> upstream sources, or when they did they looked sufficiently different
> that when -stable came around they didn't want to revert back to that
> version, or they weren't yet picked up for upstream and now other
> fixes were touching the same code and that seemed risky. They had a
> code base that worked for the use cases they cared about (with the fix
> applied that the support team had provided), and very little interest
> in risking a regression from switching to the upstream version.

Hrm.  That's interesting color commentary, thanks.  This won't help
for those devices that are't using BSP kernels from SOC vendors, but
for those platforms where kernels from vendors are available, do you
know off-hand if they are tracking -stable?  Because if they are,
presumably at least the SOC vendors would have the capability of doing
the necessary testing.

OTOH, the problem with that is once the SOC vendors have stopped
selling a particular chip version, they probably don't have any
interest in continuing to do QA for stable kernels for that particular
SOC set.  So I'm guessing the answer is "no", it won't help, but I'd
love to be pleasantly surprised to the contrary.

> Instead, what the team started doing was using -stable as a source for
> fixes -- when looking at a bug, first think you looked for was to see
> if someone had touched that code/subsystem in -stable. It's not ideal
> in the sense that you have to hit the bug and someone has to look at
> it, but it was the state we ended up in on that project. It means
> -stable still has substanial value even though it's not merged
> directly.

The concern with this approach is that it won't necessary get security
fixes, since that implies that the product team is only looking at
-stable once a bug has been reported.

I could tell interested product teams that there are patches that will
prevent an maliciously crafted SD card from hanging a system or
causing a memory bounds overrun possibly leading to a privilege
escalation attack (for example), but that really doesn't scale, and
unless the maintainer uses out-of-band notification methods, how would
the product team know to look in -stable?

					- Ted
