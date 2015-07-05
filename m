Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA3F5AC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  5 Jul 2015 18:56:01 +0000 (UTC)
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50FDBF2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  5 Jul 2015 18:56:00 +0000 (UTC)
Received: by laar3 with SMTP id r3so131786073laa.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 05 Jul 2015 11:55:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1436065368.3948.48.camel@kernel.crashing.org>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 5 Jul 2015 11:55:39 -0700
Message-ID: <CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
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

On Sat, Jul 4, 2015 at 8:02 PM, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
> On Sat, 2015-07-04 at 07:12 -0700, Dan Williams wrote:
>
>> Another side topic that has come up in this space is the desire to
>> define a "memremap" api to clean up __iomem abuses for cases where
>> "memory-like" mappings are needed.
>>
>> https://lkml.org/lkml/2015/6/22/100
>
> Interesting. I had missed this. There is a similar question about
> semantics (ordering etc...), ie, are they the same as memory for
> example ?
>
> Another thing we might look into is to what extent should we provide
> access to the "SAO" mapping attribute that POWER7 and later support
> (strong ordering, pretty-much x86 like) and whether this can be used
> on ppc to reduce the need for barriers (that attribute is only available
> for fully cachable mappings, not generally applicable to IO mappings).
>
> That translate to: should your new memremap() take some kinds of flags
> as an argument ? Though of course providing a cross-arch definition of
> these flags would be tricky.

At some point, it would also be nice if the various macros has
well-defined semantics.  For example, x86 has:

#define pgprot_noncached(prot)                                          \
        ((boot_cpu_data.x86 > 3)                                        \
         ? (__pgprot(pgprot_val(prot) |                                 \
                     cachemode2protval(_PAGE_CACHE_MODE_UC_MINUS)))     \
         : (prot))

Putting aside the pointless boot_cpu_data check (surely the recent PAT
rework completely obsoletes it), what is
pgprot_noncached(pgprot_writecombine(x)) supposed to do?  Currently it
results in garbage.  Should it have well-defined behavior instead?

I suspect the other arches all have their own unique glitches here.

--Andy
