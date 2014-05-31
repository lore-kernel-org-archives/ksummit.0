Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CA26F85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 22:44:56 +0000 (UTC)
Received: from usmailout3.samsung.com (mailout3.w2.samsung.com
	[211.189.100.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B6EA7201D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 22:44:55 +0000 (UTC)
Received: from uscpsbgex1.samsung.com
	(u122.gpu85.samsung.co.kr [203.254.195.122]) by usmailout3.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N6G009N1N6UU780@usmailout3.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Sat,
	31 May 2014 18:44:54 -0400 (EDT)
Message-id: <538A5B64.10203@partner.samsung.com>
Date: Sat, 31 May 2014 15:44:52 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: Greg KH <greg@kroah.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
	<53877FBD.7060003@partner.samsung.com>
	<20140529234311.GB12450@kroah.com>
In-reply-to: <20140529234311.GB12450@kroah.com>
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

On 05/29/2014 04:43 PM, Greg KH wrote:
> ...you know how this all works, we don't have to have meetings in 
> order to do design decisions that are "large".


Perhaps there is something wrong with that approach. Certainly in 
regards to how to bridge the gap between what we now have for logical 
volume support, and what we should have, or what BSD has, that approach 
is demonstrably a perennial failure. After all these years, we still 
have dm and md as separate islands, no usable snapshotting block device, 
and roughly zero interaction between filesystems and volume managers. 
The larger issue would be, why is there no design process in Linux for 
large design issues? Maybe that is the core topic that is really missing.

Regards,

Daniel
