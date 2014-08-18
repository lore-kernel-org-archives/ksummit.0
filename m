Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 634C892B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 06:21:17 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1C0341F8AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 06:21:17 +0000 (UTC)
Date: Mon, 18 Aug 2014 14:21:01 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Chris Mason <clm@fb.com>
Message-ID: <20140818062101.GA12707@localhost>
References: <5370DB7B.2040706@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5370DB7B.2040706@fb.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Chris,

> The KS dates should put us right at the end of our regression hunt, I can
> talk through the main problems we hit, how (if) we fixed them and hopefully
> offer tests to keep them from coming back.

It'd be sweet if your tests (and others') can be added to

        git://git.kernel.org/pub/scm/linux/kernel/git/wfg/lkp-tests

Which runs in Intel actively to keep the relevant regressions from
coming back.

Currently the repository has test cases

wfg /c/lkp-tests% ls tests
aim7       debug-test  fio-jbod  glbenchmark  kbuild            nepim    packetdrill            piglit  sockperf  tlbflush        wrapper
blogbench  ebizzy      fsmark    hackbench    kernel_selftests  netperf  perf-bench-numa-mem    pigz    tbench    unixbench       xfstests
dbench     fileio      ftq       iozone       linpack           nuttcp   perf-bench-sched-pipe  qperf   tcrypt    vm-scalability
dd         fio         fwq       iperf        ltp               oltp     pft                    sleep   thrulay   will-it-scale

Which is not only too few in number, but also rather limited in test
parameters and system setups. For example, if run them in different
cgroup/numa/governor/network/... setups, or even with different
kernel configs, the results may become quite different.

Thanks,
Fengguang
