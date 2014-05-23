Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D6894892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:40:18 +0000 (UTC)
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C3A931FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:40:16 +0000 (UTC)
Received: by mail-ob0-f169.google.com with SMTP id vb8so5425927obc.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 06:40:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
	<CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
Date: Fri, 23 May 2014 15:40:15 +0200
Message-ID: <CACRpkdZEyHpnmfdXRQjt3mgZu4Nx62osLv+7f5TKtURW8YXZ+Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>
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

On Thu, May 15, 2014 at 8:50 PM, Rob Herring <robh@kernel.org> wrote:

> I do think having todo lists would be valuable. I would like to see
> more than a one off list and have a living document. Linus W had a
> great spreadsheet on this for multi-platform enablement. Perhaps this
> would spur people to do some of the clean-ups (or it will just bit rot
> :( ).

It's still there:
https://docs.google.com/spreadsheet/ccc?key=0Aj_PQh-9xwkMdHRHYzRzOEhyMEt5b3UtOFIwcHRpWEE

However I don't think there is much to discuss really. It's just work,
we know how to do it.

The real problem is that of somebody doing the work, and when maintainers
don't want to do the work, how to proceed by leaving the platform as-is
(legacy), delete it (lacking active maintainer) or have some custodian
like me acquire the hardware and fix it up myself.

Arnd and I have discussed this and we basically think that the StrongARM
stuff (RISC PC, Netwinder, SA1100-based handhelds etc) are legacy
systems while all ARMv4T and later are target for modernization if
and only if an active maintainer is available to pursue the work.

Yours,
Linus Walleij
