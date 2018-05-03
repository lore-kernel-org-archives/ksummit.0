Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C4996407
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 02:30:57 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CF2F1707
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 02:30:56 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180503023052.GA12856@1wt.eu>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<ed65dc49-dad0-21a1-676c-f9ba43ba5c6c@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed65dc49-dad0-21a1-676c-f9ba43ba5c6c@roeck-us.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
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
Date: Thu, 03 May 2018 02:30:57 -0000

On Wed, May 02, 2018 at 05:38:32PM -0700, Guenter Roeck wrote:
> > Because if that last is the case, then the prescription is very simple
> > and not controversial --- bug fixes found post -rc4 should be held to
> > the next merge window.
> > 
> 
> Holding up even fixes for severe bugs for 4-6 weeks ? Seriously, that is
> unrealistic. Holding up the fix for the next SpeckHammer because it was not
> ready before -rc4 ? I don't think so.

That's exactly what I explained earlier in this thread, it will actually
make the resulting kernels even worse as soon as there is less than 100%
regression (which is the case, since some fixes are valid). Postponing
valid fixes because some of them might be wrong is a bad idea. We need
to trust the developer regarding the test coverage and the developer has
to become trusted by openly indicating the type of testing run on the
patch. From there it will become easier to decide whether to revert a
whole patch set after a few failed fixes, or to take a few more fixes
in hopes that ultimately everything will be good.

Willy
