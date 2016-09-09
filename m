Return-Path: <neilb@suse.de>
From: NeilBrown <neilb@suse.com>
To: Mark Brown <broonie@kernel.org>
Date: Sat, 10 Sep 2016 08:17:49 +1000
In-Reply-To: <20160909110135.GH27946@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
	<8737la81bk.fsf@notabene.neil.brown.name>
	<20160909110135.GH27946@sirena.org.uk>
Message-ID: <87mvjg7m5u.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Baolin.Wang@linaro.org,
	James Bottomley <James.Bottomley@HansenPartnership.com>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
	backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--=-=-=
Content-Type: text/plain

On Fri, Sep 09 2016, Mark Brown wrote:

> [ Unknown signature status ]
> On Fri, Sep 09, 2016 at 08:38:07AM +1000, NeilBrown wrote:
>
>> There is a usb notifier which allows other drivers, such as power
>> managers, to be told when a cable is attached to a USB port.  That is
>> enough to get basic charger functionality working.  But not all phys
>> send a notification and those that do, don't do it in a consistent way.
>> There is also extcon, which some phys use to report a cable, but not
>> all.  It provides more details of the cable, but cannot report anything
>> about a current limit negotiated with a host.
>
> Right, we did look at these early on but they're all working with
> subsets of the functionality - for example physical presence isn't
> enough to kick off high current charging.  Part of the thinking was to
> create something which could aggregate the various bits of information
> that individual subsystems are detecting to produce a coherent view.
>
>> So you certainly can make this work with mainline (I've done it)
>> without any extra infrastructure.
>
> You can support low rate charging (and some systems will just do chunks
> of this autonomously in the hardware with no OS intervention) but I'm
> not clear how high rate is going to work.

Get the phy to register an extcon, and report the charger type.
Get the power supply to register with that extcon and, when an
EXTCON_CHG_USB_* cable is reported, start using more current.

>
>> The current patchset isn't exactly adding a third way to do things, but

Actually I got that wrong.  It *does* exactly add a third way of doing
things.
->uchgr_nh  is a third, separate, notifier chain.

>> it is adding stuff without cleaning up what is currently there.  This
>> won't make the code less messy.
>
> It wasn't clear that the messiness wasn't just because nothing is taking
> a top level view of what's going on.

That is no excuse for leaving it there.  If you want to fix something,
take the top level view, tidy up the mess, and fix it.

The first step should be to do an audit of the current code.  See how
things are used, ask how they could be used more consistently and maybe
could be modified to meet your needs.  Part of this is making sure you
have a clear understanding of the need.  The current patchset doesn't show
that clear understand at all.  This is particularly obvious in the way it
has incorrect defaults for the various charger types.

With a little bit of fixing, extcon is perfectly placed to report
charger types to the power supply.  I think that should be fixed up and
used.  No extra framework needed, just fix what we have.

For communicating the current negotiated in the USB config I see two
options.  One is to fix up the current usb_register_notifier() framework
so that it is used consistently, and have it communicate the allowed
current level.
The other is to remove usb_register_notifier() completely and replace it
with something like the uchgr_nh in the current patchset.
I think usb_register_notifier() is used for two different things.
One is to report a USB or a USB-OTG connection to the usb driver, so it
can configure as 'host' or 'gadget'.
The other is to report the current limit.
Some drivers use extcon for the USB-OTG notification.
Deciding on, and standardizing, a single way to notify which sort of USB
data cable has been plugged, would be very valuable.
The charger-type and negotiated-current notification could use the same
mechanism, or could use a separate mechanism, or could use two different
mechanisms.
I have no strong opinion on what mechanism should be used for each
(well ... I do, but I'll probably have a different opinion tomorrow).
But I *do* strongly believe that each particular type of communication
should be done just one way, and part of creating a new "framework" is
to make sure that all current use-cases fit neatly into the framework.

NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX0zUNAAoJEDnsnt1WYoG5YG4QAKWOrIraodLunEOS5b2ilUXH
MPUdq47zBmY74LXM/uBxFCN86jFgEKdXwnLDnsuw+W+cpgApzB1C2vjNBOYFGZ51
9nNbkbTeG5MrWPYzYX57cWfkQmNCUjf80UFJ7ggK6Fe8AivKlmtPdArCGE8/wokj
hupA5dxEg+jVgcbteF6ujRIWuFSziBg+6hrAiazyOT7sc592CxeJfsLmxEFqJmwV
2wU6ShyLVSYgT4K+x7Qz0837VEzOLMTGu79sL7FTE2Vd8LF5YY8yfcVimV3cQXA0
TSsBJ7jw13fnkANb78G66Sh4djgER+XrvCawxAprWHtCPMHmNHLbv2gps+WaoxIp
rcYs4QOVtoxu3tZ7eByqIhtPvZ6rEX3Y2m1MYI3BWZzC+gdhl2s848tHd9hZxOxI
ATBUBAMFRy1xAl/PVqMo4PZA55DDoMIf1XsTbZlENSniQ5yX/6kDXBLJ1mlsyeXW
MkWjSS8U7B1hv6aB9yTAR0hGkAuRgL+naes8Uo4slw8e0OBrKcR0/DgZ7tO+oIVk
uf51W76bU2ikZlyQPjJFpx1y/m5bRsrVWQuPwGiWWdW5qaQhjp0yuoA/tPH3KFLI
F3uYOYGtijU2R4Lpuw4LbrevhqXqBaE/Co8veuOP+3AI569oAkVGynLoWQTrmD4g
7Xq2+/O35XT3I+6pCPE0
=sF/F
-----END PGP SIGNATURE-----
--=-=-=--
