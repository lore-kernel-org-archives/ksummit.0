Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 074389F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:14:08 +0000 (UTC)
Received: from mail-ob0-f193.google.com (mail-ob0-f193.google.com
	[209.85.214.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC2F5AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:14:06 +0000 (UTC)
Received: by obbgp5 with SMTP id gp5so49943obb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 00:14:06 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20150713202818.23310729@lwn.net>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
Date: Tue, 14 Jul 2015 09:14:06 +0200
Message-ID: <CAMuHMdVrWoV=RZQXEG7cgDxrCR6aepT8oZQoQnYW8ZBOOHzdOA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Jonathan Corbet <corbet@lwn.net>
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

On Tue, Jul 14, 2015 at 4:28 AM, Jonathan Corbet <corbet@lwn.net> wrote:
> On Mon, 13 Jul 2015 21:02:26 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
>
>> Yes, it's great if we can catch things in -next. But I don't believe
>> that patches that fix bugs found in Linus's tree should sit in next
>> before going into Linus's tree, because those patches are basically
>> fixing stuff that was already in next and wasn't discovered until it
>> hit Linus's tree. Which is why I say it's a waste of time to put it in
>> next before sending straight to Linus.

It's about not introducing regressions to fix other regressions (and not
getting flamed by Linus)...

> That, of course, assumes that these fixes don't introduce *other* bugs
> that might just be caught in -next...
>
> In general, though, I think a lot of people see -next as -rc1 without the
> quality control; it's volatile and scary.  So it's not surprising that it
> doesn't get a lot of real-world testing.  And, as long as that's the case,
> there's going to be a lot of bugs that are never caught in -next.

In the old (pre-git/bk?) days, -rc1 was volatile and scary, and "release
candidate" was really a misnomer. You didn't dare to trust any system
you cared a bit about with an -rc before -rc3 or -rc4.

These days that role is played by -next, and -rc1 is usually fairly usable.
But it seems we can't get rid of the "early -rc is to be avoided" stamp.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
