Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D70198AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 20:28:19 +0000 (UTC)
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1F9B20215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 20:28:13 +0000 (UTC)
Received: by mail-oa0-f53.google.com with SMTP id m1so5325208oag.40
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 13:28:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400367794.24420.23.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
	<20140504111436.GC15180@arm.com>
	<20140504171807.GA4418@quad.lixom.net>
	<1400291694.9575.63.camel@wasp-deb.dvhart.com>
	<1400367794.24420.23.camel@pasglop>
Date: Sun, 18 May 2014 22:28:12 +0200
Message-ID: <CACRpkdZdkQb4_R2soomb1Z8R9OSTSEasZSpHguZoR-Ujz5OgmQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Content-Type: text/plain; charset=UTF-8
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Sun, May 18, 2014 at 1:03 AM, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
> On Fri, 2014-05-16 at 18:54 -0700, Darren Vincent Hart wrote:
>
>> In my opinion, the common dev_get_property() interface which calls the
>> appropriate firmware accessor function makes the most sense. Creating
>> another intermediate format which we then have to make into something
>> useful (like pdata) strikes me as unnecessary and likely limiting.
>
> So in the end it will really depend on whether people are good enough to
> use the same property/value "names" and format accross the
> representations.
>
> So yes, maybe something like dev_get_property() would work fine for
> most cases, which would be great. And for the always necessary quirks
> where for example the ACPI variant used a wrong spelling or the DT
> variant used a different size or something, the driver can either
> openly call different of and acpi variants or we could have quirks in
> the driver itself... ie, a pointer in struct device to a quirk table,
> possibly based on hash of the name for fast lookup. But let's wait
> for some real implementations to see how necessary that really is.

This has already happened with GPIO as DT had named GPIOs
and ACPI yet had not, but could get GPIOs from a certain
index, which DT also could.

So:

gpios = <a, b>;

or:

foo-gpio = <a>;
bar-gpio = <b>;

Whereas in ACPI it would only be the former representation.
So the prototype had to be something like:

GPIO = gpiod_get_index(device, name, index);

So we first look for a named GPIO and if that doesn't work
we look for an indexed GPIO. All fine.

Anyway, then ACPI said they are going to introduce named
GPIOs so all is good. Or is it?

No, they can still choose a totally different name from what
DT is using. So we end up with code like this:

if (gpio = gpiod_get_index(device, "foo", index))
...
else if (gpio = giod_get_index(device, "bar", index))
...

That is however not enough since they can also disagree
with indexed values so that whereas the two GPIO pins
may be gpios = <a, b>; in DT nothing stops the ACPI
guys from putting it in order <b, a> and we get code to
compensate for that instead.

So there are, with the simple example of GPIO, already
a multitude of ways of shooting oneself in the foot, defining
bindings for the same hardware in incompatible ways and
generally screwing up.

And this almost already happened for RFkill but luckily
eventually we stayed clear of some of it by managing
to DEFINE that the RESET GPIO comes at index 0 and
SHUTDOWN GPIO comes at index 1, in BOTH
representations UNLESS they are named, and in that
case the name takes precedence and this file:
net/rfkill/rfkill-gpio.c

Is actually a good example of how things should look.

Looking at that file, do we all think this looks good?

And this is just until the day someone comes along
and admits they shipped a firmware with the GPIOs
swapped.

Beware that GPIO is a *simple* example...

Yours,
Linus Walleij
