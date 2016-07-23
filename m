Return-Path: <alexei.starovoitov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18BFE2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 23:09:37 +0000 (UTC)
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C74AF12F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 23:09:36 +0000 (UTC)
Received: by mail-pa0-f51.google.com with SMTP id pp5so49741932pac.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 16:09:36 -0700 (PDT)
Date: Sat, 23 Jul 2016 16:09:34 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20160723230932.GA31398@ast-mbp.thefacebook.com>
References: <15569.1469184060@warthog.procyon.org.uk>
	<5792414F.5040902@de.ibm.com>
	<1469203184.120686.212.camel@infradead.org>
	<1469306149.8568.209.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1469306149.8568.209.camel@kernel.crashing.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 24, 2016 at 06:35:49AM +1000, Benjamin Herrenschmidt wrote:
> On Fri, 2016-07-22 at 16:59 +0100, David Woodhouse wrote:
> > I'm not sure Linus proposed that. I certainly did, many times.
> > 
> > With the work I put in to make use of __builtin_bswapXX() we do have
> > a
> > *certain* amount of the functionality that full endianness
> > attribution
> > would give us — the compiler can see and optimise certain
> > load/mask/save operations, and can use movbe and equivalent
> > instructions.

both llvm and gcc already optimize load + builtin_bswap into movbe on x64.

> > But a full implementation that let us just do assignment without
> > jumping through the hoops might still be nice.
> 
> One advantage of that is it might allow to work around a limitation
> with the current __biultin_bswap* and READ_ONCE/ACCESS_ONCE (such
> as used in gup).
> 
> The ACCESS_ONCE magic pretty much forces the compiler to separate
> the load from the swap, it thus prevents us from using the byteswapped-
> load instructions that we have on powerpc, thus degrading to a load
> followed by the 5 or 6 instructions (with back-to-back dependencies)
> needed to do the swap.

yeah, looks like volatile somehow preventing gcc to optimize it,
but that's a compiler missing an optimization. New 'bigendian' attribute
for a variable is not going to help this situation.
