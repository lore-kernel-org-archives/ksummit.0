Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B97C87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:17:09 +0000 (UTC)
Received: from blackbird.sr71.net (www.sr71.net [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4C746B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:17:09 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Johannes Weiner <hannes@cmpxchg.org>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<1469742103.2324.9.camel@HansenPartnership.com>
	<20160801154639.GD7603@cmpxchg.org>
	<1470067585.18751.24.camel@HansenPartnership.com>
From: Dave Hansen <dave@sr71.net>
Message-ID: <579F74B4.1060302@sr71.net>
Date: Mon, 1 Aug 2016 09:11:32 -0700
MIME-Version: 1.0
In-Reply-To: <1470067585.18751.24.camel@HansenPartnership.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "Kleen, Andi" <andi.kleen@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory thrashing,
 was Re: Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/01/2016 09:06 AM, James Bottomley wrote:
>>  With persistent memory devices you might actually run out of CPU 
>> > capacity while performing basic page aging before you saturate the 
>> > storage device (which is why Andi Kleen has been suggesting to 
>> > replace LRU reclaim with random replacement for these devices). So 
>> > storage device saturation might not be the final answer to this
>> > problem.
> We really wouldn't want this.  All cloud jobs seem to have memory they
> allocate but rarely use, so we want the properties of the LRU list to
> get this on swap so we can re-use the memory pages for something else. 
>  A random replacement algorithm would play havoc with that.

I don't want to put words in Andi's mouth, but what we want isn't
necessarily something that is random, but it's something that uses less
CPU to swap out a given page.

All the LRU scanning is expensive and doesn't scale particularly well,
and there are some situations where we should be willing to give up some
of the precision of the current LRU in order to increase the throughput
of reclaim in general.
