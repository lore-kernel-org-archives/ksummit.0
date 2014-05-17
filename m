Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 876EF2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 04:57:58 +0000 (UTC)
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AD17201BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 04:57:58 +0000 (UTC)
Received: by mail-pb0-f51.google.com with SMTP id ma3so3421707pbc.24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 21:57:57 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400301587.9575.158.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 16 May 2014 21:39:47 -0700
In-Reply-To: <CACRpkdYjVduPPMp9D53ocE8B-Mva5qUo4E-R=iYdSCmFLoaz_A@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1655995.vGcMNE2bRf@vostro.rjw.lan>
	<20140504172318.GB4418@quad.lixom.net>
	<3443151.uQIbj9tkE3@vostro.rjw.lan>
	<CACRpkdYjVduPPMp9D53ocE8B-Mva5qUo4E-R=iYdSCmFLoaz_A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
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

On Mon, 2014-05-05 at 19:41 -0700, Linus Walleij wrote:
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

I agree with you on this Linus, see my response to Rafael just a minute
ago. I think perhaps we can discuss this separately from this thread? I
have a few other people I'd like to loop in - but it would be a very
specific discussion perhaps rat-holing in this context.

Or possibly you have an LKML thread I need to go find and pick this up
there?

-- 
Darren Hart
Intel Open Source Technology Center
