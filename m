Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E3AF9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 16:22:44 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 225C3EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 16:22:44 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 6F03620A7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 12:22:43 -0400 (EDT)
Date: Sat, 1 Aug 2015 09:22:41 -0700
From: Greg KH <greg@kroah.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150801162241.GA11115@kroah.com>
References: <55BAE39F.9060705@oracle.com>
	<alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
	<55BBB514.7060509@oracle.com> <20150801134546.GO5180@mwanda>
	<55BCE519.1040207@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55BCE519.1040207@oracle.com>
Cc: Dave Jones <davej@redhat.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 01, 2015 at 11:26:17AM -0400, Sasha Levin wrote:
> On 08/01/2015 09:45 AM, Dan Carpenter wrote:
> > On Fri, Jul 31, 2015 at 01:49:08PM -0400, Sasha Levin wrote:
> >>  - Encouraging folks who add new sysctls (or features to existing sysctls) to contribute
> >> testing code to the various testing projects around (trinity and such).
> > 
> > Which other fuzzers are people using besides trinity?
> 
> I'm not sure, I think trinity sort of took over :)
> 
> My point was that people should be submitting a more significant amount
> of test code along with their new ABI - none of the recent syscalls added
> has any mention in LTP for example.

Because most of us hate LTP.

Seriously, I've lost days of my life many years ago tracing down "kernel
bugs" that in the end were just bugs in LTP due to the horrid code in
it.

Now yes, this was a long time ago, and hopefully it has gotten a lot
better, but lots of people have this attitude which is why we are
encouraging people to use the tests in the kernel tree itself, and is
why new syscalls are all adding their tests there.

I've encouraged people to take the "good bits" of LTP and add them to
the kernel test framework, but no one seems to want to do that...

thanks,

greg k-h
