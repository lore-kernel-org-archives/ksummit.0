Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7DE2D6B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 22:56:18 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C4838466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 22:56:17 +0000 (UTC)
Date: Sun, 7 Oct 2018 23:56:13 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20181007225613.GZ32577@ZenIV.linux.org.uk>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	LKML <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 08, 2018 at 08:25:35AM +1000, Dave Airlie wrote:

> This isn't a legally binding license or anything, but departing from
> the upstream wording makes it tricker to merge new upstream versions
> if they are considered appropriate.

Nicely done, that - gotta love the passive voice use.  Considered appropriate
*by* *whom*?

Anyway, upstream clearly is a poor fit for Linus kernel community structure
- the use of open lists, amount of subprojects, the length of transmission
chains into the mainline, total amount of contributors, amount of people
elsewhere in the project with occasional forays into any given area, etc.
And IIRC the CoC upstream's opinion was that it wouldn't fit.

We can surround it with "explanations" until we get something that more or
less fits, but then we'd need to reanalyse them every time an upstream
change gets merged.  And the lack of textual conflicts is not a good thing
in such situations, obviously.
