Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A21B5BC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:23:44 +0000 (UTC)
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 150E4AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:23:44 +0000 (UTC)
Received: by oihq81 with SMTP id q81so23580491oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 03:23:43 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CA+5PVA6-rZxNnOh+kJc2nyde78wRa+Oqz+mNeoqTDq-VfcSqTQ@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<20150710163141.490def2a@gandalf.local.home>
	<1436560838.24408.52.camel@infradead.org>
	<CA+5PVA6-rZxNnOh+kJc2nyde78wRa+Oqz+mNeoqTDq-VfcSqTQ@mail.gmail.com>
Date: Sun, 12 Jul 2015 12:23:43 +0200
Message-ID: <CAMuHMdVqQc8LWfiJTtySVM09JG7h6xODo=C3gq83F-G3pCL3og@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Josh Boyer <jwboyer@fedoraproject.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jul 10, 2015 at 10:43 PM, Josh Boyer <jwboyer@fedoraproject.org> wrote:
>> Can one still send "from" GMail via SMTP these days? How does the 2
>> -factor authentication work? Do we cope with that?
>
> You can, but it doesn't support 2FA.  You have to generate one of
> those "device" or "application" passwords and use that instead.
> Things might have changed since I last set it up, but that is what I
> had to do to use google SMTP via mutt.

Yes, works fine. I use that on my laptop (at home I have local SMTP).

Add to .gitconfig:

[sendemail]
        smtpencryption = tls
        smtpserver = smtp.gmail.com
        smtpuser = who-am-i@gmail.com
        smtppass = secret-app-password
        smtpserverport = 587

I'd actually encourage newcomers to use that, is it teaches them how to
set up device or app-specific passwords, too ;-)

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
