Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DAEA74C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:20:18 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CA9F201E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:20:17 +0000 (UTC)
Received: from relay2.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id AD112AC85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:20:15 +0000 (UTC)
Date: Fri, 16 May 2014 00:20:14 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20140515211455.GA9632@quack.suse.cz>
Message-ID: <alpine.LNX.2.00.1405160014490.16459@pobox.suse.cz>
References: <20140515211455.GA9632@quack.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Printk softlockups
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 15 May 2014, Jan Kara wrote:

[ ... snip ... ]
> So I would really like as much involved people as possible to sit down in
> one room and think over what guarantees do we want from printk, which
> complexity is acceptable, and hopefully we can agree on a way accepted by
> all parties to resolve the issue.
> 
> People involved in the discussion:
> Jan Kara <jack@suse.cz>
> Andrew Morton <akpm@linux-foundation.org>
> Steven Rosted <rostedt@goodmis.org>
> Alan Cox <gnomes@lxorguk.ukuu.org.uk>

Yes, this story is indeed frustrating.

What is worse, printk() needs even more surgery so that it really doesn't 
lockup the machines 'super-hard' when called from NMI context.

We've spent a non-trivial amount of time in fixing this [1]. It might be a 
natural followup to the discussion you are proposing, as we are basically 
making printk() even more compilcated with that patchset ... but for a 
good reason as well.

Currently, pritnk() is able (and we've seen in happening) to just 
completely lock up the machine with all processess stuck in NMI context, 
which is rather undebuggable, so we better have it fixed. But yes, 
admittedly, it makes printk() code yet more complex, which might cause 
headache to people who are already afraid of your patchset.

[1] https://lkml.org/lkml/2014/5/9/118

-- 
Jiri Kosina
SUSE Labs
