Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16EEF10A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:47:15 +0000 (UTC)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6556779F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:47:14 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id q7-v6so1297763uam.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 10:47:14 -0700 (PDT)
MIME-Version: 1.0
References: <20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter>
In-Reply-To: <20180918173148.GB9728@chatter>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Sep 2018 19:47:00 +0200
Message-ID: <CAMuHMdVCBD7hY-z8=d+vf=90ZJC5x8rL=cXFS-p2wNuBWocQLg@mail.gmail.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, "Bird,
	Timothy" <Tim.Bird@sony.com>, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[ To/Cc edited manually, Mail-Followup-To: seems to be weird ]

On Tue, Sep 18, 2018 at 7:31 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Tue, Sep 18, 2018 at 05:08:02PM +0000, Tim.Bird@sony.com wrote:
> >> https://urldefense.proofpoint.com/v2/url?u=https-
> >> 3A__korg.wiki.kernel.org_userdoc_mail-23sending-5Foutgoing-
> >> 5Fmail&d=DwICAg&c=fP4tf--1dS0biCFlB0saz0I0kjO5v7-
> >> GLPtvShAo4cc&r=rUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
> >> INWqfY8MsF0&m=90EMZrRfkvlzWBNtrJ8QnHDj3-EwehEZhQiC5YJY-
> >> Uk&s=xtUgBLn5bjLazevAEIdAoHAGclbgin-D9Cek15hsuZk&e=
>
> Ick.

Cool. And that URL actually works for me, even though wget truncated it.
Can't see any damage in the actual result.

But, is the service exploitable?

> So, what if we imagine that there's an imaginary web tool that does
> this:
>
> 1. Allows people to generate an account
> 2. Verifies their email address
> 3. Instructs people how to generate a patch or series of patches
> 4. Gives a way to upload generated patches
> 5. Runs checkpatch to make sure there are no errors
> 6. Runs get_maintainer to find out where the patch(es) should be sent to
> 7. (Does more imaginary magic, such as looking up message-id references)
> 8. Mails it out
>
> Would that be useful or solve any problems? Or would that, on the
> contrary, create more problems than it solves?

Sounds useful. Perhaps even with github integration, so you can send a
series with the work in your branch? Needs some serious safeguards, to
prevent spamming everyone with e.g. the full patch series since v2.6.12-rc2.

I'm actually surprised such an accident never happened so far with
git send-email ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
