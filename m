Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42131DC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:05:55 +0000 (UTC)
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A15C58AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:05:54 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id c19so16904472lfm.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:05:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
	<CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
	<alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
	<bf269ea7-6a9c-25db-5b97-958d9e15bddd@infradead.org>
	<20190717073130.GA1021@kunai>
In-Reply-To: <20190717073130.GA1021@kunai>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Jul 2019 18:05:41 +0200
Message-ID: <CACRpkdbydfyx8LMG8FzCzAYsTP9n57K0yw9_04wgtDSjm+B3iQ@mail.gmail.com>
To: Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 17, 2019 at 9:31 AM Wolfram Sang <wsa@the-dreams.de> wrote:

> Guys, I am just trying to better cope with an amount of patches I can't
> handle on my own currently.

Maintainers don't scale right? :/

What I tend to do is git log on whatever is affected by a patch
and then pick some people who touched the code recently
and just add them to CC and ask them to help. This is especially
nice with drivers as I can quickly see (by intuition) whether
they are doing some general cleanup or actually are running
and testing the hardware, even if they didn't sign up as
maintainers. Sometimes nudge them to maintain the stuff
they seem so intimate with by adding themselves to
MAINTAINERS. If it was a while since they did the changes
I often do git log and grep for their name as they often
just changed email address.

It would be really neat if get_maintainer could do this but I
think it requires real intelligence rather than pattern-matching.

Just my =E2=82=AC0.01

Linus Walleij
