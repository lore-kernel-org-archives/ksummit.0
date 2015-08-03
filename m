Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 794DC7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 05:17:35 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1D0CCA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 05:17:35 +0000 (UTC)
Message-ID: <55BEF962.7080201@oracle.com>
Date: Mon, 03 Aug 2015 01:17:22 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Dave Jones <davej@codemonkey.org.uk>
References: <55BAE39F.9060705@oracle.com>
	<alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
	<55BBB514.7060509@oracle.com> <20150801134546.GO5180@mwanda>
	<55BCE519.1040207@oracle.com>
	<20150801203053.GA10267@codemonkey.org.uk>
In-Reply-To: <20150801203053.GA10267@codemonkey.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On 08/01/2015 04:30 PM, Dave Jones wrote:
> On Sat, Aug 01, 2015 at 11:26:17AM -0400, Sasha Levin wrote:
>  > On 08/01/2015 09:45 AM, Dan Carpenter wrote:
>  > > On Fri, Jul 31, 2015 at 01:49:08PM -0400, Sasha Levin wrote:
>  > >>  - Encouraging folks who add new sysctls (or features to existing sysctls) to contribute
>  > >> testing code to the various testing projects around (trinity and such).
>  > > 
>  > > Which other fuzzers are people using besides trinity?
>  > 
>  > I'm not sure, I think trinity sort of took over :)
>  > 
>  > My point was that people should be submitting a more significant amount
>  > of test code along with their new ABI - none of the recent syscalls added
>  > has any mention in LTP for example.
>  > 
>  > > Also why don't we merge trinity under tools/testing/?  I bet people
>  > > would keep it in sync better if we did that.
>  > 
>  > No objections on my end. I believe that Dave previously objected because
>  > it's hard to make it work on sync with the kernel's release cycle.
> 
> A big factor is the same reason I'm not a huge fan of tools/testing/ in general.
> People want to do things like "run latest testing tools on old LTS/enterprise kernels".
> 
> Having to suck a subtree out of the latest kernel tarball, and then spend
> time trying to make it even compile/run against headers from an old kernel
> is something I've already lost way too many weeks of my life to, so I'm
> not really a fan of making that problem even worse by adding other tools to it.

An interesting model we can try here is to let development happen both in the kernel
tree and outside of it, and patches will be exchanged between the two development trees
(possibly automatically). Think of it as a "fork".

On one hand it'll provide the kernel with a proven testing framework, and on
the other it'll give trinity a wider user/developer base.


Thanks,
Sasha
