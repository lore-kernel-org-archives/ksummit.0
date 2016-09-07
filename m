Return-Path: <borntraeger@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B4A09CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 13:15:09 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09F28139
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 13:15:07 +0000 (UTC)
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	u87DCkUQ134509 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 7 Sep 2016 09:15:07 -0400
Received: from e06smtp14.uk.ibm.com (e06smtp14.uk.ibm.com [195.75.94.110])
	by mx0a-001b2d01.pphosted.com with ESMTP id 25a57kyv47-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 Sep 2016 09:15:06 -0400
Received: from localhost
	by e06smtp14.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<borntraeger@de.ibm.com>; Wed, 7 Sep 2016 14:15:03 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com
	(d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by d06dlp03.portsmouth.uk.ibm.com (Postfix) with ESMTP id 9FBE51B08023
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 14:16:46 +0100 (BST)
Received: from d06av11.portsmouth.uk.ibm.com (d06av11.portsmouth.uk.ibm.com
	[9.149.37.252])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id u87DF1MK53870680
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 7 Sep 2016 13:15:01 GMT
Received: from d06av11.portsmouth.uk.ibm.com (localhost [127.0.0.1])
	by d06av11.portsmouth.uk.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with
	ESMTP id u87DF0iD031626
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 7 Sep 2016 07:15:00 -0600
To: Andy Lutomirski <luto@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
	<CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Wed, 7 Sep 2016 15:15:00 +0200
MIME-Version: 1.0
In-Reply-To: <CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Message-Id: <d9aa5e34-127c-c540-9702-cdae3943ebb4@de.ibm.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/07/2016 07:30 AM, Andy Lutomirski wrote:
> On Sep 6, 2016 10:10 PM, "Al Viro" <viro@zeniv.linux.org.uk <mailto:viro@zeniv.linux.org.uk>> wrote:
>>
>> On Wed, Sep 07, 2016 at 01:41:00AM +0300, Alexey Dobriyan wrote:
>>
>> > Gentlemen's agreement then:
>> > * kernel developers don't break tracepoints on purpose and maintain
>> >   compatibility in simple cases (long => int, deleted field, etc),
>> > * real, justified tracepoint breakage doesn't count.
>>
>> No go.  Scenario:
>>
>> 1) piss-poor API is added in form of tracehook.  It exports some information
>> that can be used to derive something genuinely interesting.  Most of the
>> time.  Corner cases are unsolvable, even though it might be possible to
>> provide the interesting part sanely.  Just not in that form.  Moreover,
>> faking the bits used to derive that information so that existing userland
>> logics would yield the right result is bloody hard and restricts what we
>> can do kernel-side, even though the real thing userland wants would not have
>> such problems.
>>
> 
> Agreed.
> 
> I wouldn't mind a policy that tracepoints are simply never stable.  Maybe we should even deliberately change them periodically to drive the point home.

In case I will be invited this is certainly a topic that I am interested in.

We faced this challenge as well for our kvm/s390 trace points. Back then
Somebody (Avi?) suggested to provide two classes on trace points (kvm and kvm-s390)
where kvm provides trace points that are a given (HW events) and kvm-s390 is 
implementation specific. The idea was that we can change kvm-s390 and keep kvm.
Now there is a user of these trace points (perf kvm), which actually limits us to
only extend existing trace points (but not changing existing fields) also for
the kvm trace points.

Do we consider userspace under tools as part of the kernel (so we can change 
trace points that are only used by these tools?

Christian

> 
> The kernel should be able to have a debug API that is genuinely for *debugging* and doesn't freeze the underlying implementation.
> 
> Windows, AFAICT, works like this.  If you write a production program that invokes WinDbg or similar, it's going to break down the road.
