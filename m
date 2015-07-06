Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6439ABC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 09:53:01 +0000 (UTC)
Received: from eu-smtp-delivery-143.mimecast.com
	(eu-smtp-delivery-143.mimecast.com [146.101.78.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 836A9EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 09:53:00 +0000 (UTC)
Date: Mon, 6 Jul 2015 10:52:57 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150706095256.GA27723@e104818-lin.cambridge.arm.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
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

On Sun, Jul 05, 2015 at 07:55:39PM +0100, Andy Lutomirski wrote:
> On Sat, Jul 4, 2015 at 8:02 PM, Benjamin Herrenschmidt
> <benh@kernel.crashing.org> wrote:
> > On Sat, 2015-07-04 at 07:12 -0700, Dan Williams wrote:
> >
> >> Another side topic that has come up in this space is the desire to
> >> define a "memremap" api to clean up __iomem abuses for cases where
> >> "memory-like" mappings are needed.
> >>
> >> https://lkml.org/lkml/2015/6/22/100
> >
> > Interesting. I had missed this. There is a similar question about
> > semantics (ordering etc...), ie, are they the same as memory for
> > example ?
> >
> > Another thing we might look into is to what extent should we provide
> > access to the "SAO" mapping attribute that POWER7 and later support
> > (strong ordering, pretty-much x86 like) and whether this can be used
> > on ppc to reduce the need for barriers (that attribute is only availabl=
e
> > for fully cachable mappings, not generally applicable to IO mappings).
> >
> > That translate to: should your new memremap() take some kinds of flags
> > as an argument ? Though of course providing a cross-arch definition of
> > these flags would be tricky.
>=20
> At some point, it would also be nice if the various macros has
> well-defined semantics.  For example, x86 has:
>=20
> #define pgprot_noncached(prot)                                          \
>         ((boot_cpu_data.x86 > 3)                                        \
>          ? (__pgprot(pgprot_val(prot) |                                 \
>                      cachemode2protval(_PAGE_CACHE_MODE_UC_MINUS)))     \
>          : (prot))
>=20
> Putting aside the pointless boot_cpu_data check (surely the recent PAT
> rework completely obsoletes it), what is
> pgprot_noncached(pgprot_writecombine(x)) supposed to do?  Currently it
> results in garbage.  Should it have well-defined behavior instead?

I never thought composing pgprot_* macros/functions is supposed to
return a combined attribute. On arm32/arm64, this construct is just
returning the outermost prot, i.e. noncached here. Even if we would want
to allow such combination, we don't have enough software PTE bits for
each prot type, so these macros simply generate the corresponding
hardware bits (on newer ARM cores, that's a 3-bit index).

FWIW, on ARM, pgprot_noncached has stronger ordering semantics than what
ioremap_nocache returns and in many (most) cases it's not the
appropriate type for ARM (e.g. video framebuffers should use
writecombine since noncached doesn't even allow unaligned accesses).

--=20
Catalin
