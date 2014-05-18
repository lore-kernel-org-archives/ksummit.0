Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C252E2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 16:34:27 +0000 (UTC)
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 722DC1F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 16:34:27 +0000 (UTC)
Received: by mail-ob0-f178.google.com with SMTP id va2so5100311obc.23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 09:34:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140514122520.GB12304@sirena.org.uk>
References: <4779952.HbUGmSHJeO@wuerfel> <20140514122520.GB12304@sirena.org.uk>
Date: Sun, 18 May 2014 18:34:26 +0200
Message-ID: <CACRpkdZC-wy+otLfF9Lufi2ii65L=trxULYbfAu9tqDd0txaqQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Mark Brown <broonie@kernel.org>
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

On Wed, May 14, 2014 at 2:25 PM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, May 14, 2014 at 02:06:10PM +0200, Arnd Bergmann wrote:
>
>> The way I see things moving forward for ACPI is to add a standard way to
>> name things (GPIOs, IRQs, DMAs, ...) so we can have a generic 'give me
>> a pointer to the X object for this device' for each subsystem we want to
>> have it for. Note that this would probably not be a combined interface
>> across subsystems though.
>
> And indeed we already have that interface in the kernel for most APIs
> newer than GPIOs so in implementation terms this normally boils down to
> adding an ACPI backend for looking things up.

We have this for GPIO too, just need to continue to roll it out.

And we have backends for DT and ACPI alike.

Yours,
Linus Walleij
