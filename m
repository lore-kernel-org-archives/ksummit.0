Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B39898B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:20:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0206.hostedemail.com
	[216.40.44.206])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E8672A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:20:24 +0000 (UTC)
Date: Fri, 29 Jul 2016 11:20:19 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160729112019.3c71f697@gandalf.local.home>
In-Reply-To: <20160729151247.GG10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 29 Jul 2016 16:12:47 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Fri, Jul 29, 2016 at 11:59:47AM +0300, Laurent Pinchart wrote:
> > On Thursday 28 Jul 2016 20:10:10 Steven Rostedt wrote:  
> 
> > > Does tools/testing/selftests/ not satisfy this?  
> 
> > It does, but lacks features to support driver-related test cases. For instance 
> > it doesn't (for quite obvious reasons) provide machine-readable information 
> > about the hardware requirements for a particular test.  
> 
> Plus in general the hardware related tests can end up requiring some
> specific environment beyond that which is machine enumerable.
> 
> > I'm not sure whether kselftest could/should be extended for that purpose. Due 
> > to its integration in the kernel, there is little need to standardize the test 
> > case interface beyond providing a Makefile to declare the list of test 
> > programs and compile them. Something slightly more formal is in my opinion 
> > needed if we want to scale to device driver tests with out-of-tree test cases.  
> 
> There's also the risk that we make it harder for a random user to pick
> up the tests and predict what the expected results should be - one of
> the things that can really hurt a testsuite is if users don't find it
> consistent and stable.

I believe the ideal solution would be that a test would check if the
hardware it wants to test is available or not. If it is not, it simple
returns "Unsupported", and not success or failure.

The kselftests should be run by anyone. If the user doesn't have a
kernel with the right configs, or the right hardware for the test, the
test should exit politely, saying that it could not run due to not
having the proper environment. But if the configs and HW are available,
do you envision having any other type of inconsistent result?

-- Steve
