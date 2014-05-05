Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3C45996D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:58:21 +0000 (UTC)
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1B181FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:58:20 +0000 (UTC)
Received: by mail-oa0-f41.google.com with SMTP id m1so6305887oag.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 09:58:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
Date: Mon, 5 May 2014 09:58:20 -0700
Message-ID: <CACRpkdbiurS=m=2wH4-9G8pjVwDZfKykVW+12UWMpHjNBm8ppg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset=UTF-8
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On this topic I need to add:

how are the ACPI HW descriptions really happening?

I as subsystem maintainer have no real contact with these people,
I can only get a *vague* feeling that sometimes, they live in an ancient
world of assumptions that do not hold.

Specifically I am worried when seeing some ACPI stuff that their idea
of pin control is "some sort of fancy GPIO-bolt on" and I fear they will
attempt to model and implement this with an ugly interface that we
will have to account for later, instead of reading say
Documentation/pinctrl.txt and learn something about how software
engineers go about handling such hardware.

Where is the communication entry port for a driver subsystem
maintainer that want to bring a message to the ACPI HW bindings
people?

Yours,
Linus Walleij
