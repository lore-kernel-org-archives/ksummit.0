Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B76C9F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C11C2183
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:57 +0000 (UTC)
Date: Wed, 20 Jul 2016 08:02:45 +0200
From: Jan Kara <jack@suse.cz>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20160720060245.GD3918@quack2.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719064902.GA1314@x>
	<02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
	<CAMuHMdVB+pG8OM0ZLt08xOrC1=+C244q0S0RoUSo9UovEzvnRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVB+pG8OM0ZLt08xOrC1=+C244q0S0RoUSo9UovEzvnRw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue 19-07-16 09:11:40, Geert Uytterhoeven wrote:
> On Tue, Jul 19, 2016 at 9:02 AM, Hannes Reinecke <hare@suse.com> wrote:
> >> If the printk would show up on the console, handle it inline immediately
> >> before returning, so that the user sees it on the console immediately in
> >> case the very next line hangs the system.  That also helps with the
> >> debugging approach of copy/pasting many instances of pr_alert("%s:%d:
> >> here\n", __func__, __LINE__) and looking for the last one that shows up.
> >>
> >> If the printk would *not* show up on the console, and would only show up
> >> asynchronously in dmesg or a log somewhere, then go ahead and throw it
> >> to the asynchronous printk_kthread context to handle and return, because
> >> if the next line crashes, userspace wouldn't get the opportunity to read
> >> and log it anyway.
> >>
> >> Combined with a mechanism like "if the kernel panics, try as hard as
> >> possible to dump out all the pending printks before dying", that seems
> >> like a reasonable default behavior that shouldn't result in surprises.
> >> If the kernel is alive enough that userspace can still log things (such
> >> as if the display hangs but the kernel and userspace are still running),
> >> then the kernel should also still be alive enough to process the pending
> >> printks.
> >>
> > But it still leaves us with a possible priority inversion.
> > How should we deal with situations where the async thread is running and
> > someone is issuing a synchronous printk?
> > Should we skip the asynchonous ones and print the synchronous one first,
> > risking out-of-order messages but a higher probability that the urgent
> > message is actually printed ?
> 
> There are already out-of-order messages for SMP and continuation,
> some of these we want to fix, but always for the same loglevel.
> If two messages have a different log level, I see no reason to (try to) keep
> ordering. If keeping them together is required, the user should use pr_cont.

This does not really match reality. Just look at how Oops is printed. It is
a mix of different loglevels and you certainly want to print them together
and in the right order. Generally I don't think reordering messages is
acceptable because less severe messages before a critical message can be
very important in analyzing what has happened.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
