Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A66E4BD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:14:08 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DBF9542D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:14:07 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180503191405.GC23467@1wt.eu>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<20180503185529.GB15247@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503185529.GB15247@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Thu, 03 May 2018 19:14:08 -0000

On Thu, May 03, 2018 at 11:55:29AM -0700, Greg KH wrote:
> Don't care about me for stuff like this.  Fix it correctly and I'll
> worry about any dependancy issues later :)

For me the real value of the Fixes header is to let the person doing
the backport know if they must search when the patch looks irrelevant
at first glance. On old kernels more than half of the patches don't
apply and sometimes you really do not know if the code moved somewhere
else or if it was not there. Fixes gives some clues what to look for
and sometimes about an exact commit to get more details. I've been
quite happy with those mentioning only "3.2+" in it just like those
copy-pasting the commit ID is pretty fine as well. The former making it
easier to skip a useless patch, the latter providing more information.
But in my opinion these must not add burden on the committer. Even some
vague information like "4.4, maybe 4.2" or "oldest one having subsystem
foo" is extremely helpful there.

The dependency chain however matters less because once you start fighting
with a small patch set for 1 hour you can spend an extra minute testing
several combinations or figuring the dependencies in mainline.

Willy
