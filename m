Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D6A47681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 07:20:03 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 514DD20274
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 07:20:03 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 07 May 2014 09:20:22 +0200
Message-ID: <6762518.gEtboaLMcN@avalon>
In-Reply-To: <5369A311.2030001@huawei.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<5369A311.2030001@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 07 May 2014 11:05:53 Li Zefan wrote:
> On 2014/5/7 10:49, Masami Hiramatsu wrote:
> > (2014/05/04 20:19), Li Zefan wrote:
> >> - Testing stable kernels
> >> 
> >> The testing of stable kernels when a new version is under review seems
> >> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> >> are run on mainline/for-next only. Would be useful to also have them
> >> run on stable kernels?
> > 
> > This might be a kind of off-topic, but I'm interested in the testing
> > on the linux kernel, especially standard framework of unit-tests
> > for each feature.
> > 
> > I see the Trinity and Fengguang's 0day test are useful. But for newer
> > introduced features/bugfixes, would we have a standard tests?
> > (for some subsystems have own selftests, but not unified.)
> 
> I kind of remember Andrew once suggested a new feature can't be accepted
> unless it comes with test cases?

I'd like to add documentation to that. The amount of documentation for kernel 
APIs varies from good to non-existent. As (close to) nobody likes writing 
documentation, one solution to fix the problem in a way that can scale would 
be to spread the burden of documenting features among developers. Some 
subsystems (namely V4L2) already require this, no patch touching an API can 
come in without a corresponding documentation patch. Developers got used to it 
and I haven't noticed any slow down in the development pace.

> > I guess tools/testing/selftest will be an answer. If so, I think
> > we'd better send bugfixes with a test-case to check the bug is fixed
> > (and ensure no regression in future), wouldn't it?

-- 
Regards,

Laurent Pinchart
