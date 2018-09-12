Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A95DDA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 16:29:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C27B0784
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 16:29:26 +0000 (UTC)
Date: Wed, 12 Sep 2018 09:29:23 -0700
From: Darren Hart <dvhart@infradead.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20180912162923.GA25894@wrath>
References: <BY1PR0501MB14623C8F42765E4852FD5A39C51B0@BY1PR0501MB1462.namprd05.prod.outlook.com>
	<CACRpkdb8c51RABEVhn5tibVxiqTDBRXJ5A5wU5nDfubr6p3nMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdb8c51RABEVhn5tibVxiqTDBRXJ5A5wU5nDfubr6p3nMw@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] A Safety-critical Linux system
 architecture
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 12, 2018 at 12:35:07PM +0200, Linus Walleij wrote:
> On Wed, Sep 12, 2018 at 3:18 AM Tiejun Chen <tiejunc@vmware.com> wrote:
> 
> > software contexts need to be certified according to different specifications
> > like ARINC 653, Automotive Safety Integrity Level, and so on. So we
> > need to explore making Linux itself certified.
> 
> There is a bunch of these certifications and specifications. Many of them
> include manual review of "all code on the system", which is why several
> approaches to this includes stripping down the kernel source to only
> the code (after removing all Kconfig buzz and ifdefs) that will compile
> and run on the target.
> 
> This should of course be possible to integrate into the existing Linux
> build system, like "make sources" that would create a reduced
> kernel tree that will also compile (russian matroska dolls come to
> mind). I think such projects exist in Japan but I haven't heard from
> them recently.
> 
> My pet peeve is that the review process appears to be something
> along the lines that a "certified person/consultant" who has training
> in this standard is supposed to review all the code for safety, so
> after reviewing IMO we should work on (A) making sure that these
> reviews and comments and the exact lines of the kernel and which
> version/commit ID of it it pertains to is made public and (B) that the
> review persons statement be merged into the kernel git log as
> some kind of annotation along the lines of:
> 
> Reviewed-for-ISO-26262-by: Linus Walleij <linus.walleij@linaro.org>
> 

Functional Safety (FuSa) is the freedom from unacceptable risk. It typically
involves safety measures that manage known and acceptable risk.

There is a significant difference in the traditional Functional Safety (FuSa)
systems and the systems built with Linux. As opposed to purpose built micro
processors and less than 100k lines of code, Linux systems on general purpose
CPUs present a "complex" system - where "complex" is referring to a system which
exhibits emergent properties - properties which can only be observed in the assembled
system, and not in the individual components.

This is significant because it requires a new approach to qualifying systems. We
cannot apply traditional hazard analysis for fault trees to systems with CPUs
made up of 7 Billion transistors (each) and a pre-existing software stack with
10s of millions lines of code.

Point being: starting to add safety specific reviews to a pre-existing complex
software stack doesn't help. Linux will never be developed in a strictly
compliant manner to any FuSa standard (especially 26262 which is not suitable
for any complex software stack, fortunately it allows you to defer to the more
generic IEC 61508).

The problem facing us here is not "how do we make Linux safe", it is "how do we
show that Linux has been developed in such a way that it presents an acceptable
level of risk which can be managed with a defined set of safety measures".

To the point of "Architecture". While it is tempting to try to "make it safe" or
"design an architecture", safety critical systems are designed first from a
safety case.

The problem we need to solve here is not a technical Linux kernel problem. We
need to understand a set of use cases, determine safety requirements, and then
complete the methods and procedures begun by the SIL2LinuxMP project to show
that Linux (pretty much as is) can be used with an acceptable level of risk.

I do not feel Kernel Summit is the right venue for this discussion.

-- 
Darren Hart
VMware Open Source Technology Center
