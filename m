Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1144325A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 19:44:59 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07A3AF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 19:44:57 +0000 (UTC)
Date: Tue, 1 May 2018 15:44:50 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180501194450.GD10479@thunk.org>
References: <20180501163818.GD1468@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180501163818.GD1468@sasha-vm>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 01, 2018 at 04:38:21PM +0000, Sasha Levin wrote:
>  - A merge window commit spent 50% more days, on average, in -next than a -rc
>    commit.

So it *used* to be the case that after the merge window, I would queue
up bug fixes for the next merge window.  Greg K-H pushed for me to
send them to Linus sooner, instead of waiting for the next merge
window.  TBH, it's actually easier for me to just wait until the next
merge window, but please understand that there are multiple pressures
on maintainers going on here, and the latest efforts to try to use
AUTOSEL is just the most recent pressure placed on maintainers.

The other thing is that when there is a regression users who are
testing linux-next want it fixed *fast*.  That's considered more
important to them than waiting for one, perfect patch, just to keep
AUTOSEL happy.

So please understand that when you say that maintainers *need* to do X
or Y, that there you are not the only one standing in line putting
pressures on maintainers saying they *need* to do something.  And
quite frankly, I consider keeping people who are nice enough to test
linux-next happy to be **far** more important than AUTOSEL.

Sorry.

						- Ted
