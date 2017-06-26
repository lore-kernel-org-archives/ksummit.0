Return-Path: <geert.uytterhoeven@gmail.com>
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20170626045111.GW1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
	<20170625190529.GV1248@mtr-leonro.local>
	<20170625213245.ep555qmzwbl4kjpq@piout.net>
	<20170626045111.GW1248@mtr-leonro.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jun 2017 08:47:02 +0200
Message-ID: <CAMuHMdVffwRAubWaVTBG_Z+MRrcrSgFyg15p3t26JF57_3CwmQ@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
	versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 26, 2017 at 6:51 AM, Leon Romanovsky <leon@kernel.org> wrote:
> On Sun, Jun 25, 2017 at 11:32:45PM +0200, Alexandre Belloni wrote:
>> Hi,
>>
>> On 25/06/2017 at 22:05:29 +0300, Leon Romanovsky wrote:
>> > On Sun, Jun 25, 2017 at 11:37:12AM -0700, Linus Torvalds wrote:
>> > > On Sun, Jun 25, 2017 at 11:19 AM, Leon Romanovsky <leon@kernel.org> wrote:
>> > > >
>> > > > Great, so why are we continuing to allow patches with MODULE_VERSION and
>> > > > DRIVER_VERSION changes?
>> > >
>> > > I suspect they just haven't caused problems elsewhere.
>> > >
>> > > And honestly, they aren't that common. Grepping for MODULE_VERSION and
>> > > DRIVER_VERSION shows more than I would like, but we're talking
>> > > hundreds, not thousands (and lots of them are basically dead, stale
>> > > code - ATA etc, or just joke names - usb).
>> >
>> > I see it differently, from my point of view, it is pretty active,
>> > especially in the subsystems where new drivers are added more often,
>> > but if you say that the policy exists, it is enough for me.
>> >
>>
>> A while ago, I went and removed all of them from the RTC subsystem.
>
> I assume that you are referring to the commit fa5691131a87 ("rtc: remove useless DRV_VERSION").
>
> Let's see how similar patch will be accepted in RDMA, netdev communities.

The only version that matters is CONFIG_LOCALVERSION_AUTO=y.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
