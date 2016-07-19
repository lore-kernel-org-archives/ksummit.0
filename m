Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7626E256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 06:56:21 +0000 (UTC)
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E8B83AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 06:56:20 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 237EC47A684
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 08:49:11 +0200 (CEST)
Date: Mon, 18 Jul 2016 23:49:02 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20160719064902.GA1314@x>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 19, 2016 at 08:17:19AM +0200, Hannes Reinecke wrote:
> Yes. The main problem stems from the fact that printk has two different
> and conflicting use-cases:
> - Really urgent, 'I am about to die' messages. Which obviously need to
>   be printed out as fast as possible.
> - Rather largish, information/logging 'what I always wanted to tell you'
>   type of messages. These messages tend to be very large, but at the end
>   it doesn't really matter _when_ they'll be printed as they are
>   time-stamped anyway.
> 
> For the first use-case you absolutely need a synchronous printk, but
> this is a complete killer for the second case.
> And OTOH having a separate thread is really the way to go for the second
> case, but an absolute no-go for the first.
> 
> So I really wonder if it does make sense to lump both use-cases into one
> call, or whether it wouldn't be better to have two distinct calls
> for that (or, for the sake of argument, use KERN_EMERG to trigger
> synchronous printks).

For the sake of argument: what about using loglevel to distinguish the
two cases by default?

If the printk would show up on the console, handle it inline immediately
before returning, so that the user sees it on the console immediately in
case the very next line hangs the system.  That also helps with the
debugging approach of copy/pasting many instances of pr_alert("%s:%d:
here\n", __func__, __LINE__) and looking for the last one that shows up.

If the printk would *not* show up on the console, and would only show up
asynchronously in dmesg or a log somewhere, then go ahead and throw it
to the asynchronous printk_kthread context to handle and return, because
if the next line crashes, userspace wouldn't get the opportunity to read
and log it anyway.

Combined with a mechanism like "if the kernel panics, try as hard as
possible to dump out all the pending printks before dying", that seems
like a reasonable default behavior that shouldn't result in surprises.
If the kernel is alive enough that userspace can still log things (such
as if the display hangs but the kernel and userspace are still running),
then the kernel should also still be alive enough to process the pending
printks.

- Josh Triplett
