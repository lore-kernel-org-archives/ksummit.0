Return-Path: <jikos@kernel.org>
Date: Mon, 11 Jul 2016 10:14:51 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
In-Reply-To: <57815317.5060404@gmail.com>
Message-ID: <alpine.LNX.2.00.1607111013000.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <57815317.5060404@gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 9 Jul 2016, Sudip Mukherjee wrote:

> Just a thought, why dont we have a stable-next tree like the way we have 
> linux-next? in that way it might get more testing than it gets now. I 
> know it will be more work but atleast worth a try.

What do you envision this stable-next to contain though?

linux-next is a merge of gazillions trees that are heading upstream. 
Stable tree though is not comprised of merged trees, it's a 
linear stream of commits in one queue.

-- 
Jiri Kosina
SUSE Labs
