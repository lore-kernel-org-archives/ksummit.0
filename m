Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AC9F799A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 22:23:07 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5B08E201CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 22:23:07 +0000 (UTC)
Received: from int-mx14.intmail.prod.int.phx2.redhat.com
	(int-mx14.intmail.prod.int.phx2.redhat.com [10.5.11.27])
	by mx1.redhat.com (8.14.4/8.14.4) with ESMTP id s5DMN6Nn011120
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK) for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:23:06 -0400
Received: from annuminas.surriel.com (ovpn-113-148.phx2.redhat.com
	[10.3.113.148])
	by int-mx14.intmail.prod.int.phx2.redhat.com (8.14.4/8.14.4) with ESMTP
	id s5DMN4NU006183
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:23:06 -0400
Message-ID: <539B79C7.5090506@redhat.com>
Date: Fri, 13 Jun 2014 18:23:03 -0400
From: Rik van Riel <riel@redhat.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>	<53994FED.1080106@lougher.demon.co.uk>	<alpine.DEB.2.10.1406131158490.913@gentwo.org>
	<1402695366.20360.14.camel@pasglop>
In-Reply-To: <1402695366.20360.14.camel@pasglop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 06/13/2014 05:36 PM, Benjamin Herrenschmidt wrote:
> On Fri, 2014-06-13 at 12:02 -0500, Christoph Lameter wrote:
>> On Thu, 12 Jun 2014, Phillip Lougher wrote:
>>
>>>> 1. The need to use larger order pages, and the resulting problems with
>>>> fragmentation. Memory sizes grow and therefore the number of page structs
>>>> where state has to be maintained. Maybe there is something different? If
>>>> we use hugepages then we have 511 useless page structs. Some apps need

>> It is solvable if the objects are inherent movable. If any object
>> allocated provides a function that makes an object movable then
>> defragmentation is possible and therefore large contiguous area of memory
>> can be created at any time.
> 
> Another interesting thing is migration of pages with mapped DMA on
> them :-)
> 
> Our IOMMUs support that, but there isn't a way to hook that up into
> Linux page migration that wouldn't suck massively at this point.

The HMM stuff Jerome Glisse is working on may be a suitable
framework to add call callbacks for things like migration to.

-- 
All rights reversed
