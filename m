Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 06FA398F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:13:30 +0000 (UTC)
Received: from usmailout4.samsung.com (mailout4.w2.samsung.com
	[211.189.100.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 825571FDED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:13:29 +0000 (UTC)
Received: from uscpsbgex1.samsung.com
	(u122.gpu85.samsung.co.kr [203.254.195.122]) by usmailout4.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N6C009QNLAGHK80@usmailout4.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Thu,
	29 May 2014 14:13:28 -0400 (EDT)
Message-id: <538778C5.7010505@partner.samsung.com>
Date: Thu, 29 May 2014 11:13:25 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: Greg KH <greg@kroah.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
In-reply-to: <20140529181319.GA24218@kroah.com>
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic] Richer internal block API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/29/2014 11:13 AM, Greg KH wrote:
> On Thu, May 29, 2014 at 10:49:13AM -0700, Daniel Phillips wrote:
>> Hi Neil,
>>
>> This will be my annual proposal to open a general discussion about improving
>> the internal block API, to be capable of doing all the things that the ZFS
>> crowd claim are impossible without rampantly violating filesystem/raid
>> layering. Attacking this in a storage-specific venue would also be good,
>> however I view this issue as being at least as central as a number of topics
>> already raised for general consideration.
> Why didn't you bring this up at the filesystem summit a few months ago?
> That's the best place for it, not at the kernel summit.
Sorry, I did not have time to participate this year. I wonder though, 
why power management is regarded as a summit-worthy topic, but core 
functionality of the block layer is not.
>
>> Full disclosure dept: I have an agenda. I want to add the equivalent of
>> Raidz etc to Tux3 without reimplementing a logical volume manager in the
>> filesystem.
> Like btrfs is doing?  :)
>
> greg k-h
Not like btrfs is doing, the opposite really.

Regards,

Daniel
