Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C4F1A8E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:26:54 +0000 (UTC)
Received: from usmailout2.samsung.com (mailout2.w2.samsung.com
	[211.189.100.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4CC732026E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:26:54 +0000 (UTC)
Received: from uscpsbgex3.samsung.com
	(u124.gpu85.samsung.co.kr [203.254.195.124]) by mailout2.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N7000LTIRCSDR30@mailout2.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	11 Jun 2014 15:26:52 -0400 (EDT)
Received: from sisasmtp.sisa.samsung.com ([105.144.21.116])
	by usmmp2.samsung.com
	(Oracle Communications Messaging Server 7u4-27.01(7.0.4.27.0) 64bit
	(built Aug
	30 2012)) with ESMTP id <0N7000IEARCR6540@usmmp2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	11 Jun 2014 15:26:52 -0400 (EDT)
Message-id: <5398AD79.8080403@partner.samsung.com>
Date: Wed, 11 Jun 2014 12:26:49 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
In-reply-to: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/11/2014 12:03 PM, Christoph Lameter wrote:
> Well this is likely to be a bit of a hot subject but I have been thinking
> about this for a couple of years now. This is just a loose collection of
> some concerns that I see mostly at the high end but many of these also are
> valid for more embedded solutions that have performance issues as well
> because the devices are low powered (Android?).
>
> There are numerous issues in memory management that create a level of
> complexity that suggests a rewrite would at some point be beneficial:
>
> 1. The need to use larger order pages, and the resulting problems with
> fragmentation. Memory sizes grow and therefore the number of page structs
> where state has to be maintained. Maybe there is something different? If
> we use hugepages then we have 511 useless page structs. Some apps need
> linear memory where we have trouble and are creating numerous memory
> allocators (recently the new bootmem allocator and CMA. Plus lots of
> specialized allocators in various subsystems).
>
>

mem_map should be a radix tree?

Regards,

Daniel
