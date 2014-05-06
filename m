Return-Path: <xemul@parallels.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 708E7AED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:23:19 +0000 (UTC)
Received: from relay.parallels.com (relay.parallels.com [195.214.232.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 044B320114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:23:18 +0000 (UTC)
Message-ID: <5368E242.7090001@parallels.com>
Date: Tue, 6 May 2014 17:23:14 +0400
From: Pavel Emelyanov <xemul@parallels.com>
MIME-Version: 1.0
To: Jiri Kosina <jkosina@suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<53679974.60206@fb.com>
	<CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060005290.3969@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1405060005290.3969@pobox.suse.cz>
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

On 05/06/2014 02:08 AM, Jiri Kosina wrote:
> On Mon, 5 May 2014, Andy Lutomirski wrote:
> 
>>> Tons of interest in this topic here, mostly for the in-memory database
>>> workloads.
>>
>> Would in-memory databases be happier if there were a way to kexec
>> without losing your data?
> 
> Well, that's basicaly what criu-based aproach is doing. With the drawback 
> that dumping during checkpointing can take a while for large tasks (such 
> as in-memory databases) I guess.

It does takes a while, but not when there's a lot of memory mapped by tasks.
This is what "preserving memory in place over kexec" is needed for -- we keep
all tasks' memory in memory, thus avoiding long delays due to writing it on
disk into images. Such thing performs poorly when there's a lot of _dirty_
memory hanging around.

Thanks,
Pavel
