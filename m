Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 186E84BCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:41:04 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BCFA832
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:41:01 +0000 (UTC)
Date: Mon, 1 Jul 2019 17:40:58 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: David Howells <dhowells@redhat.com>
In-Reply-To: <20263.1561993564@warthog.procyon.org.uk>
Message-ID: <alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 1 Jul 2019, David Howells wrote:

> Shuah Khan <skhan@linuxfoundation.org> wrote:
> 
> > In a recent patch discussion, I learned that some maintainers would like
> > to see patch version changes in the commit log.
> > 
> > I went looking in the git log and found a handful of recent commits with
> > "Changes since" type information in the commit logs. It appears to be
> > maintainer preference and a recent trend.
> > 
> > I see the value in including the information. It can be informative
> > and valuable for future work in the area.
> > 
> > Is this something that we would like to see in all commits going forward? If
> > so, updating submitting patch documentation and making
> > sure the version information evolves from "informal" to more formal
> > nature that fits in with the commit logs would be helpful.
> > 
> > Making sure it doesn't get out of hand and commit logs don't
> > become too long to be useful would also be helpful.
> 
> I put the changelog in the cover note (ie. patch 0) since if there's more than
> one patch there may well be changes that span multiple patches.  Whoever's

That's a pain. I'd have to go back and forth to find that information. If
the v$N info is in the patch itself, then it clearly shows what the scope
of the change is in that particular patch, e.g. just fixing up the typo or
some structural change.

And no, this is not about convenience for the submitter. It's about
convenience for the reviewer/maintainer. The goal must be to make their
life as simple as possible not the other way round.

> doing the merge could include this in the merge description.

That does not help for patch series which are applied directly from mail.

Thanks,

	tglx
