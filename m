Return-Path: <xemul@parallels.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3B1E88CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 15:44:10 +0000 (UTC)
Received: from relay.parallels.com (relay.parallels.com [195.214.232.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9ADE1FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 15:44:09 +0000 (UTC)
Message-ID: <53690340.4020007@parallels.com>
Date: Tue, 6 May 2014 19:44:00 +0400
From: Pavel Emelyanov <xemul@parallels.com>
MIME-Version: 1.0
To: Chris Mason <clm@fb.com>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<53679974.60206@fb.com>
	<CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
	<5368ECB7.50205@fb.com>
In-Reply-To: <5368ECB7.50205@fb.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 06:07 PM, Chris Mason wrote:

>>> Tons of interest in this topic here, mostly for the in-memory database
>>> workloads.
>>
>> Would in-memory databases be happier if there were a way to kexec
>> without losing your data?
> 
> Yes, for these apps we could just define a chunk of ram that was 
> supposed to stay the same after kexec and they would be happy.

+1, I'd be happy to have this as well.

One question about the chunk of memory you want to preserve -- is it anonymous
memory or part of a page cache?

Thanks,
Pavel
