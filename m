Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29870B8E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 19:02:38 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 507631A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 19:02:37 +0000 (UTC)
Date: Thu, 20 Apr 2017 20:02:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170420190222.bxl5tojgz2psqt74@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAPM=9tyU0Q+CZRpgnx34wRNLzMU1B5DmOSA+S-SRXghVbWKnSw@mail.gmail.com>
	<CAKMK7uE+E0RAB7z3zhtKn5tj45g_0PsLnNrGwJOxGJzUyqos8g@mail.gmail.com>
	<CA+55aFxhK=h-wr8kFf42fXFHh-Dsn7QNiFWt+Kcr0umG4k3gQw@mail.gmail.com>
	<CAKMK7uHuQgjaGN03omr_c9JTs11zRL6Dxri8jr2CCFXQ4EN7og@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="227qcvm73oxqszl4"
Content-Disposition: inline
In-Reply-To: <CAKMK7uHuQgjaGN03omr_c9JTs11zRL6Dxri8jr2CCFXQ4EN7og@mail.gmail.com>
Cc: Rom Lemarchand <romlem@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, David Miller <davem@davemloft.net>,
	Doug Ledford <dledford@redhat.com>, Sean Paul <seanpaul@chromium.org>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--227qcvm73oxqszl4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 18, 2017 at 11:39:22PM +0200, Daniel Vetter wrote:
> On Tue, Apr 18, 2017 at 10:56 PM, Linus Torvalds

> > Side note: people should think about various infrastructure/testing
> > people too  So kernel.org, but also things like zero-day etc test
> > labs.

For kernelci.org the kernel people involved are Kevin Hilman and myself,
mainly Kevin. =20

There's also some work on automation of actual test running going on in
Linaro intended to end up fulfiling a similar role to the various
build/boot bots which should be in a state to talk about usefully by
October but I don't want to overpromise.  I'll definitely be able to
talk about some of the experience with getting things up and running by
then.

> Hm, we're trying to build up a much more ambitious CI here for drm and
> intel specifically, but nothing all that interesting yet relevant
> beyond drm. What could be interesting (but not for the discussion
> session, more for the general track) is getting our userspace CI team
> to explain what they do. Except that it runs in userspace the gl

I'm wondering if we should be trying to ge a miniconf together for this
stuff, there's a reasonable number of people attacking kernel QA from
various angles and there's probably a lot to be gained from sharing
ideas and experiences.

> A hw testing bof thing for different (driver) subsystems to compare
> notes might be good, but I'm not sure that'd be useful for the group
> discussions really. Probably more talking to the audience than what
> you're aiming for.

I think there's a useful conversation to be had there if we do have a
good selection of downstream users in the room, not just about hardware
testing but more generally about what we're doing upstream around test
and how that's translating to our downstreams.  How do we make sure that
people who are either downstream users or just interested in general
kernel testing find out about tests we're using upstream, how to use
them and so on?  Are the tests we're using useful for them as well as
the developers?

Ideally testing could be another way to open up interaction with people
who haven't been working upstream so much, or if nothing else help
raise the quality of out of tree code, but at the minute it seems like
we have a discoverability problem.

--227qcvm73oxqszl4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlj5Bb0ACgkQJNaLcl1U
h9A0kgf9GI1OOh/RGgJ5LRIkxljkUsd9NBWRL/L+mNrh0FQ7hWl29pnunOP6JFsD
+A5DnMqV63tDFUB+svsvggQHLXPwIhihrpRfABsL1Em2APpIInMr6UjblMgUUYjA
ejswhe/AL9bgTStX/o4dBWuOhitCixkaK95W13+Wfu0lTuJUHkfKKawbNFl5AzzK
aU+7WGNGrhrntLMb0D57k4a2av+soyyaPwHasji6o0j+WOGAszF/9HKXFGPQjsfB
NnniLEFgltJi0AcEh8j+VfvYficbuSbc55O5z+SntAj972uEkWPrSWtP1sUyZ6zJ
wSv6G0G5PBvDKQPczyWVBbPJAN6trg==
=YWsg
-----END PGP SIGNATURE-----

--227qcvm73oxqszl4--
