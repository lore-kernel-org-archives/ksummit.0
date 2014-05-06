Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5DD46AF9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 11:25:17 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 005A21FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 11:25:15 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 06 May 2014 13:41:53 +0200
Message-ID: <5037921.rt2to5ZgBB@vostro.rjw.lan>
In-Reply-To: <CACRpkdYjVduPPMp9D53ocE8B-Mva5qUo4E-R=iYdSCmFLoaz_A@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<3443151.uQIbj9tkE3@vostro.rjw.lan>
	<CACRpkdYjVduPPMp9D53ocE8B-Mva5qUo4E-R=iYdSCmFLoaz_A@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Monday, May 05, 2014 07:41:04 PM Linus Walleij wrote:
> On Sun, May 4, 2014 at 2:58 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > On Sunday, May 04, 2014 10:23:18 AM Olof Johansson wrote:
> 
> >> Same for pin control, where we have frameworks in the kernel on ARM, but
> >> x86/ACPI tends to let firmware handle it all...
> >
> > I would say if pin control information is made available to us by the firmware,
> > we can use it.  If it is not, we need to live without it.
> 
> I would like to know *how* it will be made available in that case.
> 
> What I think will actually happen is this:
> 
> - Handling pin control is deemed unnecessary for the kernel in the same
> way that early reviews of the subsystem was received: "well we only set
> up this once at boot and never touch it, ideally the boot loader/ROM/BIOS
> do this and we need not care"
> 
> - Further down the road a "uh oh" moment - we *need* to screw around
> with pin control - usually due to firmware bugs and power savings - "we
> only need to augment this or these pins a little bit here ..."
> 
> - Ugliness threatens to invade, pin control subsystem maintainer get
> angry.
> 
> The thing is: with things like BayTrail I already *know* the pin control
> registers are there, they are just not implemented any handling of.
> I know very well how much the HW implementers think that a kernel
> "should never touch" these registers, and I know it will invariably happen
> sooner or later but like to be proven wrong.

First of all, I have a little influence on people who decide what to expose
and how.

That said, my personal intention is to work towards exposing things that ACPI
has no support for in such a way that the existing code in the kernel can use
them with as few modifications as reasonably possible.

That doesn't mean that we can switch x86 to over DTs (that currently is not an
option for various reasons, not necessarily techical), but we may be able to put
DT-style information that the current code expects to be there into the ACPI
tables.  And if that doesn't happen, for example because vendors don't choose
to do that in their firmware, we still can make it possible to read that
information from an ACPI definition block supplied along with the kernel
(kind of like a dts) and add it to the ACPI namespace during initialization. 

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
