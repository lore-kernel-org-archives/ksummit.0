Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7A4E782D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 16:49:52 +0000 (UTC)
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F382E20118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 16:49:51 +0000 (UTC)
Received: by mail-ie0-f178.google.com with SMTP id rl12so2944472iec.37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 09:49:51 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140530234003.GG25854@kroah.com>
References: <CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
	<1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528173553.GE5099@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F328205B1@ORSMSX114.amr.corp.intel.com>
	<20140528183825.GA21477@sirena.org.uk>
	<alpine.DEB.2.10.1405282325020.3952@nanos>
	<5386FDAB.3010106@huawei.com> <20140529174122.GC7889@kroah.com>
	<20140530172858.GA16343@linux.vnet.ibm.com>
	<20140530234003.GG25854@kroah.com>
Date: Sat, 31 May 2014 18:49:51 +0200
Message-ID: <CAMuHMdU+AX8GEPVG-imkYff_=tnHDv6-BvSAujCOzRdY0-4MNA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 11:59 PM, Thomas Gleixner <tglx@linutronix.de> wrote:
> I really started to put breaks into this cycle of hell, where I get
> spammed with a 30+ patch series in the morning and after I spent some
> quality time looking at it and replying to a particular patch, I get
> another spam bomb within a few hours, which is not much better than
> the previous one.

That's indeed an issue. Some large series are immediately reposted for every
single (sometimes trivial) change suggested by a commenter.
This also leads to inflated patch version numbers. I'm already getting nervous
when I have to send out a v3 or v4 myself, but from a quick search, v29
seems to be the current record on lkml...

Does git send-email remember when the previous version of a series was
sent out?
If yes, it could refuse to resend it too soon. The back off period would
depend on the size of the patch series (large patch series need more delay).

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
