Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37D2BD00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 22:17:17 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 372382C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 22:17:16 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id h69-v6so12910427pfd.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:17:16 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 11 Sep 2018 15:17:14 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Message-ID: <20180911221714.GB13208@roeck-us.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<20180911220047.GQ2494@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180911220047.GQ2494@piout.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 12, 2018 at 12:00:47AM +0200, Alexandre Belloni wrote:
> > 
> > Looking at drivers/rtc over the past 2-3 years it seems like a
> > decently active subsystem. Probably on the small side of things, but
> > not catastrophically so. But looking at contributor stats the picture
> > is totally different:
> > 
> >    241  Alexandre Belloni
> >     28  Linus Torvalds
> >     27  Arnd Bergmann
> >     25  Javier Martinez Canillas
> >     20  Uwe Kleine-König
> > 
> > That kind of skewed contribution statistics is indeed not sustainable,
> > and indicates some serious problem imo. What exactly goes wrong, and
> > how to best fix it I can't tell without more information though. From
> > my experience in drm, where we also have some areas with highly skewed
> > contribution statistics, it could be the maintainer driving people
> > away, ensuring that there's only one-off contributions. Usually
> > unkowningly.
> > 

I have just seen this. I guess I must be driving _lots_ of people away.

git shortlog --no-merges -e -s -n v4.4..v4.18 drivers/watchdog 

   83	Guenter Roeck <linux@roeck-us.net>
   24	Wolfram Sang <wsa+renesas@sang-engineering.com>
   20	Damien Riegel <damien.riegel@savoirfairelinux.com>
   17	Arnd Bergmann <arnd@arndb.de>

git shortlog --no-merges -e -s -n v4.4..v4.18 drivers/hwmon

   157	Guenter Roeck <linux@roeck-us.net>
    70	Julia Lawall <Julia.Lawall@lip6.fr>
    23	Javier Martinez Canillas <javier@osg.samsung.com>
    10	Linus Walleij <linus.walleij@linaro.org>
    9	Pali Rohár <pali.rohar@gmail.com>

And there it was me erroneously thinking that this might be related to
me picking up subsystems for which there is not much interest, and to
doing a lot of cleanup in those subsystems in my non-existing spare
time. Bummer. Oh well, my apologies to everyone I have driven away.

Guenter
