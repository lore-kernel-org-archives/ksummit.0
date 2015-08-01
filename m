Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B532405
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 15:26:23 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FCDC16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 15:26:23 +0000 (UTC)
Message-ID: <55BCE519.1040207@oracle.com>
Date: Sat, 01 Aug 2015 11:26:17 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <55BAE39F.9060705@oracle.com>
	<alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
	<55BBB514.7060509@oracle.com> <20150801134546.GO5180@mwanda>
In-Reply-To: <20150801134546.GO5180@mwanda>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Dave Jones <davej@redhat.com>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/01/2015 09:45 AM, Dan Carpenter wrote:
> On Fri, Jul 31, 2015 at 01:49:08PM -0400, Sasha Levin wrote:
>>  - Encouraging folks who add new sysctls (or features to existing sysctls) to contribute
>> testing code to the various testing projects around (trinity and such).
> 
> Which other fuzzers are people using besides trinity?

I'm not sure, I think trinity sort of took over :)

My point was that people should be submitting a more significant amount
of test code along with their new ABI - none of the recent syscalls added
has any mention in LTP for example.

> Also why don't we merge trinity under tools/testing/?  I bet people
> would keep it in sync better if we did that.

No objections on my end. I believe that Dave previously objected because
it's hard to make it work on sync with the kernel's release cycle.

I've actually presented a proposal in linuxcon back in 2013 for unifying
trinity into the kernel, and using common headers for syscalls. This would
force people who add/modify syscalls to update trinity, and it'll also make
the ABI self documenting as one would need to be very specific about what
parameters are expected for each syscall.


Thanks,
Sasha
