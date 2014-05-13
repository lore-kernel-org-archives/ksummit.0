Return-Path: <prvs=0210b108c3=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E5A1270A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 01:41:46 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4B16F20245
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 01:41:46 +0000 (UTC)
Message-ID: <537178CA.60303@fb.com>
Date: Mon, 12 May 2014 21:43:38 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>
References: <5370DB7B.2040706@fb.com> <20140512231648.GA17027@kroah.com>
In-Reply-To: <20140512231648.GA17027@kroah.com>
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

On 05/12/2014 07:16 PM, Greg KH wrote:
> On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
>> Hi everyone,
>>
>> We're in the middle of upgrading the tiers here from older kernels 
>> (2.6.38, 3.2) into 3.10 and higher.
>>
>> I've been doing this upgrade game for a number of years now, with 
>> different business cards taped to my forehead and with different target 
>> workloads.
>>
>> The result is always the same...if I'm really lucky the system isn't 
>> slower, but usually I'm left with a steaming pile of 10-30% regressions.
> 
> How long have we been having this discussion?  8 years?  It's not like
> people don't know that performance testing needs to be constantly
> happening, we've been saying that for a long time.  It's just that no
> one seems to listen to us :(
> 

Yes and no.  Intel listened, and I think they have had a huge positive
impact here.  Others have as well, maybe not as consistently, but still.

I do find it really interesting that even with huge improvements all
over the place, we have a very hard time upgrading production workloads
without hitting big regressions.

Sometimes it is just a few .config entries, and sometimes we paper over
it with improvements in other areas, but it's almost always worse.

> And that is the larger problem, what can we do about that issue.
> Honestly, I don't think much, as it takes money from companies to commit
> to do this work, which no one seems to ever want to do.  What make this
> year the year that something different happens?

I can't promise different.  At best we'll tease out some new benchmarks
and try to get them into a format that get run often.

-chris
