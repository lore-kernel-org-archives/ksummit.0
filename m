Return-Path: <borntraeger@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2EAE2360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 17:05:14 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CDCF1C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 17:05:13 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6MH3uGW065200 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:05:12 -0400
Received: from e06smtp14.uk.ibm.com (e06smtp14.uk.ibm.com [195.75.94.110])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24bhktd4rn-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:05:12 -0400
Received: from localhost
	by e06smtp14.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<borntraeger@de.ibm.com>; Fri, 22 Jul 2016 18:05:10 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com
	(d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by d06dlp02.portsmouth.uk.ibm.com (Postfix) with ESMTP id BE0FE2190046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 18:04:35 +0100 (BST)
Received: from d06av02.portsmouth.uk.ibm.com (d06av02.portsmouth.uk.ibm.com
	[9.149.37.228])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id u6MH58gH18153884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 17:05:08 GMT
Received: from d06av02.portsmouth.uk.ibm.com (localhost [127.0.0.1])
	by d06av02.portsmouth.uk.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with
	ESMTP id u6MH5853005632
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:05:08 -0600
To: David Woodhouse <dwmw2@infradead.org>, David Howells <dhowells@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <15569.1469184060@warthog.procyon.org.uk>
	<5792414F.5040902@de.ibm.com>
	<1469203184.120686.212.camel@infradead.org>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Fri, 22 Jul 2016 19:05:06 +0200
MIME-Version: 1.0
In-Reply-To: <1469203184.120686.212.camel@infradead.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Message-Id: <57925242.3000207@de.ibm.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/22/2016 05:59 PM, David Woodhouse wrote:
> On Fri, 2016-07-22 at 17:52 +0200, Christian Borntraeger wrote:
>> On 07/22/2016 12:41 PM, David Howells wrote:
>>> Are there additional things we can get the compiler to do for us?  Some
>>> things I've seen brought up:
>>>
>>>  (1) Additional __atomic_*() ops could be useful.  Suggestions I've heard
>>>      include direct LL/SC support - though the compiler people don't seem so
>>>      keen on that.
>>>
>>>  (2) -mmodel=kernel flag so that the compiler can optimise better for the
>>>      kernel memory model.
>>
>> Some years ago (actually many) Linus proposed to have an endianess attribute to data
>> types, so that the compiler can do the bswap automatically. For some reason this
>> was never implemented, but this might be a good idea anyway.
>>
>> e.g. 
>>
>> unsigned long x[10] __attribute__(("bigendian"));
> 
> I'm not sure Linus proposed that. I certainly did, many times.

Yes, I know at least 3 people suggesting that and thinking this is useful
( Can you beat Linus' 2001 https://gcc.gnu.org/ml/gcc/2001-12/msg00932.html? ;-) )


> 
> With the work I put in to make use of __builtin_bswapXX() we do have a
> *certain* amount of the functionality that full endianness attribution
> would give us — the compiler can see and optimise certain
> load/mask/save operations, and can use movbe and equivalent
> instructions.
> 
> But a full implementation that let us just do assignment without
> jumping through the hoops might still be nice.

Absolutely.
