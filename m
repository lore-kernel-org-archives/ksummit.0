Return-Path: <jikos@kernel.org>
Date: Mon, 11 Jul 2016 10:18:01 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <5781148F.1010102@roeck-us.net>
Message-ID: <alpine.LNX.2.00.1607111015020.24757@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net>
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

On Sat, 9 Jul 2016, Guenter Roeck wrote:

> As I suggested earlier, we'll have to find a way to convince companies 
> to actively invest in QA.

The potential issue I see here is coverage.

Linus' tree greatly benefits from the "crowdsourcing" effect, in a sense 
that everybody is, at the end of the day, interested in that tree to work 
(because most of the stakeholders are going to include that codebase in 
their product sooner or later).

That's not the case with stable codestreams; the interest there is much 
more scattered.

-- 
Jiri Kosina
SUSE Labs
