Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A73B9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 12:44:19 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8DE4B15F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 12:44:18 +0000 (UTC)
Received: by mail-oi0-f50.google.com with SMTP id l72so161019792oig.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 05:44:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <15986.1469186392@warthog.procyon.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<15986.1469186392@warthog.procyon.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Jul 2016 14:44:17 +0200
Message-ID: <CACRpkdZGaY2zCYMufsqextP=izu-iYMNC3JJwtV4ZNQM7V8MEQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 22, 2016 at 1:19 PM, David Howells <dhowells@redhat.com> wrote:

I'm just gonna hijack this to ask a question...

> I currently maintain a set of 26 cross-compilers (ppc64 is a box of symlinks)
> for building the kernel and bootloaders with gcc on Fedora:
(...)
>         gcc-arm-linux-gnu.x86_64                     5.3.1-2.fc23   updates

I've tested this thing and it works flawlessly with the kernel.
Also U-boot recently supplies its own div64 routine and dropped
the dependency on libgcc.a (IIRC).

So it works, but still of course this thing is there:

rpm -ql gcc-arm-linux-gnu-6.1.1-1.fc24.x86_64
(...)
/usr/lib/gcc/arm-linux-gnueabi/6.1.1/libgcc.a

Also this:

/usr/lib/gcc/arm-linux-gnueabi/6.1.1/crtbegin.o
/usr/lib/gcc/arm-linux-gnueabi/6.1.1/crtbeginS.o
/usr/lib/gcc/arm-linux-gnueabi/6.1.1/crtbeginT.o
/usr/lib/gcc/arm-linux-gnueabi/6.1.1/crtend.o
/usr/lib/gcc/arm-linux-gnueabi/6.1.1/crtendS.o
/usr/lib/gcc/arm-linux-gnueabi/6.1.1/crtfastmath.o

I suspect these things are implicitly compiled for one and only one ISA?
I honestly don't know how to even check which one. Does it use
hardfloat? Or has this problem of targetting several ISAs with a .a
file been fixes since I looked at it last?

I need to cross-compile ARMv4, ARMv5, ARMv6, ARMv7 and
ARMv8 for my systems. (Sorry for all old crap I'm keeping it's just
my job...)

That ABI problem is then manifolded if I would want to do anything
userspace, so I keep a whole range of tailored cross compilers and
prebuilt C libraries around that I know "just work", but I guess will
grow increasingly hard to maintain and it feels pretty unelegant at
times.

Is there a way for a distribution to provide a proper set of
ISA-specific stuff alongside a crosscompiler, if the crosscompiler
supports several different ISAs, like the ARMvN variants do?

Yours,
Linus Walleij
