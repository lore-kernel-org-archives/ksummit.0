Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ACAFBFCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Jul 2018 14:50:59 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 147CB76E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Jul 2018 14:50:58 +0000 (UTC)
Date: Sun, 15 Jul 2018 10:50:47 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180715145047.GA6179@thunk.org>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm> <20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
	<20180715085403.GA21992@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180715085403.GA21992@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Pavel Machek <pavel@ucw.cz>, Willy Tarreau <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 15, 2018 at 10:54:03AM +0200, Greg KH wrote:
> Pavel, I "love" how you fail to point out that you are responding to a 2
> month old thread :(

And apologies for releasing some ancient messages that were caught in
the ksummit-discuss's moderation queue.  I hadn't been paying
attention to the fact that there had been some messages caught there,
and I figured it might be some people on the ksummit-discuss list who
might have missed the context of that old thread.

That being said, it *was* beaten to death two months ago, so people
who are replying might want to keep that in mind.  :-)

> And as always, you have a choice:
> 	- if you don't like stable kernels, don't run them.

And if you don't like stable kernels, you can pay $$$ to an enterprise
distro kernel.  Although you might find they aren't that much better
at the whole fixing bugs versus introducing regressions tradeoff.
Indeed, because there are crazy people who insist on using 3.18
kernels *and* getting support for the latest hardware, you may find
that it's somewhat worse; not to mention not necessarily being able to
get all of the fixes for the cache-related security problems getting
found...

						- Ted
