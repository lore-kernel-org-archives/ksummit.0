Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32E2A94D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:36:00 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 83C182AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:35:59 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 01 Aug 2016 16:35:58 +0300
Message-ID: <4149460.WgBp652FMs@avalon>
In-Reply-To: <20160729151247.GG10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Friday 29 Jul 2016 16:12:47 Mark Brown wrote:
> On Fri, Jul 29, 2016 at 11:59:47AM +0300, Laurent Pinchart wrote:
> > On Thursday 28 Jul 2016 20:10:10 Steven Rostedt wrote:
> > > Does tools/testing/selftests/ not satisfy this?
> > 
> > It does, but lacks features to support driver-related test cases. For
> > instance it doesn't (for quite obvious reasons) provide machine-readable
> > information about the hardware requirements for a particular test.
> 
> Plus in general the hardware related tests can end up requiring some
> specific environment beyond that which is machine enumerable.
> 
> > I'm not sure whether kselftest could/should be extended for that purpose.
> > Due to its integration in the kernel, there is little need to standardize
> > the test case interface beyond providing a Makefile to declare the list
> > of test programs and compile them. Something slightly more formal is in
> > my opinion needed if we want to scale to device driver tests with
> > out-of-tree test cases.
>
> There's also the risk that we make it harder for a random user to pick
> up the tests and predict what the expected results should be - one of
> the things that can really hurt a testsuite is if users don't find it
> consistent and stable.
> 
> > Another limitation of kselftest is the lack of standardization for logging
> > and status reporting. This would be needed to interpret the test output
> > in a consistent way and generate reports. Regardless of whether we extend
> > kselftest to cover device drivers this would in my opinion be worth
> > fixing.
> 
> I thought that was supposed to be logging via stdout/stderr and the
> return code for the result.

Yes, but that's a bit limited. For instance we have no way to differentiate a 
test that failed from a test that can't be run due to a missing dependency as 
the value of the error code isn't standardized.

Standardizing format for the success or failure messages could also improve 
consistency. I'm not advocating (at least for now) for any specific format, 
but outputting messages in a standardized format that can easily be consumed 
by test runners (e.g. TAP [0], but that's just an example) could be 
beneficial.

[0] https://en.wikipedia.org/wiki/Test_Anything_Protocol

-- 
Regards,

Laurent Pinchart
