Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8FC47B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  5 Jul 2015 20:10:16 +0000 (UTC)
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD8911D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  5 Jul 2015 20:10:15 +0000 (UTC)
Received: by laar3 with SMTP id r3so132748964laa.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 05 Jul 2015 13:10:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1436126184.3948.55.camel@kernel.crashing.org>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<1436126184.3948.55.camel@kernel.crashing.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 5 Jul 2015 13:09:54 -0700
Message-ID: <CALCETrXi6cpV89fBkkj34Vbnt2qZfsyag+6Hz63_u5kSLtz6kQ@mail.gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
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

On Sun, Jul 5, 2015 at 12:56 PM, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
> On Sun, 2015-07-05 at 11:55 -0700, Andy Lutomirski wrote:
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
> Can it ? On powerpc it will just mean pgprot_noncached for example,
> those macros manipulate the same bits and it's not a bitmask, it's
> either unached or uncached with write combining.

I think it should mean pgprot_noncached on all arches.  On x86, if it
does, it's purely by luck, since it only sets bits and doesn't clear
them.

>
>> I suspect the other arches all have their own unique glitches here.
>
> Correct. I'm still trying to get feedback on ARM for example.
>
> I don't think we can (or should try) to have completely identical semantics
> for everything, but we should try to find the common set that are guaranteed
> and, possibly, do a best effort for archs to individually document the
> remaining.

Agreed.

--Andy
