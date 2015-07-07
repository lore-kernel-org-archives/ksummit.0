Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D7A6305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 10:29:25 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B933714E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 10:29:24 +0000 (UTC)
Date: Tue, 7 Jul 2015 11:29:21 +0100
From: Will Deacon <will.deacon@arm.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20150707102921.GF23879@arm.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<1436126184.3948.55.camel@kernel.crashing.org>
	<20150706093333.GD30342@arm.com>
	<1436220126.3948.74.camel@kernel.crashing.org>
	<20150707095615.GD23879@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150707095615.GD23879@arm.com>
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

On Tue, Jul 07, 2015 at 10:56:15AM +0100, Will Deacon wrote:
> As long as the accessors are required to enforce ordering that the
> underlying memory type is incapable of providing, I don't see what we
> could do to solve this (somehow make readX/writeX behaviour dependent on
> the pointer?).

... which we could do using pointer tags, but christ is that going to be
confusing to use (casting an io-relaxed pointer to order against DMA!).

Will
