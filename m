Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9C8BAB7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Nov 2018 17:35:24 +0000 (UTC)
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E0FB7ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Nov 2018 17:35:23 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id z13so2086833lfe.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 Nov 2018 09:35:23 -0800 (PST)
MIME-Version: 1.0
References: <CAOesGMgVPsK9YsV2nGoBptWwtHYv=3yMytLx2_tF_ujS5c5p3Q@mail.gmail.com>
	<20181107171723.GI9919@thunk.org>
In-Reply-To: <20181107171723.GI9919@thunk.org>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 7 Nov 2018 09:35:09 -0800
Message-ID: <CAOesGMheCcvDQCd+7fyh4yOk4BYDfm2QRqsdawqA_fg8s9YYEQ@mail.gmail.com>
To: Theodore Tso <tytso@mit.edu>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-clk <linux-clk@vger.kernel.org>, linux-gpio@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Palmer Dabbelt <palmer@sifive.com>, Russell King <rmk@armlinux.org.uk>,
	Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
	Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Ksummit-discuss] [TECH TOPIC] SoC maintainer group
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Nov 7, 2018 at 9:17 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Tue, Nov 06, 2018 at 02:16:27PM -0800, Olof Johansson wrote:
> >
> > Olof Johansson (arm-soc)
> > Arnd Bergmann (arm-soc)
> > Kevin Hilman (arm-soc)
> > Mike Turquette (clk)
> > Stephen Boyd (clk)
> > Linus Walleij (pinctrl + more)
> > Mike Brown (gpio/regmap + more)
>
> Could the poeple listed on this list please list potential schedule conflicts?
>
> I'm going to assume we should avoid: Andriod uConf, RISC-V uConf,
> Device Tree uConf.  What are other potential conflicts.  I'm going to
> guess this might be "interesting" to schedule.  :-)

Yeah, apologies for adding a bunch of cross-coordination this late too.

It's likely going to be conflict-ridden no matter what we do. RISC-V
and DT are the main conflicts, Android probably has a bit less.

Tuesday afternoon looks least conflict-y when I squint at the
schedule, or Thursday afternoon (but ideally not overlapping with
Daniel's DRM/gitlab session).



-Olof
