Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2798187A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 01:15:21 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9829320224
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 01:15:20 +0000 (UTC)
Message-ID: <537FF29C.10301@roeck-us.net>
Date: Fri, 23 May 2014 18:15:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>,
	"Justin M. Forbes" <jforbes@fedoraproject.org>
References: <537F3551.2070104@hitachi.com>	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org>
In-Reply-To: <20140524003036.GB26422@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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

On 05/23/2014 05:30 PM, Theodore Ts'o wrote:
> On Fri, May 23, 2014 at 09:05:02AM -0500, Justin M. Forbes wrote:
>> All good suggestions. As nice as it would be if tests were in tree, this
>> might be unmanageable. But even out of tree tests could be automatically
>> brought in provided they are listed somewhere in tree.  Ideally you
>> would be able to "make tests" and get all in tree tests run, or "make
>> alltests" and have it grab/build/run out of tree tests with git urls as
>> well.
>
> Um.... how long do you expect "make alltests" to run?
>
> And how do you deal with tests that require specific hardware?
>
> For ext4, just doing a light smoke test takes about 30 minutes.  For
> me to run the full set of tests using multiple file system
> configurations, it takes about 12 to 16 hours.  And that's just for
> one file system.  (I do the tests using KVM, with a 90 megabyte
> compressed root file system, and 55 gigabytes worth of scratch
> partitions.)
>

Guess that all depends on the scope of tests needed or wanted.
For my part (basic sanity testing of upcoming -stable releases),
where I boot images for various architectures in qemu, no more
than 10-15 minutes per image with a quad-core cpu.

Guenter
