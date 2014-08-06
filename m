Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6A3F7B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 14:45:54 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DA491FDD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 14:45:54 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by gateway1.nyi.internal (Postfix) with ESMTP id 9154121EB5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 10:45:53 -0400 (EDT)
Date: Wed, 6 Aug 2014 07:45:19 -0700
From: Greg KH <greg@kroah.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20140806144519.GB14247@kroah.com>
References: <18667.1407324523@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <18667.1407324523@warthog.procyon.org.uk>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Should .c files be discouraged from
 #including UAPI headers directly?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 06, 2014 at 12:28:43PM +0100, David Howells wrote:
> Is it okay for ordinary .c files to #include uapi/ files directly?
> 
> 	warthog>git grep 'include.*uapi/' -- \*.c
> 	arch/arm/kernel/psci.c:#include <uapi/linux/psci.h>
> 	arch/arm/kernel/psci_smp.c:#include <uapi/linux/psci.h>
> 	arch/arm64/kernel/psci.c:#include <uapi/linux/psci.h>
> 	arch/blackfin/kernel/setup.c:#include <uapi/linux/cramfs_fs.h>
> 	arch/mips/bcm63xx/boards/board_bcm963xx.c:#include <uapi/linux/bcm933xx_hcs.h>
> 	arch/mips/pci/pci-virtio-guest.c:#include <uapi/asm/bitfield.h>
> 	arch/x86/vdso/vclock_gettime.c:#include <uapi/linux/time.h>
> 	arch/xtensa/kernel/syscall.c:#include <uapi/asm/unistd.h>
> 	drivers/gpu/drm/exynos/exynos_drm_fb.c:#include <uapi/drm/exynos_drm.h>
> 	drivers/infiniband/core/sa_query.c:#include <uapi/linux/if_ether.h>
> 	drivers/mtd/ar7part.c:#include <uapi/linux/magic.h>
> 	...
> 
> or should they be encouraged to #include the non-uapi variant instead, eg:
> 
> 	#include <linux/psci.h>
> 
> rather than:
> 
> 	#include <uapi/linux/psci.h>
> 
> given that appropriate -I flags are supplied such that they'll fall back to
> the UAPI header if a kernel-internal header does not exist?

Why does it matter?  What works "better" if a .c file doesn't include
the uapi.h file?

thanks,

greg k-h
