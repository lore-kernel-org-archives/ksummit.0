Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 86FF4258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 04:56:05 +0000 (UTC)
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 163FB17D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 04:56:04 +0000 (UTC)
Received: by mail-oi0-f47.google.com with SMTP id r2so54080282oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Jul 2016 21:56:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160712093518.GD16460@quack2.suse.cz>
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
	<20160712093518.GD16460@quack2.suse.cz>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 12 Jul 2016 21:56:02 -0700
Message-ID: <CAPcyv4jLCpZautu1NsWPL735dSMuuHrDfb=KgmNtHOh4B7f6AQ@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Jul 12, 2016 at 2:35 AM, Jan Kara <jack@suse.cz> wrote:
> Well, in the end it is your call but my experience with xfstests shows that
> it is good to detect the case that the functionality is not supported by
> the kernel and fail gracefully. Because especially with enterprise
> distributions you get a strange mix of kernel and userspace and it is *very*
> useful to be able to run testsuites there when testing backports etc. It is
> a pita to figure out whether the test failed because of missing
> functionality of because of a bug in your backport...

I'm assuming you can gate tests based on filesystem feature flags?
For unit tests that are deeper, at the individual kernel symbol level,
it's hard to predict the behavior of that symbol outside of the kernel
version.  Unless, we ship a test-interface version / feature-flags
data in the base kernel?  That direction relates to the question about
whether test infrastructure remain out-of-tree.
