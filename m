Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5214A9F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:03:17 +0000 (UTC)
Received: from mail-ob0-f194.google.com (mail-ob0-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 271A0AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:03:16 +0000 (UTC)
Received: by obbha12 with SMTP id ha12so38773obb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 00:03:15 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20150713210226.519dedfd@gandalf.local.home>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
Date: Tue, 14 Jul 2015 09:03:15 +0200
Message-ID: <CAMuHMdXuq20CQNPs6PbOrD4wkrEWFDcyE=HGN29rg3=fknk_KA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 14, 2015 at 3:02 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Mon, 13 Jul 2015 20:42:00 -0400
> Sasha Levin <sasha.levin@oracle.com> wrote:
>> > I disagree. I thought next was a place to have integration of new
>> > development, and not just a place to test. Really, how many people test
>> > next compared to Linus's tree? I trip over bugs all the times in
>> > Linus's tree that's been in -next for almost a whole release cycle.
>>
>> I didn't say that it's not for integration, I just said that with the
>> recent increase in testing by various people/organizations the focus
>> seems to be shifting to catching things in -next before they get into
>> Linus's tree.
>
> Yes, it's great if we can catch things in -next. But I don't believe
> that patches that fix bugs found in Linus's tree should sit in next
> before going into Linus's tree, because those patches are basically
> fixing stuff that was already in next and wasn't discovered until it
> hit Linus's tree. Which is why I say it's a waste of time to put it in
> next before sending straight to Linus.

Worse, sometimes issues were detected in -next, but the problematic
commits still migrated to Linus' tree, despite the detection (and sometimes
even despite the availability of a fix for several weeks).

I'm not aware of any of these having migrated to -stable too, but I guess
it might happen.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
