Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 449A5895
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 13:51:33 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 111481FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 13:51:30 +0000 (UTC)
Message-ID: <538F245C.2090006@hitachi.com>
Date: Wed, 04 Jun 2014 22:51:24 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: "Theodore Ts'o" <tytso@mit.edu>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org> <53832692.9020802@hitachi.com>
	<20140530143530.5816c980@gandalf.local.home>
	<20140530225321.GA20492@thunk.org>
In-Reply-To: <20140530225321.GA20492@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

(2014/05/31 7:53), Theodore Ts'o wrote:
> On Fri, May 30, 2014 at 02:35:30PM -0400, Steven Rostedt wrote:
>>
>> I agree with this. Just having a single place to put tests or tell
>> people where the tests are would be a huge improvement. If I wanted to
>> run my own tests on ext file systems, I should be able to set up the
>> same environment that Ted uses.
> 
> And you can!
> 
> 	https://git.kernel.org/cgit/fs/ext2/xfstests-bld.git/tree/README
> 
> My test environment has been designed so it's fully reproducible, and
> I've been pushing ext4 developers to use it before submitting me
> patches.  And if they don't, and I detect a problem which bisects back
> to one of their patches, I let them know gently that if they had used
> kvm-xfstests, they would have detected earlier.
> 
> Maybe just adding a field in the MAINTAINERS file which contains a
> pointer to the tests is the simplest solution?

Yes, I think at least that should be done. It is also good to know
what hardware is required to run the test for some subsystems.

And then, if we can share them among kernel developers, we can
step things forward to ensuring testing process in release/development
cycle. e.g. all subsystem maintainers run own tests before sending pull
request and right after rebasing kernel. This can ensures no regression
on that subsystem.

Thank you,

> 
>> If someone wants to run my ftrace tests, then they should be able to
>> as well (which I need to make available to the general
>> public). Better yet, this can open up a door for people to
>> contribute to new tests for a particular subsystem. I would love it
>> if people added tests for me to run on ftrace. I have a bunch of
>> hacks to test various functionality (as they are hacky, that's the
>> reason I haven't posted them yet).
> 
> Yeah, it took a while before I had done enough cleanup that I was
> willing to make thme fully public.  Now that I have, it's saved me a
> lot of time, most definitely.
> 
> 					- Ted
> 


-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
