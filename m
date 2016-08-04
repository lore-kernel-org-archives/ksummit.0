Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D625283D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 12:37:39 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 446C81D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 12:37:39 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id g86so21568233ioj.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Aug 2016 05:37:39 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20160727180346.GP11806@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de>
	<20160727180346.GP11806@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Aug 2016 14:37:36 +0200
Message-ID: <CAMuHMdV7eJndSTQ9_C1KnezGb8mYJL+BXwnqc1zES_amT+XKWA@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 8:03 PM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, Jul 27, 2016 at 07:58:29PM +0200, Luis R. Rodriguez wrote:
>> On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
>> > > to help enable asynchronous probe, however for built-in devices this requires
>> > > very specific platform knowledge otherwise using async probe will blow up
>> > > your kernel -- if you get it right though, using async probe can help with
>
>> > I'm not sure what specific platform knowledge you're thinking of here?
>> > We have coverage for most things in the form of deferred probe (messy
>> > though it is).
>
>> Deferred probe is a complete a hack and sub-optimal. Being able to address
>
> Sure, I don't think anyone disagrees on that but it does mean we don't
> actually blow up easily like we used to - it's messy but it does get
> there safely.  I was specifically querying your statement that things
> would blow up.

Some drivers/subsystems don't support deferred probing yet. Such failures
usually don't blow up, but cause subtle malfunctioning.

In the specific case I encountered, an Ethernet phy couldn't get its interrupt
in of_mdiobus_register_phy(), as the (non-primary) irqchip hadn't been probed
yet. It didn't really blow up, though, as the phy driver fell back to polling.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
