Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E09C44D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 18:52:36 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 559831C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 18:52:36 +0000 (UTC)
Date: Tue, 19 Jul 2016 20:52:33 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <20160719173120.GE30372@sirena.org.uk>
Message-ID: <alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 19 Jul 2016, Mark Brown wrote:

> There's a push from certain quarters to move away from GCC to LLVM.  

This might actually be an interesting topic per se.

LLVM definitely has quite some nice features, but their attitude towards 
bugs which are rather severe for kernel programming should be taken as a 
warning at least. Look at the "pushf/popf being generated around 
local_irq_save()" trainwreck as an example.

Thanks,

-- 
Jiri Kosina
SUSE Labs
