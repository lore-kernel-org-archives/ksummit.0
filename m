Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 41449413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 05:32:31 +0000 (UTC)
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 344651B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 05:32:30 +0000 (UTC)
Received: by mail-wm0-f54.google.com with SMTP id i5so363406405wmg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 22:32:30 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <0E98DCC5-01EE-4FA7-B6D4-72772279BDFF@arm.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
	<0E98DCC5-01EE-4FA7-B6D4-72772279BDFF@arm.com>
From: Kees Cook <keescook@chromium.org>
Date: Wed, 3 Aug 2016 22:32:27 -0700
Message-ID: <CAGXu5jL085S-feY_uy68tCMZwOHcg5QPzyE0eXiJviqCwau90g@mail.gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Dave Hansen <dave.hansen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 3, 2016 at 3:53 PM, Catalin Marinas <catalin.marinas@arm.com> wrote:
> On 1 Aug 2016, at 00:05, Kees Cook <keescook@chromium.org> wrote:
>> On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com> wrote:
>>> It would be very interesting to discuss what's needed from arch code for
>>> various hardening features, both those currently in mainline & those in
>>> development.
>
> I'm interested in such topic as well, primarily from an arm/arm64 perspective.
>
>> - Handling userspace/kernelspace memory segregation. (This is the SMAP
>> of x86, PAN of ARM, and just native on s390.) For architectures (or
>> chipsets within an architecture) that don't support unprivileged
>> memory access restrictions in hardware, we must find a way to emulate
>> it. (e.g. 32-bit ARM uses Domains, and 64-bit x86 could use PCIDs,
>> etc.) Keeping these regions separate is extremely important in
>> stopping exploitation.
>
> For arm64 ARMv8.0 (without hardware PAN), I'm going to post a patch
> in a week or so which emulates PAN by switching the user page table (TTBR0)
> to the zero page. I guess a similar approach could work for other architectures,
> maybe using swapper_pg_dir as the PAN page table.

At least on x86 I've heard grumblings that it can be prohibitively
expensive due to TLB-flushing, but I'd still like to see an
implementation doing it first. :)

>>> For example MIPS systems are currently showing the "This architecture does
>>> not have kernel memory protection." message since d2aa1acad22f (which to a
>>> user sounds pretty dire as though user code can freely access kernel data)
>>> and which I'd like for MIPS to implement the security to avoid. However
>>> because TLB refills are performed by software it's non-trivial, since we
>>> generally rely upon the kernel being placed in an unmapped region of the
>>> virtual address space & being unmapped there is no TLB entry to mark
>>> read-only.
>>
>> This is actually from the perspective of the kernel, so when the
>> kernel code is running, it's mapped, and those entries should all be
>> marked read-only. As I mentioned above, we need to consider W^X memory
>> permissions a fundamental security protection, and architectures
>> should make sure this is completely fixed.
>
> On arm64 we have such feature in hardware: the WXN (write execute never)
> bit in SCTLR_EL1. However, this would affect user space as well, so it needs to
> be switched only when entering the kernel to avoid ABI breakage. I don't have
> the ARM specs at hand but one possible complication is the WXN bit
> being cached in the TLB (and invalidating the TLBs on kernel entry/exit
> is not practical).

Oh, that's even more literal W^X than I was expecting. I just meant
having clean page permissions on the kernel text. If we could actually
put WXN to use, that would be very interesting. (Though I guess I
don't see its advantage over just being non-executable?)

>> (And that is stays that
>> way: x86 actually scans kernel memory permissions at boot now to make
>> sure no writable and executable regions have appeared.)
>
> That's probably a good enough workaround without additional hardware support.
>
> BTW, while not a kernel security feature, I've been asked in the past to enable
> execute-only (no read) permissions on arm64 (e.g. mmap(PROT_EXEC)).
> I have a simple patch for this, though I'm not 100% sure about user ABI implications.
> So far I'm not aware of any user application using PROT_EXEC only and also
> expecting PROT_READ.

x86 is working on this too, and IIRC, they uncovered some "fun" ELF
corner cases. I've added Dave for some more background...

-Kees

-- 
Kees Cook
Brillo & Chrome OS Security
