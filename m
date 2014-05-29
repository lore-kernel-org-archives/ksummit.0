Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 524E498F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 17:49:18 +0000 (UTC)
Received: from usmailout4.samsung.com (mailout4.w2.samsung.com
	[211.189.100.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4438C20118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 17:49:17 +0000 (UTC)
Received: from uscpsbgex4.samsung.com
	(u125.gpu85.samsung.co.kr [203.254.195.125]) by usmailout4.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N6C00A71K63PO80@usmailout4.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Thu,
	29 May 2014 13:49:15 -0400 (EDT)
Message-id: <53877319.5060407@partner.samsung.com>
Date: Thu, 29 May 2014 10:49:13 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org, NeilBrown <neilb@suse.de>
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
Subject: [Ksummit-discuss] [topic] Richer internal block API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Neil,

This will be my annual proposal to open a general discussion about 
improving the internal block API, to be capable of doing all the things 
that the ZFS crowd claim are impossible without rampantly violating 
filesystem/raid layering. Attacking this in a storage-specific venue 
would also be good, however I view this issue as being at least as 
central as a number of topics already raised for general consideration.

Full disclosure dept: I have an agenda. I want to add the equivalent of 
Raidz etc to Tux3 without reimplementing a logical volume manager in the 
filesystem.

Regards,

Daniel
