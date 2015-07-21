Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E10CB268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 09:42:37 +0000 (UTC)
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3702A185
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 09:42:37 +0000 (UTC)
Received: by obbop1 with SMTP id op1so114958686obb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 02:42:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150720203358.GA9205@deathstar>
References: <20150720203358.GA9205@deathstar>
Date: Tue, 21 Jul 2015 11:42:36 +0200
Message-ID: <CACRpkda64fu44hq5TcSa4jdCOR0msQ-x-Zjmb_+q-DJtp4-+sw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Michael Welling <mwelling@ieee.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] GPIO API/ABI discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 20, 2015 at 10:33 PM, Michael Welling <mwelling@ieee.org> wrote:

Excellent topic!

> I propose that there be a discussion as to the future direction
> of the GPIO userspace interface.
>
> Here are some topics in need of discussion:
> - The continued use of the sysfs interface and possible enhancements
> or restructuring.
> - The possibility of a char interface and its implications.
> - The introduction of gpio groups to userspace.

- The proliferation of userspace GPIO when kernelspace
  GPIO should have been used. Buttons, LEDs, flash protection,
  PWM, external connectors, camera flashes etc etc, all
  which can be handled better by the apropriate kernel
  subsystem.

I just got irritated about this again and wrote the following doc
to Documentation/gpio/drivers-on-gpio.txt:

----------------------------

Subsystem drivers using GPIO
============================

Note that standard kernel drivers exist for common GPIO tasks and will provide
the right in-kernel and userspace APIs/ABIs for the job, and that these
drivers can quite easily interconnect with other kernel subsystems using
hardware descriptions such as device tree or ACPI:

- leds-gpio: drivers/leds/leds-gpio.c will handle LEDs connected to  GPIO
  lines, giving you the LED sysfs interface

- ledtrig-gpio: drivers/leds/trigger/ledtrig-gpio.c will provide a LED trigger,
  i.e. a LED will turn on/off in response to a GPIO line going high or low
  (and that LED may in turn use the leds-gpio as per above).

- gpio-keys: drivers/input/keyboard/gpio_keys.c is used when your GPIO line
  can generate interrupts in response to a key press. Also supports debounce.

- gpio-keys-polled: drivers/input/keyboard/gpio_keys_polled.c is used when your
  GPIO line cannot generate interrupts, so it needs to be periodically polled
  by a timer.

- gpio_mouse: drivers/input/mouse/gpio_mouse.c is used to provide a mouse with
  up to three buttons by simply using GPIOs and no mouse port. You can cut the
  mouse cable and connect the wires to GPIO lines or solder a mouse connector
  to the lines for a more permanent solution of this type.

- gpio-beeper: drivers/input/misc/gpio-beeper.c is used to provide a beep from
  an external speaker connected to a GPIO line.

- gpio-tilt-polled: drivers/input/misc/gpio_tilt_polled.c provides tilt
  detection switches using GPIO, which is useful for your homebrewn pinball
  machine if for nothing else. It can detect different tilt angles of the
  monitored object.

- extcon-gpio: drivers/extcon/extcon-gpio.c is used when you need to read an
  external connector status, such as a headset line for an audio driver or an
  HDMI connector. It will provide a better userspace sysfs interface than GPIO.

- restart-gpio: drivers/power/gpio-restart.c is used to restart/reboot the
  system by pulling a GPIO line and will register a restart handler so
  userspace can issue the right system call to restart the system.

- poweroff-gpio: drivers/power/gpio-poweroff.c is used to power the system down
  by pulling a GPIO line and will register a pm_power_off() callback so that
  userspace can issue the right system call to power down the system.

- gpio-gate-clock: drivers/clk/clk-gpio-gate.c is used to control a gated clock
  (off/on) that uses a GPIO, and integrated with the clock subsystem.

- i2c-gpio: drivers/i2c/busses/i2c-gpio.c is used to drive an I2C bus
  (two wires, SDA and SCL lines) by hammering (bitbang) two GPIO lines. It will
  appear as any other I2C bus to the system and makes it possible to connect
  drivers for the I2C devices on the bus like any other I2C bus driver.

- spi_gpio: drivers/spi/spi-gpio.c is used to drive an SPI bus (variable number
  of wires, atleast SCK and optionally MISO, MOSI and chip select lines) using
  GPIO hammering (bitbang). It will appear as any other SPI bus on the system
  and makes it possible to connect drivers for SPI devices on the bus like
  any other SPI bus driver. For example any MMC/SD card can then be connected
  to this SPI by using the mmc_spi host from the MMC/SD card subsystem.

- w1-gpio: drivers/w1/masters/w1-gpio.c is used to drive a one-wire bus using
  a GPIO line, integrating with the W1 subsystem and handling devices on
  the bus like any other W1 device.

- gpio-fan: drivers/hwmon/gpio-fan.c is used to control a fan for cooling the
  system, connected to a GPIO line (and optionally a GPIO alarm line),
  presenting all the right in-kernel and sysfs interfaces to make your system
  not overheat.

- gpio-regulator: drivers/regulator/gpio-regulator.c is used to control a
  regulator providing a certain voltage by pulling a GPIO line, integrating
  with the regulator subsystem and giving you all the right interfaces.

- gpio-wdt: drivers/watchdog/gpio_wdt.c is used to provide a watchdog timer
  that will periodically "ping" a hardware connected to a GPIO line by toggling
  it from 1-to-0-to-1. If that hardware does not recieve its "ping"
  periodically, it will reset the system.

- gpio-nand: drivers/mtd/nand/gpio.c is used to connect a NAND flash chip to
  a set of simple GPIO lines: RDY, NCE, ALE, CLE, NWP. It interacts with the
  NAND flash MTD subsystem and provides chip access and partition parsing like
  any other NAND driving hardware.

Apart from this there are special GPIO drivers in subsystems like MMC/SD to
read card detect and write protect GPIO lines, and in the TTY serial subsystem
to emulate MCTRL (modem control) signals CTS/RTS by using two GPIO lines. The
MTD NOR flash has add-ons for extra GPIO lines too, though the address bus is
usually connected directly to the flash.

Use those instead of talking directly to the GPIOs using sysfs; they integrate
with kernel frameworks better than your userspace code could. Needless to say,
just using the apropriate kernel drivers will simplify and speed up your
embedded hacking in particular by providing ready-made components.

----------------------------

If other kernel devs could please stress these existing drivers when developers
complain about sysfs for this and that on their "necessarily
different" system/board,
that would be great.

Yours,
Linus Walleij
