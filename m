Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BE6B22C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 15:52:56 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEB9723A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 15:52:55 +0000 (UTC)
Date: Tue, 26 Jul 2016 08:52:43 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160726155243.GC30628@roeck-us.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<146834264.pgPOSbOmkO@vostro.rjw.lan>
	<1468119600.19833.9.camel@HansenPartnership.com>
	<1469540111.120686.314.camel@infradead.org>
	<57976941.2040308@roeck-us.net>
	<1469543609.120686.319.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469543609.120686.319.camel@infradead.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 26, 2016 at 03:33:29PM +0100, David Woodhouse wrote:
> On Tue, 2016-07-26 at 06:44 -0700, Guenter Roeck wrote:
> > 
> > > We really should have more of an expectation that new code should be
> > > submitted *with* test cases. After all, it's not like people are
> > > generally submitting code that's *entirely* untested. It's more that
> > > testing is ad-hoc, and sometimes depends on running on specific
> > > hardware. But even the latter can often be fixed, with appropriate test
> > > harnesses.
> > >
> > 
> > Worthy goal, but knowing developers I am quite concerned that it would result
> > in (possibly much) less kernel contributions. In addition to contributions
> > from unaffiliated individuals, there is a lot of code in vendor trees which
> > is not upstreamed today. Demanding test cases for upstreaming would for sure
> > make the interest in upstreaming that code even lower than it is today.
> 
> Sure, but I did say an *expectation* rather than a hard requirement. We
> are nothing if not pragmatic.
> 
Ok, makes sense.

> Having the *infrastructure* in place, and plenty of existing examples,
> would make this a whole lot easier for submitters. And also might be a
> good proving ground for people who would otherwise be doing precisely
> the kind of 'trivial' patches which are often problematic...
> 
Now that sounds like an excellent idea!

Guenter
