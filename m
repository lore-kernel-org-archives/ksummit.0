Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6873E78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:53:24 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C418C16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:53:23 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
From: Catalin Marinas <catalin.marinas@arm.com>
In-Reply-To: <CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
Date: Thu, 4 Aug 2016 00:53:11 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <0E98DCC5-01EE-4FA7-B6D4-72772279BDFF@arm.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection
	/	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 1 Aug 2016, at 00:05, Kees Cook <keescook@chromium.org> wrote:
> On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com> wrot=
e:
>> It would be very interesting to discuss what's needed from arch code for
>> various hardening features, both those currently in mainline & those in
>> development.

I'm interested in such topic as well, primarily from an arm/arm64 perspectiv=
e.=20

> - Handling userspace/kernelspace memory segregation. (This is the SMAP
> of x86, PAN of ARM, and just native on s390.) For architectures (or
> chipsets within an architecture) that don't support unprivileged
> memory access restrictions in hardware, we must find a way to emulate
> it. (e.g. 32-bit ARM uses Domains, and 64-bit x86 could use PCIDs,
> etc.) Keeping these regions separate is extremely important in
> stopping exploitation.

For arm64 ARMv8.0 (without hardware PAN), I'm going to post a patch=20
in a week or so which emulates PAN by switching the user page table (TTBR0)=20=

to the zero page. I guess a similar approach could work for other architectu=
res,=20
maybe using swapper_pg_dir as the PAN page table.=20

>> For example MIPS systems are currently showing the "This architecture doe=
s
>> not have kernel memory protection." message since d2aa1acad22f (which to a=

>> user sounds pretty dire as though user code can freely access kernel data=
)
>> and which I'd like for MIPS to implement the security to avoid. However
>> because TLB refills are performed by software it's non-trivial, since we
>> generally rely upon the kernel being placed in an unmapped region of the
>> virtual address space & being unmapped there is no TLB entry to mark
>> read-only.
>=20
> This is actually from the perspective of the kernel, so when the
> kernel code is running, it's mapped, and those entries should all be
> marked read-only. As I mentioned above, we need to consider W^X memory
> permissions a fundamental security protection, and architectures
> should make sure this is completely fixed.

On arm64 we have such feature in hardware: the WXN (write execute never)=20
bit in SCTLR_EL1. However, this would affect user space as well, so it needs=
 to=20
be switched only when entering the kernel to avoid ABI breakage. I don't hav=
e=20
the ARM specs at hand but one possible complication is the WXN bit=20
being cached in the TLB (and invalidating the TLBs on kernel entry/exit=20
is not practical).=20

> (And that is stays that
> way: x86 actually scans kernel memory permissions at boot now to make
> sure no writable and executable regions have appeared.)

That's probably a good enough workaround without additional hardware support=
.=20

BTW, while not a kernel security feature, I've been asked in the past to ena=
ble=20
execute-only (no read) permissions on arm64 (e.g. mmap(PROT_EXEC)).=20
I have a simple patch for this, though I'm not 100% sure about user ABI impl=
ications.=20
So far I'm not aware of any user application using PROT_EXEC only and also=20=

expecting PROT_READ.=20


(Sorry for the email formatting, I'm on holiday and with only a phone as com=
munication device)

--=20
Catalin=20=
