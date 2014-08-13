Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 635CCAFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 20:06:35 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7FE292038C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 20:06:34 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 13 Aug 2014 22:06:19 +0200
Message-ID: <3758173.O0N9ZgmMoN@wuerfel>
In-Reply-To: <1407895613.3017.138.camel@deadeye.wl.decadent.org.uk>
References: <CALAqxLUcfaJnxdmkn6mucepNk3QaCQdcSPLRjjeKsk_OTp=uLA@mail.gmail.com>
	<1407895613.3017.138.camel@deadeye.wl.decadent.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: John Stultz <john.stultz@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
	"Joseph S. Myers" <joseph@codesourcery.com>
Subject: Re: [Ksummit-discuss] 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 13 August 2014 03:06:53 Ben Hutchings wrote:
> > On the kernel side, it also adds more complexity, where we have to add
> > even more complex compat support for 64bit systems to handle all the
> > various 32bit applications possible.
> [...]
> 
> Didn't we need to do this already to support x32?  Have compat ioctls
> involving time been botched?

AFAICT, every ioctl that involves passing a __kernel_ulong_t or
__kernel_ulong_t is potentially broken on x32, and this includes
everything passing a time_t or timespec.

The problem is that the libc ioctl() function ends up in the kernel's
compat_ioctl handler, which expects the 32-bit ABI, not the 64-bit ABI.
Most other syscalls in x32 however use the 64-bit ABI.

It works only for drivers that use the same function for .ioctl and
.compat_ioctl, and that encode the size of the data structure correctly
in the ioctl command code. I assume this is how we will do it for all
32-bit architectures with 64-bit time_t, but on x32 it also concerns
other types that use __kernel_long_t.

	Arnd
