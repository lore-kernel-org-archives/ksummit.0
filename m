Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8BC0E99F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 22:53:30 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B68A20246
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 22:53:30 +0000 (UTC)
Date: Fri, 30 May 2014 18:53:21 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20140530225321.GA20492@thunk.org>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org> <53832692.9020802@hitachi.com>
	<20140530143530.5816c980@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140530143530.5816c980@gandalf.local.home>
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

On Fri, May 30, 2014 at 02:35:30PM -0400, Steven Rostedt wrote:
> 
> I agree with this. Just having a single place to put tests or tell
> people where the tests are would be a huge improvement. If I wanted to
> run my own tests on ext file systems, I should be able to set up the
> same environment that Ted uses.

And you can!

	https://git.kernel.org/cgit/fs/ext2/xfstests-bld.git/tree/README

My test environment has been designed so it's fully reproducible, and
I've been pushing ext4 developers to use it before submitting me
patches.  And if they don't, and I detect a problem which bisects back
to one of their patches, I let them know gently that if they had used
kvm-xfstests, they would have detected earlier.

Maybe just adding a field in the MAINTAINERS file which contains a
pointer to the tests is the simplest solution?

> If someone wants to run my ftrace tests, then they should be able to
> as well (which I need to make available to the general
> public). Better yet, this can open up a door for people to
> contribute to new tests for a particular subsystem. I would love it
> if people added tests for me to run on ftrace. I have a bunch of
> hacks to test various functionality (as they are hacky, that's the
> reason I haven't posted them yet).

Yeah, it took a while before I had done enough cleanup that I was
willing to make thme fully public.  Now that I have, it's saved me a
lot of time, most definitely.

					- Ted
