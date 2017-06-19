Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3D27C4A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 06:22:20 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 42A26AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 06:22:18 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
Date: Mon, 19 Jun 2017 08:22:13 +0200
MIME-Version: 1.0
In-Reply-To: <20170619052146.GA2889@jagdpanzerIV.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/19/2017 07:21 AM, Sergey Senozhatsky wrote:
> Hello,
> 
> 	I, Petr Mladek and Steven Rostedt would like to propose a printk
> tech topic (as suggested by Steven). We are currently exploring the idea
> of complete redesign and rework of printk and it would be extremely helpful
> to hear from the community. printk serves different purposes, and some of
> requirements of printk tend to contradict each other; printk is monolithic
> and quite heavy, no wonder, it causes problems sometimes.
> 
> 	So the questions are (a short list) - what the new printk should be?
> should it remain monolithic, or can we split it? (e.g. core kernel messages
> don't share the log buffer with debug/info messages, etc.) what are the
> printk requirements? I've started playing with the idea of moving printk to
> per-CPU model: log buffers, per-CPU printk flusher threads. does is it make
> sense (wrt to printk requirements) to have direct and in-direct flushers of
> printk messages (e.g. core kernel messages are printed directly; debug/info
> messages are printed by printing kthreads, etc. well, unless in panic)? ...
> 
> 	There are many other questions, so it'd be great to have a
> brainstorming session.
> 
I'm all for it.
Personally, I'd love to see the printk mechanism split into something
which can be used primarily for logging/debugging (ie slow,
non-critical, large messages) and emergency messaging (ie fast, direct
messages like kernel oops and KERN_EMERG thingies).
Plus I'd love to decouple the message generation (ie writing into the
message log) from message output (ie printing out the message log).
That currently is a major performance drag when using slow output
devices like serial console.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
