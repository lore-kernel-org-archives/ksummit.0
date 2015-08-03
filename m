Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A07A7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 05:14:27 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ADE64A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 05:14:26 +0000 (UTC)
Message-ID: <55BEF8AC.60500@oracle.com>
Date: Mon, 03 Aug 2015 01:14:20 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>
References: <55BAE39F.9060705@oracle.com>
	<alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
	<55BBB514.7060509@oracle.com> <20150801134546.GO5180@mwanda>
	<55BCE519.1040207@oracle.com> <20150801162241.GA11115@kroah.com>
In-Reply-To: <20150801162241.GA11115@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 08/01/2015 12:22 PM, Greg KH wrote:
>> > My point was that people should be submitting a more significant amount
>> > of test code along with their new ABI - none of the recent syscalls added
>> > has any mention in LTP for example.
> Because most of us hate LTP.
> 
> Seriously, I've lost days of my life many years ago tracing down "kernel
> bugs" that in the end were just bugs in LTP due to the horrid code in
> it.
> 
> Now yes, this was a long time ago, and hopefully it has gotten a lot
> better, but lots of people have this attitude which is why we are
> encouraging people to use the tests in the kernel tree itself, and is
> why new syscalls are all adding their tests there.
> 
> I've encouraged people to take the "good bits" of LTP and add them to
> the kernel test framework, but no one seems to want to do that...

I didn't really mean to focus on LTP here: pick any project that has
a critical mass of users and send them ways to test your code now and
for future changes.


Thanks,
Sasha
