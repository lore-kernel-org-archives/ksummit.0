Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4C4CAB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  5 Jul 2015 03:03:03 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77CA91A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  5 Jul 2015 03:03:02 +0000 (UTC)
Message-ID: <1436065368.3948.48.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Dan Williams <dan.j.williams@intel.com>
Date: Sun, 05 Jul 2015 13:02:48 +1000
In-Reply-To: <CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Sat, 2015-07-04 at 07:12 -0700, Dan Williams wrote:

> Another side topic that has come up in this space is the desire to
> define a "memremap" api to clean up __iomem abuses for cases where
> "memory-like" mappings are needed.
> 
> https://lkml.org/lkml/2015/6/22/100

Interesting. I had missed this. There is a similar question about
semantics (ordering etc...), ie, are they the same as memory for
example ?

Another thing we might look into is to what extent should we provide
access to the "SAO" mapping attribute that POWER7 and later support
(strong ordering, pretty-much x86 like) and whether this can be used
on ppc to reduce the need for barriers (that attribute is only available
for fully cachable mappings, not generally applicable to IO mappings).

That translate to: should your new memremap() take some kinds of flags
as an argument ? Though of course providing a cross-arch definition of
these flags would be tricky.
 
Ben.
