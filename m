Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8EC4578D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 08:59:36 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E20931C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 08:59:35 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Fri, 29 Jul 2016 11:59:47 +0300
Message-ID: <26257864.77FIuI985E@avalon>
In-Reply-To: <20160728201010.6d1ef149@gandalf.local.home>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
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

On Thursday 28 Jul 2016 20:10:10 Steven Rostedt wrote:
> On Fri, 29 Jul 2016 00:02:12 +0300 Laurent Pinchart wrote:
> >
> > - The lack of a test infrastructure was a major reason for not developing
> > tests earlier. If we want developers to write and even submit test cases
> > we need to lower the barrier to entry. A proper infrastructure (with
> > libraries, locations where to submit test cases, documentation, examples,
> > ...) will not only make it more likely that test cases will be created
> > and published, but should also hopefully avoid the proliferation of
> > incompatible test frameworks.
>
> Does tools/testing/selftests/ not satisfy this?

It does, but lacks features to support driver-related test cases. For instance 
it doesn't (for quite obvious reasons) provide machine-readable information 
about the hardware requirements for a particular test.

I'm not sure whether kselftest could/should be extended for that purpose. Due 
to its integration in the kernel, there is little need to standardize the test 
case interface beyond providing a Makefile to declare the list of test 
programs and compile them. Something slightly more formal is in my opinion 
needed if we want to scale to device driver tests with out-of-tree test cases.

Another limitation of kselftest is the lack of standardization for logging and 
status reporting. This would be needed to interpret the test output in a 
consistent way and generate reports. Regardless of whether we extend kselftest 
to cover device drivers this would in my opinion be worth fixing.

-- 
Regards,

Laurent Pinchart
