Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5545F4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 16:31:02 +0000 (UTC)
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEDBE1F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 16:31:01 +0000 (UTC)
Received: by mail-oa0-f42.google.com with SMTP id j17so5216444oag.29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 09:31:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513211442.GB28268@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1399289464.20388.57.camel@pasglop>
	<1560013.xlOCHMZ3P0@vostro.rjw.lan> <11391971.y9GOPHmK72@wuerfel>
	<20140513211442.GB28268@quad.lixom.net>
Date: Sun, 18 May 2014 18:31:00 +0200
Message-ID: <CACRpkdYxADM=W074de=zZ9-B-7GBUfvJWmOJLNO+qGpht7R3HA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset=UTF-8
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 13, 2014 at 11:14 PM, Olof Johansson <olof@lixom.net> wrote:

> For the truly trivial stuff, there are some quite simple ways to handle this:
>
> 1. Make sure that anything that can be a named IORESOURCE_* is so. Which could
>    mean moving over GPIO and possibly clocks to that, and use those for lookup.

GPIO consumers shall use devm_gpiod_get() or devm_gpiod_get_index()
to get an abstract GPIO descriptor. This already works with DT and ACPI
alike, driver authors just haven't caught up. Yes we have to patch ourselves
through this entire GPIO number exodus ...
Documentation/gpio/consumer.txt

GPIOs, clocks, regulators and pins are already on abstract handles
tied into the device model, so what am I missing?

Yours,
Linus Walleij
