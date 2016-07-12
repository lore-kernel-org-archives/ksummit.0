Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 691B294C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Jul 2016 09:35:22 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C789FA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Jul 2016 09:35:21 +0000 (UTC)
Date: Tue, 12 Jul 2016 11:35:18 +0200
From: Jan Kara <jack@suse.cz>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20160712093518.GD16460@quack2.suse.cz>
References: <91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<CAPcyv4ik_wXkSrth33s=rjeQCsbXL1L5mYAhv95Qo_O51tKW2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4ik_wXkSrth33s=rjeQCsbXL1L5mYAhv95Qo_O51tKW2w@mail.gmail.com>
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

On Mon 11-07-16 12:58:50, Dan Williams wrote:
> * What does "we never regress userspace" mean when we have unit tests
> that are tightly coupled to the kernel?
> For example, there have been occasions where I have "regressed" a test
> case to improve kernel behavior with the knowledge that no real
> (non-test) application was dependent on the old behavior.

It's always a judgement call. Linus has always stated that the rule only
holds for real users using real applications. So if you are confident that
it is only the test that regresses, then that is fine.

> * Are tests only for developers, or should an end consumer of the
> kernel expect to be able to run the tests and baseline their kernel?
> The unit tests for libnvdimm [2] are meant to run against latest
> mainline. There's some support for checking the kernel version, but I
> don't promise that tests for new kernel functionality will be skipped
> on older kernels without that specific enabling. I'd revisit that
> stance if -stable tree maintainers or distros were looking to run the
> tests.

Well, in the end it is your call but my experience with xfstests shows that
it is good to detect the case that the functionality is not supported by
the kernel and fail gracefully. Because especially with enterprise
distributions you get a strange mix of kernel and userspace and it is *very*
useful to be able to run testsuites there when testing backports etc. It is
a pita to figure out whether the test failed because of missing
functionality of because of a bug in your backport...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
