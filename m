Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20D2E7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:02:01 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5EA88152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:02:00 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 29 Jul 2016 00:02:12 +0300
Message-ID: <367437209.fSUZRCC4cu@avalon>
In-Reply-To: <1469543609.120686.319.camel@infradead.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<57976941.2040308@roeck-us.net>
	<1469543609.120686.319.camel@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 26 Jul 2016 15:33:29 David Woodhouse wrote:
> On Tue, 2016-07-26 at 06:44 -0700, Guenter Roeck wrote:
> > > We really should have more of an expectation that new code should be
> > > submitted *with* test cases. After all, it's not like people are
> > > generally submitting code that's *entirely* untested. It's more that
> > > testing is ad-hoc, and sometimes depends on running on specific
> > > hardware. But even the latter can often be fixed, with appropriate test
> > > harnesses.
> > 
> > Worthy goal, but knowing developers I am quite concerned that it would
> > result in (possibly much) less kernel contributions. In addition to
> > contributions from unaffiliated individuals, there is a lot of code in
> > vendor trees which is not upstreamed today. Demanding test cases for
> > upstreaming would for sure make the interest in upstreaming that code
> > even lower than it is today.
> Sure, but I did say an *expectation* rather than a hard requirement. We
> are nothing if not pragmatic.
> 
> Having the *infrastructure* in place, and plenty of existing examples,
> would make this a whole lot easier for submitters. And also might be a
> good proving ground for people who would otherwise be doing precisely
> the kind of 'trivial' patches which are often problematic...

That's really worth pursuing. As the author of various media-related drivers 
I've obviously run tests before submitting patches, but most of the time they 
were based on scripts quickly hacked in a ad-hoc fashion. I've been very 
creative at finding excuses for not investing more in testing until one day 
when I decided to bite the bullet and publish a unit test framework for one of 
those drivers (http://git.ideasonboard.com/renesas/vsp-tests.git). There were 
a few lessons learnt in the process that I find worth sharing.

- Having to deliver test cases to your customer (in the broader sense of the 
term, internal or external) is a very good incentive for developing a test 
suite. In this specific case I was even the one proposing to add tests as part 
as the acceptance criteria, but the important part is that the customer agreed 
to take test development time into account.

- The lack of a test infrastructure was a major reason for not developing 
tests earlier. If we want developers to write and even submit test cases we 
need to lower the barrier to entry. A proper infrastructure (with libraries, 
locations where to submit test cases, documentation, examples, ...) will not 
only make it more likely that test cases will be created and published, but 
should also hopefully avoid the proliferation of incompatible test frameworks. 

- Catching bugs through self-developed test cases is motivating. We all know 
how useful test cases are in theory, but seeing them run in practice is really 
different. I believe we would get more test cases developed if we could push 
developers through the first few steps and make them experience this by 
themselves.

-- 
Regards,

Laurent Pinchart
