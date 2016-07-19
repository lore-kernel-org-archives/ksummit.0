Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D7A09C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:11:42 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5FC8107
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:11:41 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id y195so857994iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 00:11:41 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719064902.GA1314@x>
	<02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 Jul 2016 09:11:40 +0200
Message-ID: <CAMuHMdVB+pG8OM0ZLt08xOrC1=+C244q0S0RoUSo9UovEzvnRw@mail.gmail.com>
To: Hannes Reinecke <hare@suse.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Jul 19, 2016 at 9:02 AM, Hannes Reinecke <hare@suse.com> wrote:
>> If the printk would show up on the console, handle it inline immediately
>> before returning, so that the user sees it on the console immediately in
>> case the very next line hangs the system.  That also helps with the
>> debugging approach of copy/pasting many instances of pr_alert("%s:%d:
>> here\n", __func__, __LINE__) and looking for the last one that shows up.
>>
>> If the printk would *not* show up on the console, and would only show up
>> asynchronously in dmesg or a log somewhere, then go ahead and throw it
>> to the asynchronous printk_kthread context to handle and return, because
>> if the next line crashes, userspace wouldn't get the opportunity to read
>> and log it anyway.
>>
>> Combined with a mechanism like "if the kernel panics, try as hard as
>> possible to dump out all the pending printks before dying", that seems
>> like a reasonable default behavior that shouldn't result in surprises.
>> If the kernel is alive enough that userspace can still log things (such
>> as if the display hangs but the kernel and userspace are still running),
>> then the kernel should also still be alive enough to process the pending
>> printks.
>>
> But it still leaves us with a possible priority inversion.
> How should we deal with situations where the async thread is running and
> someone is issuing a synchronous printk?
> Should we skip the asynchonous ones and print the synchronous one first,
> risking out-of-order messages but a higher probability that the urgent
> message is actually printed ?

There are already out-of-order messages for SMP and continuation,
some of these we want to fix, but always for the same loglevel.
If two messages have a different log level, I see no reason to (try to) keep
ordering. If keeping them together is required, the user should use pr_cont.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
