Return-Path: <broonie@sirena.org.uk>
Date: Tue, 13 Sep 2016 18:53:56 +0100
From: Mark Brown <broonie@kernel.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160913175356.GR27946@sirena.org.uk>
References: <ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
	<8737la81bk.fsf@notabene.neil.brown.name>
	<20160909110135.GH27946@sirena.org.uk>
	<87mvjg7m5u.fsf@notabene.neil.brown.name>
	<20160912173702.GE27946@sirena.org.uk>
	<87a8fc1btj.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="azZrKF05zqlgub2L"
Content-Disposition: inline
In-Reply-To: <87a8fc1btj.fsf@notabene.neil.brown.name>
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


--azZrKF05zqlgub2L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 13, 2016 at 09:46:48AM +0200, NeilBrown wrote:
> On Mon, Sep 12 2016, Mark Brown wrote:
> > On Sat, Sep 10, 2016 at 08:17:49AM +1000, NeilBrown wrote:

> >> For communicating the current negotiated in the USB config I see two
> >> options.  One is to fix up the current usb_register_notifier() framework
> >> so that it is used consistently, and have it communicate the allowed
> >> current level.
> >> The other is to remove usb_register_notifier() completely and replace it
> >> with something like the uchgr_nh in the current patchset.

> > ...and then the power supply drivers need to also do this.  Since we
> > know we're likely to have a PHY and a gadget working together it seems
> > sensible to have a single bit of code that does the joining up here.

> Sorry, I cannot make out what it is that power supply drivers will also
> need to do.

Handle this separate set of notifications to the extcon ones.

> > Going back to the more general point that spawned this subthread this is
> > all really useful feedback which could've been provided much earlier on
> > - we've not done a great job of ensuring that this review happened.

> This sounds like the topic that seems to come up every kernel-summit and
> never really makes any progress:  How do we motivate people to provide
> good quality independent reviews of code?

A bit, yes.

> My perspective has always been that someone has to pay for it.  Good
> review takes a serious amount of time, and unless they are being paid,
> people are going to scratch their own itch, not someone else's.

A bunch of companies do contribute review, of course, but whoever's
paying there's always going to be particular itches to be scratched that
don't always line up with submitters.

> To an extent, lwn.net does pay me to review kernel patches, and they
> publish my reviews.  Nearly every comment I've made about the patches in
> recent emails were in those published reviews.  Yet it seems I had to
> make them all over again, then argue my case when it seemed that I
> wasn't being heard.  So in this case at least, it could also be said
> that we've not done a great job of listening to the reviews that did
> happen.

If people are missing things from reviews then we need to call them on
it - this can be a genuine oversight and just as we ask people to remind
maintainers when they miss things we should do the same for submitters.
Of course some people do just ignore repeated reminders which needs to
be handled differently but we should be able to keep things moving in
more normal cases.

At a very high level you can think about there being two axes for review
- there's speed and there's quality.  Clearly few are going to have a
problem with prompt and high quality reviews (though if they're *too*
fast that does make it difficult for new reviewers to get involved).
Equally clearly slow and low quality reviews are unhelpful so we want to
avoid those - we want to be somewhere on the spectrum of fast but low
quality or high quality but slow instead.  Low quality reviews don't
need to be a problem, it can mean saying things like "can you explain
this, I'm not entirely sure" or doing a first pass review that misses
some details if things need resubmitting for high level issues since
that gives the submitter something to work with.  Exactly where we end
on this spectrum is going to depend on the situation of course but we
really do want to avoid the situation where we're being slow and
unresponsive.

--azZrKF05zqlgub2L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX2D0yAAoJECTWi3JdVIfQF4QH/j0z9QMWMG7Y7BDaXcqroW96
/sW3mInJmDeEGGVM+EUlba9/Br3iAPzZ3+076FhsKbO7u+sCiWDLHoaSmMYd4MmT
Hje0fKSzIzGlNw/gbYWdHejyMbvQjOdTGUugSdn5itCQUtQe2QlUEbNWPPVIFKuY
T/Qx1t5Vkc/MbRasuV5YAWd2FNlruQN0sq6mPFCMngp0v+AxEKbB+PZ8m0OZ3Qwe
dwZNh/4oWo67YKQsXzbzyKJIBEHUqZDwViaTC0o40DTzOi4S3tJLo/gEu6rQHSz/
JIpLyIQ0ENwi+WjuHmRCaInIqAU/qscl/z13W32g4H3yWsnFNaCLJm+0QL2rRYM=
=6jFl
-----END PGP SIGNATURE-----

--azZrKF05zqlgub2L--
