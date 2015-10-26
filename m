Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0252B3EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 14:51:12 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD46716E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 14:51:10 +0000 (UTC)
Date: Mon, 26 Oct 2015 23:51:10 +0900 (KST)
From: Jiri Kosina <jikos@kernel.org>
To: Hannes Reinecke <hare@suse.com>
In-Reply-To: <562E37D7.9080105@suse.com>
Message-ID: <alpine.LNX.2.00.1510262348190.8998@pobox.suse.cz>
References: <562E37D7.9080105@suse.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: theodore.tso@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Late KS topics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 26 Oct 2015, Hannes Reinecke wrote:

>   The talk/proposal should be used to come to a consensus about
>   restricting printk() to high-priority, small volume messages,
>   and implement a different call (like log_printk()) for the
>   low-priority, high-volume traffic.

The printk() troubles are not only about the "high volume" vs. "very 
important", but also about the context of the caller.

The optimistic comment above printk() says that it can be called from any 
context, but that's not true for quite some time already.
So if printk() is going to be redesigned to be more lightweight, this 
aspect definitely needs to be taken into consideration as well.

-- 
Jiri Kosina
SUSE Labs
