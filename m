Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF00FC84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:40:46 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FD56CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:40:46 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id k3so13652345ita.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 08:40:46 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20170705152026.rkw73q2f6xmiju37@sirena.org.uk>
References: <ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705143341.oees22k2snhtmkxo@sirena.org.uk>
	<20170705103658.226099c6@gandalf.local.home>
	<1499266228.3668.10.camel@HansenPartnership.com>
	<20170705105651.5da9c969@gandalf.local.home>
	<1499267389.3668.16.camel@HansenPartnership.com>
	<20170705152026.rkw73q2f6xmiju37@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 5 Jul 2017 17:40:44 +0200
Message-ID: <CAMuHMdU401+nZxJJU2O=x33LGU4iEAGNyYmhWvc2jCcFGdsLRw@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Carlos O'Donell <carlos@redhat.com>,
	"linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>,
	James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 5, 2017 at 5:20 PM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, Jul 05, 2017 at 08:09:49AM -0700, James Bottomley wrote:
>> On Wed, 2017-07-05 at 10:56 -0400, Steven Rostedt wrote:
>> > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>
>> > > you're protecting was accessed outside the lock, which is the usual
>> > > source of concurrency problems.  In other words lockdep is useful
>> > > but it's not a panacea.
>
>> > Still not an excuse to not have lockdep enabled during tests.
>
>> OK, what makes you think lockdep isn't enabled?  Since Kconfig is so
>> complex, I usually use a distro config ... they have it enabled (or at
>> least openSUSE does), so it's enabled for everything I do.
>
> Yeah, I see enough reports with it in embedded contexts to make me think
> people use it there.  I know I tend to have it turned on most of the
> time.  The concurrency stuff I'm thinking of here is more the things
> you're mentioning with just not taking locks at all when they are needed
> or concurrency with hardware.

I try to have it enabled as much as possible.
However, as it increases kernel size (huge static tables), hitting boot
loader limitations on several boards, I cannot enable all debugging
I would like to on all boards.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
