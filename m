Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE60A71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 09:04:38 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92C79A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 09:04:37 +0000 (UTC)
Date: Wed, 13 Jul 2016 11:04:32 +0200
From: Jan Kara <jack@suse.cz>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20160713090432.GA2740@quack2.suse.cz>
References: <1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<CAPcyv4ik_wXkSrth33s=rjeQCsbXL1L5mYAhv95Qo_O51tKW2w@mail.gmail.com>
	<20160712093518.GD16460@quack2.suse.cz>
	<CAPcyv4jLCpZautu1NsWPL735dSMuuHrDfb=KgmNtHOh4B7f6AQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4jLCpZautu1NsWPL735dSMuuHrDfb=KgmNtHOh4B7f6AQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue 12-07-16 21:56:02, Dan Williams wrote:
> On Tue, Jul 12, 2016 at 2:35 AM, Jan Kara <jack@suse.cz> wrote:
> > Well, in the end it is your call but my experience with xfstests shows that
> > it is good to detect the case that the functionality is not supported by
> > the kernel and fail gracefully. Because especially with enterprise
> > distributions you get a strange mix of kernel and userspace and it is *very*
> > useful to be able to run testsuites there when testing backports etc. It is
> > a pita to figure out whether the test failed because of missing
> > functionality of because of a bug in your backport...
> 
> I'm assuming you can gate tests based on filesystem feature flags?

Yes, each test has in the beginning 'require' checks - these check whether
the functionality the test needs from the kernel is available and if any of
them fails, the test reports it cannot run because functionality this and
that is missing.

> For unit tests that are deeper, at the individual kernel symbol level,
> it's hard to predict the behavior of that symbol outside of the kernel
> version.  Unless, we ship a test-interface version / feature-flags
> data in the base kernel?  That direction relates to the question about
> whether test infrastructure remain out-of-tree.

Yeah, so xfstests do not test kernel at that deep level (I assume they are
not unit tests in the sense you use it). They just use syscalls to
excercise kernel and thus checking whether the functionality is available
is much simpler.

So the tests you are speaking about are compiled into kernel (possibly as a
module) so that they can excercise kernel functions directly, right? Then I
guess it doesn't make much sense to consider them out-of-tree - the test
module is IMHO just another module that uses the exported API. But I don't
really have any experience with tests at that deep level in the kernel.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
