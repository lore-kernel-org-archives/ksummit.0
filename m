Return-Path: <peter.maydell@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7228A8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 22:41:28 +0000 (UTC)
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32CB22036B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 22:41:26 +0000 (UTC)
Received: by mail-la0-f53.google.com with SMTP id ec20so4655130lab.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 15:41:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4931877.zNfKfvcgox@wuerfel>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140516184205.GL27822@titan.lakedaemon.net>
	<1400278842.2647.62.camel@deadeye.wl.decadent.org.uk>
	<4931877.zNfKfvcgox@wuerfel>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 19 May 2014 23:41:04 +0100
Message-ID: <CAFEAcA-1d_47g3Z3R=CNyE8U5+huJ0yDvAMU+BRacajxE5qPXw@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: Rob Herring <robh@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linus Walleij <linus.ml.walleij@gmail.com>,
	arm-mail-list <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 19 May 2014 13:20, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 16 May 2014 23:20:42 Ben Hutchings wrote:
>> Versatile is one of ARM's own development boards, but more importantly
>> it's something QEMU can emulate.
>
> We should really have this in multiplatform soon, I think the last issue
> for versatile is common clock support, but Linus Walleij may have more
> details about what remains here.
>
> We should also make it possible to enable ARCH_VIRT for pre-ARMv7 to
> get qemu users to move over to that.

I think the main reason many people still use QEMU's versatilepb
model is that it has PCI. If you want people to move off that then
getting those "generic device-tree driven PCI" patches into the
kernel would probably be a good start :-)  At that point we can
reasonably easily add PCI support to the QEMU 'virt' board.

thanks
-- PMM
