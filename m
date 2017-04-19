Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C1F5B7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 20:26:36 +0000 (UTC)
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81CA8A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 20:26:35 +0000 (UTC)
Received: by mail-yw0-f195.google.com with SMTP id 203so3553470ywk.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 13:26:35 -0700 (PDT)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
In-Reply-To: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 19 Apr 2017 22:26:34 +0200
Message-ID: <CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: Ingo Molnar <mingo@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 18, 2017 at 8:59 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:

> What I _would_ like to see is those top maintainers suggest
> "submaintainer" names. Particularly Davem, since he doesn't tend to
> want to come to the kernel summit, and being at the top of the list
> that's a kind of big gaping hole. I guess we haven't had all that many
> _problems_ within networking, but if we talk maintainership issues,
> it's certainly a bit odd if it's entirely lacking. We have both core
> networking and network drivers that both fall under "davem" as far as
> my pull statistics go.

For ARM, the work also tends to be fairly spread out across many
people, with few of us being overly important. [I think that while Olof and
I had similar shares of work in pulling in patches, I ended up in one of
the top spots because I happened to send more pull requests during
the last year, and I also did quite a bit of kernel stuff outside of
arch/arm.]

So while there is no need for having lots of ARM platform maintainers,
I would like to see some of the people that I interact with that also
work with a larger number of other maintainers:

- One of the device tree maintainers (Rob Herring, Frank Rowand,
  Mark Rutland), they inevitably deal with almost all device driver
  writers at some point

- One of the CLK subsystem maintainers (Michael Turquette,
  Stephen Boyd), they also interact with a large number of
  subsystem and platform maintainers, and we have had some
  disagreements particularly when dealing with three subsystems
  (clk, arm-soc and a device driver) in one patch series.

- One or two ARM platform maintainers, ideally one that also
  maintains another kernel subsystem. The platforms with  the most
  changes are usually sunxi (Maxime Ripard), OMAP (Tony
  Lindgren), Renesas (Simon Horman), Broadcom (Florian
  Fainelli), Qualcomm (Andy Gross) and Freescale (Shawn Guo).

- One or two of the ARM32/ARM64 architecture people: Russell
  King, Catalin Marinas, Will Deacon.

      Arnd
