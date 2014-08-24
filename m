Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F23992B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 19:16:20 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F48720243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 19:16:20 +0000 (UTC)
Date: Sun, 24 Aug 2014 15:16:18 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20140824191618.GB12769@titan.lakedaemon.net>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<20140823081245.GA16949@localhost>
	<CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
	<CAMuHMdUJhghbOS0JiMidxLjNXe-Gofheb0A1pB_8kJemtak-6w@mail.gmail.com>
	<53FA30CC.9020404@roeck-us.net>
	<CAOesGMi31DbacOdrCidzLLs04whnzdkoQFhjaTZwFgyiVd8nng@mail.gmail.com>
	<20140824191415.GA12769@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140824191415.GA12769@titan.lakedaemon.net>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 24, 2014 at 03:14:15PM -0400, Jason Cooper wrote:
> On Sun, Aug 24, 2014 at 11:47:47AM -0700, Olof Johansson wrote:
> ...
> > I have traditionally been using Segher's buildall
> > (http://git.infradead.org/users/segher/buildall.git) to build and
> > populate toolchains locally, and that will no longer be enough. Unless
> > someone convinces Segher to improve his scripts, of course. :)
> 
> fwiw, I've been using Mike Frysinger's crossdev utility on gentoo for
> many years.  While it's tied closely to portage (can't live without it),
> it has the advantage of automatic toolchain updates during regular
> system updates.

I should also mention that I've reliably used it for years to make
minimalist rootfs's, either initrds, or rootfs's on flash.  Which is why
I thought it was relevant to the conversation.

> Currently, I have the following on my build system:
> 
>   aarch64-unknown-linux-gnu-
> 
>   arm-none-linux-gnueabi-
>   arm-none-linux-uclibceabi-
> 
>   powerpc-none-linux-gnueabi-
> 
>   mips-none-linux-gnueabi-
>   mips-pc-linux-gnu-
> 
>   s390-none-linux-gnueabi-
> 
>   i586-pc-linux-gnu-
>   x86_64-pc-linux-gnu-
> 
> Admittedly, I use the arm- one the most.
> 
> A while ago I looked at adding crossdev to gentoo-prefix (install gentoo
> inside another OS, like OS X, or debian) which would then make the
> utility much more useful.  But I never found the time to make it a
> reality. :(

thx,

Jason.
