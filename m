Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 502FD9CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Jun 2014 17:33:20 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F02D20330
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Jun 2014 17:33:14 +0000 (UTC)
To: Greg KH <greg@kroah.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
	<53877FBD.7060003@partner.samsung.com>
	<20140529234311.GB12450@kroah.com>
	<538A5B64.10203@partner.samsung.com> <20140601023458.GA5243@kroah.com>
Date: Mon, 02 Jun 2014 13:33:06 -0400
In-Reply-To: <20140601023458.GA5243@kroah.com> (Greg KH's message of "Sat, 31
	May 2014 19:34:58 -0700")
Message-ID: <yq1tx838be5.fsf@sermon.lab.mkp.net>
MIME-Version: 1.0
Content-Type: text/plain
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

>>>>> "Greg" == Greg KH <greg@kroah.com> writes:

>> Perhaps there is something wrong with that approach. Certainly in
>> regards to how to bridge the gap between what we now have for logical
>> volume support, and what we should have, or what BSD has, that
>> approach is demonstrably a perennial failure. After all these years,
>> we still have dm and md as separate islands, no usable snapshotting
>> block device, and roughly zero interaction between filesystems and
>> volume managers.

Greg> People have talked about this for over a very long time.  

Lots of talking, indeed. But I think the main problem that there's
nothing (or very little) to see here. Move along :)

Either you let the filesystem explicitly manage RAID and snapshots (like
btrfs) or you let DM or MD do it behind the filesystem's back. What's
the point of introducing a new interface to do something that we already
have?

That doesn't mean that there isn't merit to the "given this cookie, do
you happen to have another copy?" call we have discussed in the past.
Somebody just needs to do it. But I honestly think that btrfs is a much
better approach to that whole thing...

-- 
Martin K. Petersen	Oracle Linux Engineering
