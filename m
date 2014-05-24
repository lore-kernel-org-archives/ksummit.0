Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A01587A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 00:30:40 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C3ED51FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 00:30:39 +0000 (UTC)
Date: Fri, 23 May 2014 20:30:36 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: "Justin M. Forbes" <jforbes@fedoraproject.org>
Message-ID: <20140524003036.GB26422@thunk.org>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1400853902.31124.5.camel@fedora64.linuxtx.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 23, 2014 at 09:05:02AM -0500, Justin M. Forbes wrote:
> All good suggestions. As nice as it would be if tests were in tree, this
> might be unmanageable. But even out of tree tests could be automatically
> brought in provided they are listed somewhere in tree.  Ideally you
> would be able to "make tests" and get all in tree tests run, or "make
> alltests" and have it grab/build/run out of tree tests with git urls as
> well. 

Um.... how long do you expect "make alltests" to run?

And how do you deal with tests that require specific hardware?

For ext4, just doing a light smoke test takes about 30 minutes.  For
me to run the full set of tests using multiple file system
configurations, it takes about 12 to 16 hours.  And that's just for
one file system.  (I do the tests using KVM, with a 90 megabyte
compressed root file system, and 55 gigabytes worth of scratch
partitions.)

						- Ted
