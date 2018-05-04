Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2558131
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 12:28:40 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8D0C466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 12:28:38 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: David Howells <dhowells@redhat.com>,
	Sasha Levin <Alexander.Levin@microsoft.com>
In-Reply-To: <8669.1525427874@warthog.procyon.org.uk>
References: <20180503190431.GV18390@sasha-vm> <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk>
Date: Fri, 04 May 2018 15:31:17 +0300
Message-ID: <87fu377gbu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 04 May 2018, David Howells <dhowells@redhat.com> wrote:
> Sasha Levin via Ksummit-discuss wrote:
>
>> 	Cc: stable@vger.kernel.org # commit-id-of-(2)
>
> Can you please not do this?  This screws up email address parsing in some
> tools.

This has been documented since

commit 8e9b9362266dd16255473c080d846b13e27247bf
Author: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Date:   Sun Dec 6 12:24:31 2009 +0100

    Doc/stable rules: add new cherry-pick logic

in v2.6.33 so seems like there should have been enough time to fix the
tools.


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
