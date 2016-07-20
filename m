Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27E2794C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 17:05:02 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7656172
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 17:05:01 +0000 (UTC)
Date: Wed, 20 Jul 2016 19:04:59 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <20160720155319.GG6509@sirena.org.uk>
Message-ID: <alpine.LNX.2.00.1607201859270.24757@cbobk.fhfr.pm>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
	<20160720155319.GG6509@sirena.org.uk>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
	towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 20 Jul 2016, Mark Brown wrote:

> > > There's a push from certain quarters to move away from GCC to LLVM.  
> 
> > This might actually be an interesting topic per se.
> 
> Yes, indeed.

Let's make this a real proposal then ... (subject changed). I am again a 
bit unsure about the core / tech division here.

People who should be invited: proponents of the push from the certain 
quarters mentioned by Mark above, and ideally some LLVM folks as well.

I've never actually used llvm to compile the kernel (which makes me rather 
poor contributor should any such discussion happen), but I've been on the 
"receiving side", debugging a crash that turned out to be llvm messing up 
with IF in a way that interfers with local_irq_save(), and also suffered 
from the followup frustration when I found out that this has been reported 
to llvm folks ages ago, and they haven't bothered to fix it (it's now at 
least worked around, in a very sub-optimal way (lahf/sahf)).

Thanks,

-- 
Jiri Kosina
SUSE Labs
