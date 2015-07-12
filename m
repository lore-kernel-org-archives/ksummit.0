Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DE10CBB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:17:26 +0000 (UTC)
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AA72AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:17:26 +0000 (UTC)
Received: by oibn4 with SMTP id n4so6565859oib.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 03:17:25 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <1436558412.24408.35.camel@infradead.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
Date: Sun, 12 Jul 2015 12:17:25 +0200
Message-ID: <CAMuHMdWz3OXiat0dfDtLtVErJorbOpehdD-iXHw7a1uJG2uPyA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 10:00 PM, David Woodhouse <dwmw2@infradead.org> wro=
te:
> On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
>> On Thu, 9 Jul 2015 19:07:06 -0700
>> Darren Hart <dvhart@infradead.org> wrote:
>> > As far as recruitment goes, I think we're talking about barriers to fi=
rst-timers
>> > and such - and git-send-email is one of those things. Eventually, a de=
veloper
>>
>> +1000
>>
>> I still don't use git-send-email, as I afraid that I'll blow it and end
>> up sending a thousand patches to every developer that ever touched the
>> kernel ;-)
>
> Rather than sending messages, it's actually better to put them as
> *drafts*, ready to be sent by the user's normal mailer. It's not hard
> to do this =E2=80=94 I usually dump the mails into
> ~/.local/share/evolution/mail/local/.Drafts/new/ for example.

"Importing" patches in emails is one of the major reasons why they become
corrupted.

> And then I can *read* them before sending them, which is good practice
> anyway. Am I the only person who often finds a final minor nit with
> their own patch, in that final read-through just before hitting 'send'
> on an email?

"vi 0*patch"?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds
