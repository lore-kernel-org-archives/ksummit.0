Return-Path: <neilb@suse.com>
From: NeilBrown <neilb@suse.com>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 13 Sep 2016 09:46:48 +0200
In-Reply-To: <20160912173702.GE27946@sirena.org.uk>
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
	<20160912173702.GE27946@sirena.org.uk>
Message-ID: <87a8fc1btj.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
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
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 12 2016, Mark Brown wrote:

> [ Unknown signature status ]
> On Sat, Sep 10, 2016 at 08:17:49AM +1000, NeilBrown wrote:
>> On Fri, Sep 09 2016, Mark Brown wrote:
>
> Baolin, I may be misremembering some of our discussions here - please
> jump in!
>
>> > It wasn't clear that the messiness wasn't just because nothing is taki=
ng
>> > a top level view of what's going on.
>
>> That is no excuse for leaving it there.  If you want to fix something,
>> take the top level view, tidy up the mess, and fix it.
>
>> The first step should be to do an audit of the current code.  See how
>> things are used, ask how they could be used more consistently and maybe
>> could be modified to meet your needs.  Part of this is making sure you
>
> We did that, bear in mind that this was started quite a while ago.  The
> main thing I was discussing with Baolin at the time was handling of the
> USB level negotiations rather than actual chargers.=20=20

It would have been so helpful if the introduction to the patch series
had provided the results of that review:
  "Notification of negotiated USB current allowance is currently
  handled in a very ad hoc way.  Some drivers (listed here) use the usb
  notifier mechanism, others just ignore the information.  The usb
  notification mechanism is also used to notify the USB controller when
  the phy detects a cable being plugged in, though some phys send the
  notification with extcon.
  This is rather a mess, but instead of fixing this up, we have chosen
  to create a third, incompatible, notification mechanism because ....

The background thinking behind a patch can be just as useful as the code
in the patch.

>
>> have a clear understanding of the need.  The current patchset doesn't sh=
ow
>> that clear understand at all.  This is particularly obvious in the way it
>> has incorrect defaults for the various charger types.
>
> Right.
>
>> With a little bit of fixing, extcon is perfectly placed to report
>> charger types to the power supply.  I think that should be fixed up and
>> used.  No extra framework needed, just fix what we have.
>
> But chargers aren't the world...

True, but they are the most problematic part of the proposed patch
series.

>
>> For communicating the current negotiated in the USB config I see two
>> options.  One is to fix up the current usb_register_notifier() framework
>> so that it is used consistently, and have it communicate the allowed
>> current level.
>> The other is to remove usb_register_notifier() completely and replace it
>> with something like the uchgr_nh in the current patchset.
>
> ...and then the power supply drivers need to also do this.  Since we
> know we're likely to have a PHY and a gadget working together it seems
> sensible to have a single bit of code that does the joining up here.

Sorry, I cannot make out what it is that power supply drivers will also
need to do.

>
>> I think usb_register_notifier() is used for two different things.
>> One is to report a USB or a USB-OTG connection to the usb driver, so it
>> can configure as 'host' or 'gadget'.
>> The other is to report the current limit.
>> Some drivers use extcon for the USB-OTG notification.
>> Deciding on, and standardizing, a single way to notify which sort of USB
>> data cable has been plugged, would be very valuable.
>> The charger-type and negotiated-current notification could use the same
>> mechanism, or could use a separate mechanism, or could use two different
>> mechanisms.
>> I have no strong opinion on what mechanism should be used for each
>> (well ... I do, but I'll probably have a different opinion tomorrow).
>> But I *do* strongly believe that each particular type of communication
>> should be done just one way, and part of creating a new "framework" is
>> to make sure that all current use-cases fit neatly into the framework.
>
> Right, so a certain part of the thinking here was to hide these
> decisions from the power supply drivers so they just see the combined
> result of charger type and negotiated current and we could just start
> off by reporting the negotiated current.
>
> Going back to the more general point that spawned this subthread this is
> all really useful feedback which could've been provided much earlier on
> - we've not done a great job of ensuring that this review happened.

This sounds like the topic that seems to come up every kernel-summit and
never really makes any progress:  How do we motivate people to provide
good quality independent reviews of code?
My perspective has always been that someone has to pay for it.  Good
review takes a serious amount of time, and unless they are being paid,
people are going to scratch their own itch, not someone else's.

To an extent, lwn.net does pay me to review kernel patches, and they
publish my reviews.  Nearly every comment I've made about the patches in
recent emails were in those published reviews.  Yet it seems I had to
make them all over again, then argue my case when it seemed that I
wasn't being heard.  So in this case at least, it could also be said
that we've not done a great job of listening to the reviews that did
happen.

NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJX167oAAoJEDnsnt1WYoG5xUIP/R3TDfY/bWWcw37NpAlFtupk
y3F0s+ZOQBJw/Im3ApJOcVJ02cROeqJCQBTBiffnovSPe7cbelQXkVFxWFSz9Oua
esNNFnAVrornRuUIL2vFygLGkaW3hTuCGTtGJbbVIeUcAiVhuuUg4DuuyyK0riSY
vnhIJ3fKvZeJo2WskYg4D8Drsat156N007ZN2+PQG4hSQS2atIGOt5mYJ4eGfJb9
WWIUhHY8KhRl4mV09Dt1FJ991DQTjxyhtgojEhutkFUsuIt9OAQBR8rSy7rP6aiA
yWzJMbS4aEKiUhzIAmZ2jVldleqFVgYhv3be9yzkzR970KEVnOzaAzeZ6Pb1H2oc
osPY6Nkaxm95e+QZthJApjU1PLJtX1TrJ3MYoIuOt3HUS0+1X+w5TpFLXnNxJQ3s
u7w1M1Dxi288mCUY8OK0dIbF/7S3Lhy48/SzRuVLFFEjFBZJ6iwNi6JKYlXk/fFT
j3v5ZE8jU/zJk1grflZehdeux3BqhsBpRF7vezfqB29mslKJWmemC+oISy5rndFV
FnJZ4bzW4aBKQbzN04uNwdXOZCveZ9bqMawKuyNIgvD9xoUlfeQ0iGpsNshJ1dF9
0CqVlTuooPv7bULcpweSVdSf5+eWtqN0Zw7RSwsoXwDKGpxFDejA/Uu10M5Te/lo
CRqIWUPUG2LFP3xa8Sj4
=QfIc
-----END PGP SIGNATURE-----
--=-=-=--
