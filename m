Return-Path: <shuah@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A59701C7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 18:10:41 +0000 (UTC)
Received: from mailout.easymail.ca (mailout.easymail.ca [64.68.200.34])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E60C78B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 18:10:39 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, clm@fb.com,
	dan.j.williams@intel.com, Jonathan Corbet <corbet@lwn.net>, olof@lxom.net,
	rostedt@goodmis.org, torvalds@linux-foundation.org,
	Shuah Khan <shuah@kernel.org>
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
	<1538670475.4003.10.camel@HansenPartnership.com>
From: Shuah Khan <shuah@kernel.org>
Message-ID: <82d32d94-1312-7d0d-6453-1749f5cec954@kernel.org>
Date: Fri, 5 Oct 2018 12:10:15 -0600
MIME-Version: 1.0
In-Reply-To: <1538670475.4003.10.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/04/2018 10:27 AM, James Bottomley wrote:
> On Mon, 2018-09-24 at 08:24 -0600, Shuah Khan wrote:
>> I have been trying to follow various threads on this topic and none
>> of them address the review of this patch that went in. There is no
>> mistake in the title of this topic. I do consider this topic to be
>> more general than limited to Maintainer Summit. Hence, the choice of
>> a wider Technical designation.
>>
>> So I am kicking off a thread to do the review with my comments. I am
>> in general agreement with the spirit of this change to the existing
>> "Code of Conflict".
> 
> Just as an FYI, the Zephyr project recently included the contributor
> covenant CoC minus the enforcement clause.  They did a standard github
> PR for this:
> 
> https://github.com/zephyrproject-rtos/zephyr/pull/10356
> 
> They note that they may add more enforcement details when the community
> agrees on them.
> 

Thanks for the link. It is almost identical to the Code of Conduct that
went into Linux 4.19-rc4 minus the enforcement section.

It would make sense to remove the enforcement section and discuss and
add enforcement after the usual patch review process we already have
in place.

I personally would prefer amending the CoC in Linux 4.19 removing the
enforcement details over waiting to discuss at the Maintainer and/or
Kernel summit and releasing Linux 4.19 with the CoC v1 as it reads now.

thanks,
-- Shuah
