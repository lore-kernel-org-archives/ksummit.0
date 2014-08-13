Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8672AFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 22:45:12 +0000 (UTC)
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 344C520281
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 22:45:12 +0000 (UTC)
Received: by mail-pd0-f174.google.com with SMTP id fp1so452490pdb.33
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 15:45:12 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 13 Aug 2014 15:45:07 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20140813224507.GA29606@roeck-us.net>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
 reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 13, 2014 at 09:53:58PM +0200, Geert Uytterhoeven wrote:
> On Wed, Aug 13, 2014 at 8:07 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> > Major problem I see is that many architecture maintainers don't seem to care
> > about "make allmodconfig" and/or "make allyesconfig", meaning there is no
> > simple means to at least compile-test all code that _can_ be enabled for
> > a given architecture. And don't even mention "make randconfig".
> 
> There are still architectures that don't support multi-platform kernels, which
> is a requirement for good coverage.
> 
This is not about creating a working kernel, but for compile tests. I have
separate configurations to test working kernels. But I would prefer to build,
say, no more than half a dozen arm configurations instead of the 40 in my
current build list.

> An alternative could be to have several allmodconfig builds, one for each
> subset that can't be built-in together, like
> 
> make CONFIG_SUBSET_FOO=y allmodconfig
> make CONFIG_SUBSET_BAR=y allmodconfig
> ...
> 
Maybe something like 

make PCI=n allmodconfig
make GPIOLIB=n allmodconfig

which would let me disable key options selectively so I can improve compile
coverage without having to go through all configurations (or randconfig).

> > Instead of CONFIG_TINY or similar, I would find it more important to get
> > allmodconfig and/or allyesconfig to work for as many architectures as
> > possible, and to create some means to help catching errors of the
> > kind detected by randconfig, only in a more deterministic way.
> 
> The few allmodconfig/allyesconfig builds on
> kisskb.ellerman.id.au/kisskb/matrix/ are actually not in such a bad shape.
> Shall more be added?
> 
I don't think there are any you could add, at least none which actually build.
arm:allmodconfig was quite useful, but it has been broken since 3.10 or so,
and I don't think it will ever get fixed.

> You also only build some of the allmodconfigs?
> 
Never "only". I always also build defconfig, plus at least sometimes a couple
of additional configurations (if available) to improve coverage of conditional
functionality.

Guenter
