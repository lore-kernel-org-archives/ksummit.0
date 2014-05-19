Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E866DA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 20:36:45 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B48E62029C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 20:36:43 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 19 May 2014 22:53:37 +0200
Message-ID: <1630071.qiO1i5p1Zy@vostro.rjw.lan>
In-Reply-To: <1400429541.10267.22.camel@wasp-deb.dvhart.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<CACRpkdZdkQb4_R2soomb1Z8R9OSTSEasZSpHguZoR-Ujz5OgmQ@mail.gmail.com>
	<1400429541.10267.22.camel@wasp-deb.dvhart.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
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

On Sunday, May 18, 2014 09:12:21 AM Darren Vincent Hart wrote:
> On Sun, 2014-05-18 at 22:28 +0200, Linus Walleij wrote:
> > On Sun, May 18, 2014 at 1:03 AM, Benjamin Herrenschmidt
> > <benh@kernel.crashing.org> wrote:
> > > On Fri, 2014-05-16 at 18:54 -0700, Darren Vincent Hart wrote:
> > >
> > >> In my opinion, the common dev_get_property() interface which calls the
> > >> appropriate firmware accessor function makes the most sense. Creating
> > >> another intermediate format which we then have to make into something
> > >> useful (like pdata) strikes me as unnecessary and likely limiting.
> > >
> > > So in the end it will really depend on whether people are good enough to
> > > use the same property/value "names" and format accross the
> > > representations.
> > >
> > > So yes, maybe something like dev_get_property() would work fine for
> > > most cases, which would be great. And for the always necessary quirks
> > > where for example the ACPI variant used a wrong spelling or the DT
> > > variant used a different size or something, the driver can either
> > > openly call different of and acpi variants or we could have quirks in
> > > the driver itself... ie, a pointer in struct device to a quirk table,
> > > possibly based on hash of the name for fast lookup. But let's wait
> > > for some real implementations to see how necessary that really is.
> > 
> > This has already happened with GPIO as DT had named GPIOs
> > and ACPI yet had not, but could get GPIOs from a certain
> > index, which DT also could.
> > 
> > So:
> > 
> > gpios = <a, b>;
> > 
> > or:
> > 
> > foo-gpio = <a>;
> > bar-gpio = <b>;
> > 
> > Whereas in ACPI it would only be the former representation.
> > So the prototype had to be something like:
> > 
> > GPIO = gpiod_get_index(device, name, index);
> > 
> > So we first look for a named GPIO and if that doesn't work
> > we look for an indexed GPIO. All fine.
> > 
> > Anyway, then ACPI said they are going to introduce named
> > GPIOs so all is good. Or is it?
> > 
> > No, they can still choose a totally different name from what
> > DT is using. So we end up with code like this:
> > 
> > if (gpio = gpiod_get_index(device, "foo", index))
> > ...
> > else if (gpio = giod_get_index(device, "bar", index))
> > ...
> > 
> > That is however not enough since they can also disagree
> > with indexed values so that whereas the two GPIO pins
> > may be gpios = <a, b>; in DT nothing stops the ACPI
> > guys from putting it in order <b, a> and we get code to
> > compensate for that instead.
> 
> I see two distinct problems being raised. One on equivalent mechanisms,
> and one on parameterization.
> 
> With respect to mechanism, it is my understanding that ACPI 5.0 does
> provide for GpioIO pin lists, but for some reason, those are rarely used
> (and not implemented in the Linux ACPICA). However, it seems to me those
> could be used in the same way as <function>-gpios in DT land.
> 
> While independent from the ACPI Device Properties work we have been
> working on, I wonder if we could address this in some of the
> documentation we're preparing as well - as it is intended to document
> best practice, and the properties need to interact with the already
> defined resource types, such as GPIO.
> 
> Rafael - what do you think?

That depends on what part of the spec you're referring to in particular.
Care to be more specific?

> As for parameterization like the function name ("foo" or "bar"), or
> which "index", that is what the DT and ACPI Device Properties are meant
> to abstract, so I don't see this as a problem. Rather than if/else
> blocks in the code as you've described above, those names and indexes
> should be read from the device properties.

Well, gpiod_get() takes a *name* and that's the preferred interface if
my understanding is correct.  There's no mechanism in ACPI I'm aware of that
can allow a name to be associated with a GPIO pin (or a list of pins for
that matter).

> > So there are, with the simple example of GPIO, already
> > a multitude of ways of shooting oneself in the foot, defining
> > bindings for the same hardware in incompatible ways and
> > generally screwing up.
> > 
> > And this almost already happened for RFkill but luckily
> > eventually we stayed clear of some of it by managing
> > to DEFINE that the RESET GPIO comes at index 0 and
> > SHUTDOWN GPIO comes at index 1, in BOTH
> > representations UNLESS they are named, and in that
> > case the name takes precedence and this file:
> > net/rfkill/rfkill-gpio.c

Well, yeah.

> > Is actually a good example of how things should look.
> > 
> > Looking at that file, do we all think this looks good?
> 
> Thanks, concrete examples are usually helpful.
> 
> It is a good example I think. The only bit I don't like is that
> acpi_find_gpio ignores con_id.

Precisely.  And it can't do anything else ATM.

> I'm sure there is a lot of context here
> as to why - probably mostly surrounding the fact that while ACPI *CAN*

Or can it?  How exactly?

> do this, there hasn't been a standard way of doing it and therefor
> nothing we could reliably abstract... I'd like to see if we can improve
> that.

Well, me too. :-)

Rafael
