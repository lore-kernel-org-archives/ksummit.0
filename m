Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2418F94E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 20:31:14 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 737C7116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 20:31:13 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Takashi Iwai <tiwai@suse.de>
Date: Tue, 26 Jul 2016 22:36:15 +0200
Message-ID: <1560409.5vnWShrmDy@vostro.rjw.lan>
In-Reply-To: <s5h60rs31z3.wl-tiwai@suse.de>
References: <s5h60rs31z3.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Thorsten Leemhuis <regressions@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, July 26, 2016 04:31:28 PM Takashi Iwai wrote:
> As this topic doesn't seem posted yet, let me pitch.

I'm interested in this one.

> Until recently, we've had no regression tracking since Rafael stepped
> down from the maintenance of regression list.

There were other people trying to do that when I had stopped doing it, but
they gave up eventually.

> Now fortunately, Thorsten started gathering and posting the regression
> reports on ML again, and this helps already a lot.
> 
> Though, it immediately raised me a few things to be discussed:
> 
> - How can we keep it rolling stably at this time?
> - How can each developer / maintainer help or be involved better?
> - Can we provide better services than only a plain text list on ML?

I think it is possible, but it also depends on how much time the person
who tracks regressions can spend on it.

It may be automated somewhat (from experience), but still involves quite a bit
of manual work.

The fact that the list is only sent by email makes it a bit hard to follow
(you always need to look for that particular email in your mailbox) and if you
are a maintainer, it isn't easy to say upfront which bugs may be relevant to you
without checking them one by one.

That's why I was sending bug-specific messages to maintainers too when I was
tracking regressions (it was possible ot opt-out from that, but I'm not sure
whether or not that was a good idea).

> Also, since the regression on stable trees was a hot topic:
> 
> - Should the regression tracking cover the stable trees?  How well
>   does it scale?

>From experience, work needed grows linearly with the number of releases you
are trying to track at the same time.  I've never tracked more than two or three
(maybe) at a time IIRC, because of exactly that.

Thanks,
Rafael
