Return-Path: <regressions@leemhuis.info>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB4CB956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:28:30 +0000 (UTC)
Received: from basicbox7.server-home.net (basicbox7.server-home.net
	[195.137.212.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29B37153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:28:30 +0000 (UTC)
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Takashi Iwai <tiwai@suse.de>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Message-ID: <4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
Date: Wed, 27 Jul 2016 14:28:26 +0200
MIME-Version: 1.0
In-Reply-To: <1560409.5vnWShrmDy@vostro.rjw.lan>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(@Takashi & @Rafel: repost after subscribing to ksummit-discuss, 
which is moderated for non-members :-/ )

On 26.07.2016 22:36, Rafael J. Wysocki wrote:
> > On Tuesday, July 26, 2016 04:31:28 PM Takashi Iwai wrote:
>> >> As this topic doesn't seem posted yet, let me pitch.
> > I'm interested in this one.
> > 
>> >> Until recently, we've had no regression tracking since Rafael stepped
>> >> down from the maintenance of regression list.
> > There were other people trying to do that when I had stopped doing it, but
> > they gave up eventually.

Yeah, I guess that can easily happen sooner or later, because from what
I can see it's a lot of manual and boring work that only now and then
feels rewarding :-/

>> >> Now fortunately, Thorsten started gathering and posting the regression
>> >> reports on ML again, and this helps already a lot.
>> >>
>> >> Though, it immediately raised me a few things to be discussed:
>> >>
>> >> - How can we keep it rolling stably at this time?
>> >> - How can each developer / maintainer help or be involved better?
>> >> - Can we provide better services than only a plain text list on ML?
> > I think it is possible, but it also depends on how much time the person
> > who tracks regressions can spend on it.
> >
> > It may be automated somewhat (from experience), but still involves quite a bit
> > of manual work.

My rough plan after doing regression tracking for a few weeks now: Look
a bit closer at patchwork and check if it can be adjusted to automate
the boring parts of regression tracking. I have a mostly finished mail
that has some more details on what got me thinking into that direction,
but I'm on holiday till Friday and wanted to send it out once I'm home
again.

>> >> Also, since the regression on stable trees was a hot topic:
>> >> - Should the regression tracking cover the stable trees?  How well
>> >>   does it scale?
> > From experience, work needed grows linearly with the number of releases you
> > are trying to track at the same time.  I've never tracked more than two or three
> > (maybe) at a time IIRC, because of exactly that.

Yeah, without more manpower or some automation (like bitkeeper/git made
Linus scale better) it might lead to a quick burn out if one wants to
track more then two releases.

But OTOH I think it would be really good to track at least the latest
stable tree, as quite a few people only start testing kernel versions
like 4.7 once they got released. Sure, it's not as easy to revert
changes after that point, but it worthwhile nevertheless afaics.

Ciao, Thorsten
