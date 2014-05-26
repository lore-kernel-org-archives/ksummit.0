Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D28B026
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 21:19:28 +0000 (UTC)
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B6C2F20246
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 21:19:27 +0000 (UTC)
Received: by mail-ob0-f179.google.com with SMTP id vb8so8408443obc.38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 14:19:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1785175.GYZBbEJPJC@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1527482.CPBrbWbyLU@vostro.rjw.lan>
	<20140517132423.GX22111@sirena.org.uk>
	<1785175.GYZBbEJPJC@vostro.rjw.lan>
Date: Mon, 26 May 2014 23:19:26 +0200
Message-ID: <CACRpkdaBxnSpXqntLSeBK1Zo+iUxLV2K0h=3vr-HCQJtgxvq0g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Stephen Warren <swarren@wwwdotorg.org>
Content-Type: text/plain; charset=UTF-8
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Mark Brown <broonie@sirena.org.uk>,
	Mika Westerberg <mika.westerberg@linux.intel.com>
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

On Mon, May 19, 2014 at 1:56 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Saturday, May 17, 2014 02:24:23 PM Mark Brown wrote:

>> That's much less invasive than making new APIs.
>
> But for drivers that call of_get_something() directly I don't see any other
> sensible way forward.  Otherwise each of them will need to do something like
>
> if (dev->of_node)
>         use of_get_X()
> else if (ACPI_COMPANION(dev))
>         use acpi_get_X()
> else
>         use black magic

So there is currently net/rfkill/rfkill-gpio.c,
and there is a patch to add device tree support out there:
http://marc.info/?l=devicetree&m=139754665715639&w=2

And after that it looks like that:

static int rfkill_gpio_acpi_probe(struct device *dev,
                                  struct rfkill_gpio_data *rfkill)
{
        const struct acpi_device_id *id;

        id = acpi_match_device(dev->driver->acpi_match_table, dev);
        if (!id)
                return -ENODEV;

        rfkill->name = dev_name(dev);
        rfkill->type = (unsigned)id->driver_data;

        return 0;
}

static int rfkill_gpio_dt_probe(struct device *dev, struct
rfkill_gpio_data *rfkill)
{
        struct device_node * np = dev->of_node;

        rfkill->name = np->name;
        of_property_read_string(np, "rfkill-name", &rfkill->name);
        of_property_read_u32(np, "rfkill-type", &rfkill->type);

        return 0;
}

static int rfkill_gpio_probe(struct platform_device *pdev)
{
(...)
        if (ACPI_HANDLE(&pdev->dev)) {
                ret = rfkill_gpio_acpi_probe(&pdev->dev, rfkill);
                if (ret)
                        return ret;
        } else if (&pdev->dev.of_node) {
               ret = rfkill_gpio_dt_probe(&pdev->dev, rfkill);
               if (ret)
                       return ret;
        } else if (pdata) {
                rfkill->name = pdata->name;
                rfkill->type = pdata->type;
        } else {
                return -ENODEV;
        }
}

Whopee-do. The semantic differences are not so subtle. In
one case the type is defined in the driver itself by ACPI's match
data, in the DT case it is explicitly provided in a node in the DT
itself. DT can also explicitly name the rfkill, whereas ACPI will
just use the device name.

What should we do? How will the interface look? I mean for real.

This is the discussion we need to have. Admittedly I do not see anything
clean enough :-(

And this is a DEAD SIMPLE example.

And even if there can be something clean and nice in the probe path,
we still have this:

#ifdef CONFIG_ACPI
static const struct acpi_device_id rfkill_acpi_match[] = {
        { "BCM2E1A", RFKILL_TYPE_BLUETOOTH },
        { "BCM2E39", RFKILL_TYPE_BLUETOOTH },
        { "BCM2E3D", RFKILL_TYPE_BLUETOOTH },
        { "BCM4752", RFKILL_TYPE_GPS },
        { "LNV4752", RFKILL_TYPE_GPS },
        { },
};
#endif
#ifdef CONFIG_OF
static const struct of_device_id rfkill_of_match[] = {
       { .compatible = "rfkill-gpio", },
       {},
};
#endif
(...)
                .acpi_match_table = ACPI_PTR(rfkill_acpi_match),
                .of_match_table = of_match_ptr(rfkill_of_match),
(...)

This stuff we don't even talk about unifiing right?

Yours,
Linus Walleij
