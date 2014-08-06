Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82F414D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 11:28:48 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3DA491FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 11:28:48 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <18666.1407324523.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Aug 2014 12:28:43 +0100
Message-ID: <18667.1407324523@warthog.procyon.org.uk>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>
Subject: [Ksummit-discuss] Should .c files be discouraged from #including
	UAPI headers directly?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Is it okay for ordinary .c files to #include uapi/ files directly?

	warthog>git grep 'include.*uapi/' -- \*.c
	arch/arm/kernel/psci.c:#include <uapi/linux/psci.h>
	arch/arm/kernel/psci_smp.c:#include <uapi/linux/psci.h>
	arch/arm64/kernel/psci.c:#include <uapi/linux/psci.h>
	arch/blackfin/kernel/setup.c:#include <uapi/linux/cramfs_fs.h>
	arch/mips/bcm63xx/boards/board_bcm963xx.c:#include <uapi/linux/bcm933xx_h=
cs.h>
	arch/mips/pci/pci-virtio-guest.c:#include <uapi/asm/bitfield.h>
	arch/x86/vdso/vclock_gettime.c:#include <uapi/linux/time.h>
	arch/xtensa/kernel/syscall.c:#include <uapi/asm/unistd.h>
	drivers/gpu/drm/exynos/exynos_drm_fb.c:#include <uapi/drm/exynos_drm.h>
	drivers/infiniband/core/sa_query.c:#include <uapi/linux/if_ether.h>
	drivers/mtd/ar7part.c:#include <uapi/linux/magic.h>
	...

or should they be encouraged to #include the non-uapi variant instead, eg:

	#include <linux/psci.h>

rather than:

	#include <uapi/linux/psci.h>

given that appropriate -I flags are supplied such that they'll fall back t=
o
the UAPI header if a kernel-internal header does not exist?

David
