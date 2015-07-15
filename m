Return-Path: <prvs=4638c16bc6=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B1C69F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:59:08 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3C751FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:59:07 +0000 (UTC)
Date: Wed, 15 Jul 2015 15:58:37 -0400
From: Chris Mason <clm@fb.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150715195837.GA14507@ret.masoncoding.com>
References: <20150715153725.GA12601@ret.masoncoding.com>
	<CAH3eK3TtZKdVdFTrQOEPQ0dmXLr-y1w66LW2Qbwwu0VSbiiYiA@mail.gmail.com>
	<1436989195.6856.4.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1436989195.6856.4.camel@infradead.org>
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

On Wed, Jul 15, 2015 at 08:39:55PM +0100, David Woodhouse wrote:
> On Wed, 2015-07-15 at 19:23 +0000, Kristen Accardi wrote:
> > I am very interested to hear what if any benchmarks people are doing 
> > on non-server platforms as well.  I find it difficult to know what 
> > benchmarks customers think are important for upstream linux for 
> > desktop and mobile systems that are not running Android or Chrome, 
> > and would love to hear what others are using.
> 
> I would imagine the most interesting metrics are all about power vs.
> performance, rather than pure performance. 
> 
> In fact, in the server environment where you have to pay for the power
> in the first place, and then pay again for the air conditioning to
> extract the resulting heat, I'm surprised it isn't already more of a
> consideration.

It would be fun to use turbostat or a rack power meter to
measure/compare power usage between two kernels in a given benchmark.  I
think the power meters we do have are not going to be fine grained
enough to give valid results, but if turbostat is consistent enough we
could try it.

-chris
