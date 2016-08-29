Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 455D5486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:31:33 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A36C387
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:31:32 +0000 (UTC)
Date: Mon, 29 Aug 2016 17:31:28 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Rik van Riel <riel@redhat.com>
Message-ID: <20160829213128.fr3enaeso6r5s2ki@thunk.org>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1472492553.32433.108.camel@redhat.com>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 29, 2016 at 01:42:33PM -0400, Rik van Riel wrote:
> 
> It is worth remembering why XFS, JFS, and RCU were made available
> only under the GPL, and not under eg. a BSD license.
> 
> Linux got access to that code because of the GPL's obligation
> that further improvements be made available to the whole community.
> 
> Companies like IBM and SGI started participating in Linux because
> they knew no competitor would run off with their code, improve it
> slightly, and offer a proprietary product for sale based it.
> 
> GPL compliance efforts keep that expectation alive, and may be a
> factor for new companies when deciding whether or not they can
> afford to release their code under the GPL.

If some competitor ran off with their code, companies like IBM and SGI
would be perfectly capable of suing their competitor.  As Linus has
observed, companies like IBM are prefectly capable of deciding whether
or not a lawsuit is in their interest, and aggressively pursuing legal
action when it's called for.

So I don't believe that compliance efforts are necessarily needed in
order for companies to feel comfortable donating large code bases such
as XFS or JFS.

Cheers,

						- Ted
