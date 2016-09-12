Return-Path: <broonie@sirena.org.uk>
Date: Mon, 12 Sep 2016 18:37:02 +0100
From: Mark Brown <broonie@kernel.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160912173702.GE27946@sirena.org.uk>
References: <20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
	<8737la81bk.fsf@notabene.neil.brown.name>
	<20160909110135.GH27946@sirena.org.uk>
	<87mvjg7m5u.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XLR3b0NScy54cC0V"
Content-Disposition: inline
In-Reply-To: <87mvjg7m5u.fsf@notabene.neil.brown.name>
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


--XLR3b0NScy54cC0V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 10, 2016 at 08:17:49AM +1000, NeilBrown wrote:
> On Fri, Sep 09 2016, Mark Brown wrote:

Baolin, I may be misremembering some of our discussions here - please
jump in!

> > It wasn't clear that the messiness wasn't just because nothing is taking
> > a top level view of what's going on.

> That is no excuse for leaving it there.  If you want to fix something,
> take the top level view, tidy up the mess, and fix it.

> The first step should be to do an audit of the current code.  See how
> things are used, ask how they could be used more consistently and maybe
> could be modified to meet your needs.  Part of this is making sure you

We did that, bear in mind that this was started quite a while ago.  The
main thing I was discussing with Baolin at the time was handling of the
USB level negotiations rather than actual chargers. =20

> have a clear understanding of the need.  The current patchset doesn't show
> that clear understand at all.  This is particularly obvious in the way it
> has incorrect defaults for the various charger types.

Right.

> With a little bit of fixing, extcon is perfectly placed to report
> charger types to the power supply.  I think that should be fixed up and
> used.  No extra framework needed, just fix what we have.

But chargers aren't the world...

> For communicating the current negotiated in the USB config I see two
> options.  One is to fix up the current usb_register_notifier() framework
> so that it is used consistently, and have it communicate the allowed
> current level.
> The other is to remove usb_register_notifier() completely and replace it
> with something like the uchgr_nh in the current patchset.

=2E..and then the power supply drivers need to also do this.  Since we
know we're likely to have a PHY and a gadget working together it seems
sensible to have a single bit of code that does the joining up here.

> I think usb_register_notifier() is used for two different things.
> One is to report a USB or a USB-OTG connection to the usb driver, so it
> can configure as 'host' or 'gadget'.
> The other is to report the current limit.
> Some drivers use extcon for the USB-OTG notification.
> Deciding on, and standardizing, a single way to notify which sort of USB
> data cable has been plugged, would be very valuable.
> The charger-type and negotiated-current notification could use the same
> mechanism, or could use a separate mechanism, or could use two different
> mechanisms.
> I have no strong opinion on what mechanism should be used for each
> (well ... I do, but I'll probably have a different opinion tomorrow).
> But I *do* strongly believe that each particular type of communication
> should be done just one way, and part of creating a new "framework" is
> to make sure that all current use-cases fit neatly into the framework.

Right, so a certain part of the thinking here was to hide these
decisions from the power supply drivers so they just see the combined
result of charger type and negotiated current and we could just start
off by reporting the negotiated current.

Going back to the more general point that spawned this subthread this is
all really useful feedback which could've been provided much earlier on
- we've not done a great job of ensuring that this review happened.

--XLR3b0NScy54cC0V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX1ue9AAoJECTWi3JdVIfQVkkH/0KMCtTNTGkRaaXQ1P4JGqHt
AmnkfX6FYOhWwS9oOHF5Z4nb98C6wK9f8bD1DxY+Rl/wPwebMTur1r0oIuTlxxNv
w7I4OWZsL6L34SR/EYPMxaK98a7/WFYuAWDEjWpJqCx7wE3uEDPNHKUQasNmlujA
ELTJr7/vb/AXuTNsv/yHGAeSp7pwu3jNXPd+iXQN5+r85aZnAlHrTQ2+rKojRJIM
IM/NZrs3W05CFzifbRENZtf1o6jKkX4OILLvR7CQ4hbRNmJdOYpfiLi9L3l+bAWg
2k1whqTs7RU7KgWrysQ3upnOk1j2y0VhbaYkid3JCyxwMhquxR7lvoFqcrucnkI=
=Ha4H
-----END PGP SIGNATURE-----

--XLR3b0NScy54cC0V--
