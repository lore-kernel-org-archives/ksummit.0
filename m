Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 35B6F98F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:41:06 +0000 (UTC)
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C27A91F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:41:05 +0000 (UTC)
Received: by mail-oa0-f44.google.com with SMTP id i11so3010078oag.31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 19:41:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <3443151.uQIbj9tkE3@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1655995.vGcMNE2bRf@vostro.rjw.lan>
	<20140504172318.GB4418@quad.lixom.net>
	<3443151.uQIbj9tkE3@vostro.rjw.lan>
Date: Mon, 5 May 2014 19:41:04 -0700
Message-ID: <CACRpkdYjVduPPMp9D53ocE8B-Mva5qUo4E-R=iYdSCmFLoaz_A@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
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

On Sun, May 4, 2014 at 2:58 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Sunday, May 04, 2014 10:23:18 AM Olof Johansson wrote:

>> Same for pin control, where we have frameworks in the kernel on ARM, but
>> x86/ACPI tends to let firmware handle it all...
>
> I would say if pin control information is made available to us by the firmware,
> we can use it.  If it is not, we need to live without it.

I would like to know *how* it will be made available in that case.

What I think will actually happen is this:

- Handling pin control is deemed unnecessary for the kernel in the same
way that early reviews of the subsystem was received: "well we only set
up this once at boot and never touch it, ideally the boot loader/ROM/BIOS
do this and we need not care"

- Further down the road a "uh oh" moment - we *need* to screw around
with pin control - usually due to firmware bugs and power savings - "we
only need to augment this or these pins a little bit here ..."

- Ugliness threatens to invade, pin control subsystem maintainer get
angry.

The thing is: with things like BayTrail I already *know* the pin control
registers are there, they are just not implemented any handling of.
I know very well how much the HW implementers think that a kernel
"should never touch" these registers, and I know it will invariably happen
sooner or later but like to be proven wrong.

Yours,
Linus Walleij
