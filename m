Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B1D6256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:26:52 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E51319B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:26:52 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CACRpkdZGaY2zCYMufsqextP=izu-iYMNC3JJwtV4ZNQM7V8MEQ@mail.gmail.com>
References: <CACRpkdZGaY2zCYMufsqextP=izu-iYMNC3JJwtV4ZNQM7V8MEQ@mail.gmail.com>
	<87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<15986.1469186392@warthog.procyon.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <22234.1469194009.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Jul 2016 14:26:49 +0100
Message-ID: <22235.1469194009@warthog.procyon.org.uk>
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

Linus Walleij <linus.walleij@linaro.org> wrote:

> So it works, but still of course this thing is there:
> =

> rpm -ql gcc-arm-linux-gnu-6.1.1-1.fc24.x86_64
> (...)
> /usr/lib/gcc/arm-linux-gnueabi/6.1.1/libgcc.a

Some people really wanted libgcc libraries.  Even some kernel arches requi=
re
them.

> I suspect these things are implicitly compiled for one and only one ISA?
> I honestly don't know how to even check which one. Does it use
> hardfloat? Or has this problem of targetting several ISAs with a .a
> file been fixes since I looked at it last?
> =

> I need to cross-compile ARMv4, ARMv5, ARMv6, ARMv7 and
> ARMv8 for my systems. (Sorry for all old crap I'm keeping it's just
> my job...)

The arm- compiler is built with:

	CONFIG_FLAGS=3D"--with-tune=3Dcortex-a8 --with-arch=3Darmv7-a \
		--with-float=3Dhard --with-fpu=3Dvfpv3-d16 --with-abi=3Daapcs-linux"

I can probably add a --with-multilib-list=3D option to build multiple vari=
ants
as I do for sh and sh64:

	sh-*)
	    CONFIG_FLAGS=3D--with-multilib-list=3Dm1,m2,m2e,m2a,m2a-single,m4,m4-=
single,m4-single-only,m4-nofpu
	    ;;
	sh4-*)
	    CONFIG_FLAGS=3D--with-multilib-list=3Dm4,m4-single,m4-single-only,m4-=
nofpu
	    ;;

if someone tells me what they'd like to see on there.  In the sh case, thi=
s
gives me all of:

	/usr/lib/gcc/sh-linux-gnu/5.3.1/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/m2/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/m2e/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/m4-nofpu/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/m4-single-only/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/m4-single/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/m4/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m2/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m2a-single/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m2a/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m2e/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m4-nofpu/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m4-single-only/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m4-single/libgcc.a
	/usr/lib/gcc/sh-linux-gnu/5.3.1/mb/m4/libgcc.a

> That ABI problem is then manifolded if I would want to do anything
> userspace, so I keep a whole range of tailored cross compilers and
> prebuilt C libraries around that I know "just work", but I guess will
> grow increasingly hard to maintain and it feels pretty unelegant at
> times.

Yeah.  It's made more fun by the fact that if I want to do a general compi=
ler
SRPM that covers all the arches fully bootstrapped with C libraries, not e=
very
arch is supported by glibc, so I have to include uClibc as well for those
arches.

Take sh as mentioned above, that has at least 16 different potential
userspaces by the libgcc count.

> Is there a way for a distribution to provide a proper set of
> ISA-specific stuff alongside a crosscompiler, if the crosscompiler
> supports several different ISAs, like the ARMvN variants do?

It *ought* to be possible to build C libraries separately, given an availa=
ble
cross-compiler - except that the gcc build wants stuff from the C library
you're using.  Having talked to some gcc people about this before, IIRC, i=
t's
something that could be managed without - if someone's willing to do the w=
ork
to make gcc no longer require it.

David
