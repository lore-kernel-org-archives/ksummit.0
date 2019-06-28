Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 899BAD30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:07:04 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2907013A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:07:04 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id i10so1590408iol.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 14:07:04 -0700 (PDT)
To: "Luck, Tony" <tony.luck@intel.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <5a778d63-24c3-cf15-2444-49e67f4e1b96@linuxfoundation.org>
Date: Fri, 28 Jun 2019 15:07:01 -0600
MIME-Version: 1.0
In-Reply-To: <20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/28/19 2:51 PM, Luck, Tony wrote:
> On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
>> In a recent patch discussion, I learned that some maintainers would like
>> to see patch version changes in the commit log.
>>
>> I went looking in the git log and found a handful of recent commits with
>> "Changes since" type information in the commit logs. It appears to be
>> maintainer preference and a recent trend.
>>
>> I see the value in including the information. It can be informative
>> and valuable for future work in the area.
>>
>> Is this something that we would like to see in all commits going forward? If
>> so, updating submitting patch documentation and making
>> sure the version information evolves from "informal" to more formal
>> nature that fits in with the commit logs would be helpful.
>>
>> Making sure it doesn't get out of hand and commit logs don't
>> become too long to be useful would also be helpful.
>>
>> Late entry, as I happened to come across this a day or two ago.
> 
> Sounds somewhat pointless. Picking on a recent commit I see:
> 
>      Changes since:
>      v2:
>       - Added Fixes tag to patch 1
>       - Fixed typo
>       - added GSWIP_TABLE_MAC_BRIDGE_STATIC and made use of it
>       - used GSWIP_TABLE_MAC_BRIDGE in more places
>      
>      v1:
>       - fix typo signle -> single
> 
> I don't see why someone in the future trying to debug some problem
> introduced by this commit would care that earlier versions had some
> spelling mistakes or were missing a Fixes: tag. :-)
> 

Right. One of reasons I started this thread is to avoid this type of
change info. getting in which isn't really useful.

> Where substantial changes were made between patch versions it
> would be useful if the commit logs were adapted to say things like:
> 
>   "We considered using technique X to do this but rejected
>    it because person Y said it had problem Z"
> 

There is value to having information about alternatives if any.
But not the trivial change history.

> That captures for posterity the useful information without
> bulking up the commit log with the blow-by-blow deltas of
> how the patch series evolved across 27 versions submitted
> to the mailing list.
> 

Yes this is really my concern that once we start accepting patches
with patch version information without paying attention to the
quality and setting some guidelines, we can end up with very long
commit logs.

thanks,
-- Shuah
