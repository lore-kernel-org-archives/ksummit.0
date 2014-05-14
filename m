Return-Path: <prvs=0211dc5819=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 87EBC4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:25:46 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 206641FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:25:46 +0000 (UTC)
Message-ID: <5373611B.5080008@fb.com>
Date: Wed, 14 May 2014 08:27:07 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: Li Zefan <lizefan@huawei.com>
References: <5370DB7B.2040706@fb.com> <20140512231648.GA17027@kroah.com>
	<537178CA.60303@fb.com> <5372C779.8070602@huawei.com>
In-Reply-To: <5372C779.8070602@huawei.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
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

On 05/13/2014 09:31 PM, Li Zefan wrote:
> On 2014/5/13 9:43, Chris Mason wrote:
>> On 05/12/2014 07:16 PM, Greg KH wrote:
>>> On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
>>>> Hi everyone,
>>>>
>>>> We're in the middle of upgrading the tiers here from older kernels 
>>>> (2.6.38, 3.2) into 3.10 and higher.
>>>>
>>>> I've been doing this upgrade game for a number of years now, with 
>>>> different business cards taped to my forehead and with different target 
>>>> workloads.
>>>>
>>>> The result is always the same...if I'm really lucky the system isn't 
>>>> slower, but usually I'm left with a steaming pile of 10-30% regressions.
>>>
>>> How long have we been having this discussion?  8 years?  It's not like
>>> people don't know that performance testing needs to be constantly
>>> happening, we've been saying that for a long time.  It's just that no
>>> one seems to listen to us :(
>>>
>>
>> Yes and no.  Intel listened, and I think they have had a huge positive
>> impact here.  Others have as well, maybe not as consistently, but still.
>>
>> I do find it really interesting that even with huge improvements all
>> over the place, we have a very hard time upgrading production workloads
>> without hitting big regressions.
>>
>> Sometimes it is just a few .config entries,
> 
> Do you mean some regressions are introduced by new configs i.e. new
> features? If so, I don't think that can be strictly called regressions.
> 

Agreed, at least unless the .config choice that makes it slow is the new
default.  +/- slub, I haven't hit this case.

-chris
