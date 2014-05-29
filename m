Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D9F65996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:43:13 +0000 (UTC)
Received: from usmailout1.samsung.com (mailout1.w2.samsung.com
	[211.189.100.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6367120119
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:43:13 +0000 (UTC)
Received: from uscpsbgex2.samsung.com
	(u123.gpu85.samsung.co.kr [203.254.195.123]) by mailout1.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N6C00HTUMNZ8W90@mailout1.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Thu,
	29 May 2014 14:43:11 -0400 (EDT)
Message-id: <53877FBD.7060003@partner.samsung.com>
Date: Thu, 29 May 2014 11:43:09 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: Greg KH <greg@kroah.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
In-reply-to: <20140529182341.GA6410@kroah.com>
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

On 05/29/2014 11:23 AM, Greg KH wrote:
> On Thu, May 29, 2014 at 11:13:25AM -0700, Daniel Phillips wrote:
>> ...I wonder though, why
>> power management is regarded as a summit-worthy topic, but core
>> functionality of the block layer is not.
> power management covers the whole tree, the block layer is "just" the
> block layer.
Power management does not cover more of the tree than the block layer 
plus memory management plus filesystem plus vfs do, all of which are 
impacted, and all of which raise user visible API questions.
>
>>>> Full disclosure dept: I have an agenda. I want to add the equivalent of
>>>> Raidz etc to Tux3 without reimplementing a logical volume manager in the
>>>> filesystem.
>>> Like btrfs is doing?  :)
>>>
>>> greg k-h
>> Not like btrfs is doing, the opposite really.
> Good, post patches then :)
>
> greg k-h
Is that a recommendation to develop a core API extension in a vacuum?

Regards,

Daniel
