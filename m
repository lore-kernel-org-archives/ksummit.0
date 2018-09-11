Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BBA121076
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 01:01:40 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 58AB963D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 01:01:40 +0000 (UTC)
Date: Tue, 11 Sep 2018 02:01:37 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180911010137.GO19965@ZenIV.linux.org.uk>
References: <20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180911104920.10579e62@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911104920.10579e62@canb.auug.org.au>
Sender: Al Viro <viro@ftp.linux.org.uk>
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

On Tue, Sep 11, 2018 at 10:49:20AM +1000, Stephen Rothwell wrote:
>      * submitted under GPL v2 (or later) and include the Contributor's
>         Signed-off-by,

Incidentally, the wording is a bit off here.  "Compatible with GPL v2" is
the real test - at least I bloody well hope so, since by default my stuff
is v2-only, when it's non-trivial enough to be copyrightable in the first
place.  I do *not* give permission to distribute it under the terms of
any later versions of GPL, which is what "v2 or later" usually refers to.
