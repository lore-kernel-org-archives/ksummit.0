Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5797EB08
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 18:29:00 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FCC63CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 18:28:59 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id n2so12776894oig.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 11:28:59 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170710173335.4ksnso6dzaekoxz4@piout.net>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
	<20170707113650.ee6oys5u4vq5hgdi@mwanda>
	<3908561D78D1C84285E8C5FCA982C28F613009A7@ORSMSX114.amr.corp.intel.com>
	<20170710173335.4ksnso6dzaekoxz4@piout.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 10 Jul 2017 11:28:58 -0700
Message-ID: <CA+55aFzmjA1gkaVwr5J7UoW2Ovgsqr3aJJC_18Wv59QWp94+wA@mail.gmail.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 10, 2017 at 10:33 AM, Alexandre Belloni
<alexandre.belloni@free-electrons.com> wrote:
>
> I know the yes trick works for kernels older than 3.7 but maybe people
> should start using make olddefconfig ;)

Honestly, I wish more people just ran "oldconfig" and then started
complaining about people adding insane Kconfig options.

I seem to be the only one ever pushing back against some of the people
out there that add Kconfig options that really make zero sense (or
that add the oddest drivers or features with a crazy "default this
thing to on").

                       Linus
