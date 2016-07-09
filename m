Return-Path: <andrew@lunn.ch>
Date: Sat, 9 Jul 2016 20:39:29 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160709183929.GA12528@lunn.ch>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
	<3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
	<alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Basically: currently the model is that everybody is free to pick up a 
> random commit and bounce it to -stable. What I'd like see is that this is 
> routed through the maintainers instead, who then push thing upstream 
> (where upstream means stable).
> 
> I know that there are exceptions where this is working properly (netdev), 
> I personally am doing that also informally (when people tell me "hey, this 
> should go to stable", I do whatever is necessary), but still the general 
> process as such is not there.

Jonathan Corbet did a LWN article estimating how many stable patches
introduced regressions. Has anybody broken the numbers down per
subsystem? Can we get some numerical evidence which suggests
maintainer driven stable submissions are better than average?

	   Andrew
