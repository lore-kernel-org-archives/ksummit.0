Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73FB59C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:19:55 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE2651AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:19:54 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20160719173120.GE30372@sirena.org.uk>
References: <20160719173120.GE30372@sirena.org.uk>
	<87inw1skws.fsf@x220.int.ebiederm.org>
To: Mark Brown <broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15985.1469186392.1@warthog.procyon.org.uk>
Date: Fri, 22 Jul 2016 12:19:52 +0100
Message-ID: <15986.1469186392@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

Mark Brown <broonie@kernel.org> wrote:

> There's a push from certain quarters to move away from GCC to LLVM.  Not
> that these things are unachievable in LLVM but it's a thing.

I currently maintain a set of 26 cross-compilers (ppc64 is a box of symlinks)
for building the kernel and bootloaders with gcc on Fedora:

	gcc-aarch64-linux-gnu.x86_64                 5.3.1-2.fc23   updates
	gcc-alpha-linux-gnu.x86_64                   5.3.1-2.fc23   updates
	gcc-arm-linux-gnu.x86_64                     5.3.1-2.fc23   updates
	gcc-avr32-linux-gnu.x86_64                   5.3.1-2.fc23   updates
	gcc-bfin-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-c6x-linux-gnu.x86_64                     5.3.1-2.fc23   updates
	gcc-cris-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-frv-linux-gnu.x86_64                     5.3.1-2.fc23   updates
	gcc-h8300-linux-gnu.x86_64                   5.3.1-2.fc23   updates
	gcc-hppa-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-hppa64-linux-gnu.x86_64                  5.3.1-2.fc23   updates
	gcc-ia64-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-m32r-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-m68k-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-microblaze-linux-gnu.x86_64              5.3.1-2.fc23   updates
	gcc-mips64-linux-gnu.x86_64                  5.3.1-2.fc23   updates
	gcc-mn10300-linux-gnu.x86_64                 5.3.1-2.fc23   updates
	gcc-nios2-linux-gnu.x86_64                   5.3.1-2.fc23   updates
	gcc-powerpc64-linux-gnu.x86_64               5.3.1-2.fc23   updates
	gcc-ppc64-linux-gnu.x86_64                   5.3.1-2.fc23   updates
	gcc-s390x-linux-gnu.x86_64                   5.3.1-2.fc23   updates
	gcc-sh-linux-gnu.x86_64                      5.3.1-2.fc23   updates
	gcc-sh64-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-sparc64-linux-gnu.x86_64                 5.3.1-2.fc23   updates
	gcc-tile-linux-gnu.x86_64                    5.3.1-2.fc23   updates
	gcc-x86_64-linux-gnu.x86_64                  5.3.1-2.fc23   updates
	gcc-xtensa-linux-gnu.x86_64                  5.3.1-2.fc23   updates

These are gcc-6.1.1-based in fc24.  Can LLVM cover all of these, plus the
missing arches that gcc doesn't support yet?

David
