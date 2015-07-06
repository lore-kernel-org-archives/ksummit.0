Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81D3193E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 17:14:22 +0000 (UTC)
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7665194
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 17:14:21 +0000 (UTC)
Received: by lagx9 with SMTP id x9so163697154lag.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 06 Jul 2015 10:14:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150706095256.GA27723@e104818-lin.cambridge.arm.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<20150706095256.GA27723@e104818-lin.cambridge.arm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 6 Jul 2015 10:14:00 -0700
Message-ID: <CALCETrVeZGRr06tzAgYMdqG-FqSssWWLZZkGSCriJM8pqCx1BA@mail.gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Semantics of MMIO mapping
 attributes accross archs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 6, 2015 at 2:52 AM, Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Sun, Jul 05, 2015 at 07:55:39PM +0100, Andy Lutomirski wrote:
>>
>> At some point, it would also be nice if the various macros has
>> well-defined semantics.  For example, x86 has:
>>
>> #define pgprot_noncached(prot)                                          \
>>         ((boot_cpu_data.x86 > 3)                                        \
>>          ? (__pgprot(pgprot_val(prot) |                                 \
>>                      cachemode2protval(_PAGE_CACHE_MODE_UC_MINUS)))     \
>>          : (prot))
>>
>> Putting aside the pointless boot_cpu_data check (surely the recent PAT
>> rework completely obsoletes it), what is
>> pgprot_noncached(pgprot_writecombine(x)) supposed to do?  Currently it
>> results in garbage.  Should it have well-defined behavior instead?
>
> I never thought composing pgprot_* macros/functions is supposed to
> return a combined attribute. On arm32/arm64, this construct is just
> returning the outermost prot, i.e. noncached here. Even if we would want
> to allow such combination, we don't have enough software PTE bits for
> each prot type, so these macros simply generate the corresponding
> hardware bits (on newer ARM cores, that's a 3-bit index).
>

I should have said it more clearly: I think that this construct
*should* result in the outermost prot.  That is: pgprot_xyz(p) should
have mode xyz regardless of p.

x86 doesn't work that way right now.  Instead pgprot_xyz(p) returns
garbage if p has prot bits set.
