Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68077145B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Sep 2015 00:04:40 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16F06172
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Sep 2015 00:04:39 +0000 (UTC)
To: Arnd Bergmann <arnd@arndb.de>, ksummit-discuss@lists.linuxfoundation.org
References: <CALAqxLUcfaJnxdmkn6mucepNk3QaCQdcSPLRjjeKsk_OTp=uLA@mail.gmail.com>
	<1407895613.3017.138.camel@deadeye.wl.decadent.org.uk>
	<3758173.O0N9ZgmMoN@wuerfel>
From: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <55FCA686.601@zytor.com>
Date: Fri, 18 Sep 2015 17:04:22 -0700
MIME-Version: 1.0
In-Reply-To: <3758173.O0N9ZgmMoN@wuerfel>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 08/13/2014 01:06 PM, Arnd Bergmann wrote:
> On Wednesday 13 August 2014 03:06:53 Ben Hutchings wrote:
>>> On the kernel side, it also adds more complexity, where we have to add
>>> even more complex compat support for 64bit systems to handle all the
>>> various 32bit applications possible.
>> [...]
>>
>> Didn't we need to do this already to support x32?  Have compat ioctls
>> involving time been botched?
> 
> AFAICT, every ioctl that involves passing a __kernel_ulong_t or
> __kernel_ulong_t is potentially broken on x32, and this includes
> everything passing a time_t or timespec.
> 
> The problem is that the libc ioctl() function ends up in the kernel's
> compat_ioctl handler, which expects the 32-bit ABI, not the 64-bit ABI.
> Most other syscalls in x32 however use the 64-bit ABI.
> 
> It works only for drivers that use the same function for .ioctl and
> .compat_ioctl, and that encode the size of the data structure correctly
> in the ioctl command code. I assume this is how we will do it for all
> 32-bit architectures with 64-bit time_t, but on x32 it also concerns
> other types that use __kernel_long_t.
> 

OK, super-late reply.

Actually we have by and large dealt with that.  Sadly this meant an
increase in the number of paths with conditional ABI.

	-hpa
