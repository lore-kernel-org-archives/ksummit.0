Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B999FBC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:11:43 +0000 (UTC)
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20A1312F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:11:43 +0000 (UTC)
Received: by oiab3 with SMTP id b3so132129856oia.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 03:11:42 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <2196355.jXBH4erg3y@avalon>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<2196355.jXBH4erg3y@avalon>
Date: Mon, 13 Jul 2015 12:11:42 +0200
Message-ID: <CAMuHMdUtvnmf1v48g+GjczrOb4+i9po1_fui_pvAAMaGWqpaVg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, Jul 13, 2015 at 12:00 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Friday 10 July 2015 21:00:12 David Woodhouse wrote:
>> On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
>> > On Thu, 9 Jul 2015 19:07:06 -0700 Darren Hart wrote:
>> > > As far as recruitment goes, I think we're talking about barriers to
>> > > first-timers and such - and git-send-email is one of those things.
>> > > Eventually, a developer>
>> > +1000
>> >
>> > I still don't use git-send-email, as I afraid that I'll blow it and en=
d
>> > up sending a thousand patches to every developer that ever touched the
>> > kernel ;-)
>>
>> Rather than sending messages, it's actually better to put them as
>> *drafts*, ready to be sent by the user's normal mailer. It's not hard
>> to do this =E2=80=94 I usually dump the mails into
>> ~/.local/share/evolution/mail/local/.Drafts/new/ for example.
>>
>> And then I can *read* them before sending them, which is good practice
>> anyway. Am I the only person who often finds a final minor nit with
>> their own patch, in that final read-through just before hitting 'send'
>> on an email?
>
> Certainly not, but what prevents you from doing that with git-send-email =
? In
> my workflow I always format patches with git-format-patch, proof-read the=
m
> with my favourite $EDITOR and then use git-send-email to send them.

Apparently some people think you should feed a rev-list to git-send-email
(a feature I learned about only recently), instead of patches created by
git-format-patch. As you need the patches for checkpatch.pl anyway...

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
