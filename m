Return-Path: <lin.sunze@gmail.com>
Date: Thu, 27 Sep 2018 23:25:12 +0800
From: SZ Lin =?utf-8?B?KOael+S4iuaZuik=?= <szlin@debian.org>
To: Linus Walleij <linus.walleij@linaro.org>;,
	Mark Brown <broonie@kernel.org>;, Holsety Chen <Holsety.Chen@moxa.com>;,
	Harry YJ Jhou <HarryYJ.Jhou@moxa.com>;, Jimmy Chen <jimmy.chen@moxa.com>
Message-ID: <20180927152512.GA3531@localhost>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
	<CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
	<20180911105233.GA8018@sirena.org.uk>
	<CACRpkdbcRCBFoBa88qKWHQMW-dTppH8pxxnUZZibrtUwtohgLg@mail.gmail.com>
	<TY2PR0101MB2526376DEFC241B754A19A6AE21C0@TY2PR0101MB2526.apcprd01.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TY2PR0101MB2526376DEFC241B754A19A6AE21C0@TY2PR0101MB2526.apcprd01.prod.exchangelabs.com>
Cc: , Ksummit-discuss@lists.linuxfoundation.org,
	Lukasz Majewski <lukma@denx.de>, Jonas Jensen <jonas.jensen@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
 old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

<snip>

> Found some moxa.com mail addresses in the kernel log, so including them. You can speak
> about the status of the MOXA ART deployments if you like, I am talking about

Sorry for the late reply and thanks for pinging me.

Please note that the opinions are my own and not the views of my employer.

> On Tue, Sep 11, 2018 at 12:52 PM Mark Brown <broonie@kernel.org> wrote:
> > On Tue, Sep 11, 2018 at 10:37:36AM +0200, Linus Walleij wrote:
> >
> > > Sometimes I get the feeling that people focused on desktops or
> > > servers suffer from velocitate (speed blindness) and think everybody
> > > is like them. (Well don't we all.)
> >
> > Conversely, the approaches that keep stable kernels going also get
> > applied to designing hardware that people intend to be stable - if it
> > works well enough now why try something new, especially where that new
> > stuff is most likely going to be more expensive to either buy or work
> > with?
> 
> Exactly. I think this is what happened at MOXA with the ART SoC.
> 
> It seems that MOXA made that with a bunch of consultants from Faraday in Taiwan
> supplying their IP blocks and know-how. Since then they have had zero incentive to
> upgrade the SoC to a newer version, as this SoC handles the ethernet, GPIO and serial
> lines they need just fine.

Indeed.

> 
> They recently made a new design using Freescale (now NXP) LS1021a dualcore A7, but I
> can see that the ART (ARMv4) in
> EM-1240 and their EP93xx products (ARMv4T) are still in active deployment and even
> recommended for new projects, samples can be easily obtained.[1]

Both of them work well with variety of vertical markets, it depends on application
needs.

For example, Moxart is not suitable for performance-related applications which are
using gigabit Ethernet and so on.

> 
> And this is good stuff, it's rock solid at this point. I just wish and hope that they really
> invest in using the very latest kernels also for these elder boards even though I rarely hear
> from them on the mailing lists.

To have long-term maintenance kernel is very important for industrial application,
that is why Moxa joined CIP [1].

[1] https://www.cip-project.org/announcement/2018/01/18/industry-leader-moxa-joins-civil-infrastructure-platform-project

> 
> At companies that have their internal ASIC design teams I sometimes get the feeling that
> these are churning out newer and more powerful ASICs as a therapeutic exercise just to
> keep their skills up. But I hope it is pure prejudice on my part.

It's not true for Moxa, Moxa added some specific Industrial-related IP into Moxart.

SZ
> 
> Yours,
> Linus Walleij
> 
> [1] https://www.moxa.com/product/compact_fanless_computers.htm
