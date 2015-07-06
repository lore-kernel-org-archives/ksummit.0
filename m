Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EE82DA04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 22:04:50 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F09DFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 22:04:50 +0000 (UTC)
Message-ID: <1436220279.3948.75.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 07 Jul 2015 08:04:39 +1000
In-Reply-To: <CALCETrVeZGRr06tzAgYMdqG-FqSssWWLZZkGSCriJM8pqCx1BA@mail.gmail.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<20150706095256.GA27723@e104818-lin.cambridge.arm.com>
	<CALCETrVeZGRr06tzAgYMdqG-FqSssWWLZZkGSCriJM8pqCx1BA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Mon, 2015-07-06 at 10:14 -0700, Andy Lutomirski wrote:

> I should have said it more clearly: I think that this construct
> *should* result in the outermost prot.  That is: pgprot_xyz(p) should
> have mode xyz regardless of p.
> 
> x86 doesn't work that way right now.  Instead pgprot_xyz(p) returns
> garbage if p has prot bits set.

Agreed. It should.

Ben.
