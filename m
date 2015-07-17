Return-Path: <artem.bityutskiy@linux.intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4308A323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:38:26 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DE54025D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:38:25 +0000 (UTC)
Message-ID: <1437161902.14756.15.camel@linux.intel.com>
From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
Reply-To: artem.bityutskiy@linux.intel.com
To: Kristen Accardi <kaccardi@gmail.com>, Chris Mason <clm@fb.com>, David
	Woodhouse <dwmw2@infradead.org>
Date: Fri, 17 Jul 2015 22:38:22 +0300
In-Reply-To: <CAH3eK3SaKyYkrYyRGj2o6SGc+_DqPGjef1+bm8TWL-xbCfbPfg@mail.gmail.com>
References: <20150715153725.GA12601@ret.masoncoding.com>
	<CAH3eK3TtZKdVdFTrQOEPQ0dmXLr-y1w66LW2Qbwwu0VSbiiYiA@mail.gmail.com>
	<1436989195.6856.4.camel@infradead.org>
	<20150715195837.GA14507@ret.masoncoding.com>
	<CAH3eK3SaKyYkrYyRGj2o6SGc+_DqPGjef1+bm8TWL-xbCfbPfg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] benchmarking and performance
 trends
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2015-07-15 at 20:32 +0000, Kristen Accardi wrote:
> > It would be fun to use turbostat or a rack power meter to
> > measure/compare power usage between two kernels in a given 
> > benchmark.  I
> > think the power meters we do have are not going to be fine grained
> > enough to give valid results, but if turbostat is consistent enough 
> > we
> > could try it.

Yes, this is what we are trying to build/automate. Run power-aware
server benchmarks, before and after a kernel patch(es), compare, tell
the delta in a smart and easy to interpret way. Power is measured with
a real power meter. The project is internal so far.


-- 



  
  


Best Regards,

Artem Bityutskiy
