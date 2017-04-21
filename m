Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB6F69B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 11:04:00 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 01DB68D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 11:03:59 +0000 (UTC)
Date: Fri, 21 Apr 2017 13:03:58 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20170421110358.nh357rzs65hwdbk6@piout.net>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On 19/04/2017 at 22:26:34 +0200, Arnd Bergmann wrote:
> On Tue, Apr 18, 2017 at 8:59 PM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> 
> > What I _would_ like to see is those top maintainers suggest
> > "submaintainer" names. Particularly Davem, since he doesn't tend to
> > want to come to the kernel summit, and being at the top of the list
> > that's a kind of big gaping hole. I guess we haven't had all that many
> > _problems_ within networking, but if we talk maintainership issues,
> > it's certainly a bit odd if it's entirely lacking. We have both core
> > networking and network drivers that both fall under "davem" as far as
> > my pull statistics go.
> 
> For ARM, the work also tends to be fairly spread out across many
> people, with few of us being overly important. [I think that while Olof and
> I had similar shares of work in pulling in patches, I ended up in one of
> the top spots because I happened to send more pull requests during
> the last year, and I also did quite a bit of kernel stuff outside of
> arch/arm.]
> 
> So while there is no need for having lots of ARM platform maintainers,
> I would like to see some of the people that I interact with that also
> work with a larger number of other maintainers:
> 
> - One of the device tree maintainers (Rob Herring, Frank Rowand,
>   Mark Rutland), they inevitably deal with almost all device driver
>   writers at some point
> 
> - One of the CLK subsystem maintainers (Michael Turquette,
>   Stephen Boyd), they also interact with a large number of
>   subsystem and platform maintainers, and we have had some
>   disagreements particularly when dealing with three subsystems
>   (clk, arm-soc and a device driver) in one patch series.
> 
> - One or two ARM platform maintainers, ideally one that also
>   maintains another kernel subsystem.

I would fit that description, although mach-at91 is so small now that we
have very few issues with arm-soc. However, I have two particular
points:
 - what to do which the many coccinelle generated patches that are sent.
I find that many are not tested, don't really improve readability and
are sometimes harmful. I used to apply them, I don't anymore because
they sometimes take too much time to review for absolutely zero benefit.
The main category is the switch to devm_ functions in old drivers that
are already handling error case pretty well.
 - my subsystem (RTC) is pretty dependant on two bus subsystems (I2C and
   SPI). Sometimes, it would be good to be included in discussions that
will affect many drivers instead of finding that they have to be patched
after the fact. I'm mainly thinking about recent work from Javier
regarding OF matching in i2c. The main drawback of including more people
is probably the bikeshedding that will ensue but I feel like more
coordination would have been necessary to make Javier's life a bit
easier.

>                                       The platforms with  the most
>   changes are usually sunxi (Maxime Ripard), OMAP (Tony
>   Lindgren), Renesas (Simon Horman), Broadcom (Florian
>   Fainelli), Qualcomm (Andy Gross) and Freescale (Shawn Guo).
> 

-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
