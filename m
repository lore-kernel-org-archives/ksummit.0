Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0329FE88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 11:32:47 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE8EFA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 11:32:45 +0000 (UTC)
Date: Fri, 7 Sep 2018 12:32:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180907113241.GC17459@sirena.org.uk>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm> <20180907042754.GL5098@thunk.org>
	<CAKMK7uEsN9YDjEus5hndhhF1jbSS+=P804bS8iKJmyp76hmtKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pk6IbRAofICFmK5e"
Content-Disposition: inline
In-Reply-To: <CAKMK7uEsN9YDjEus5hndhhF1jbSS+=P804bS8iKJmyp76hmtKA@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Pk6IbRAofICFmK5e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 07, 2018 at 11:13:20AM +0200, Daniel Vetter wrote:

> Of course this is much harder for anything that needs physical
> hardware, but even for driver subsystems there's lots you can do with
> test-drivers, selftests and a pile of emulation, to at least catch
> bugs in generic code. And for reasonably sized teams like drm/i915
> building a proper CI is a very obvious investement that will pay off.

It does depend what the primary focus of the QA people is of course -
one of the challenges that comes from people shipping stable in products
is that this tends to be where all the QA investment from vendors goes.
Vendors who are taking a longer term view of their investment in
upstream (and especially those who realistically still have to ship an
out of tree patch stack on top of whatever's upstream) often work on the
basis that they'll figure things out when they pick up the release for
production.  It's a cost, they know it's a cost but there's also costs
in having QA tracking upstream.

> > But other trees seem to be much more loosey-goosey about what they
> > will push to linux-next, since they want to let the 'bots catch
> > problems.  With the net result that they scare users away from wanting
> > to use linux-next.

> Yeah, if maintainers see linux-next as their personal testing ground
> then it becomes useless for actual integration testing. But it's not
> quite as bleak as it was 2 years ago I think, at least from what I'm
> seeing when in our linux-next runs for drm/i915. It still does need to
> get a lot better though.

My experience has been a lot better here working on embedded - yes,
things do occasionally collapse horribly but for the most part it's a
reasonably solid basis to work from for as long as I can remember and
when things do break they normally get fixed fast enough.  Things were a
bit worse before KernelCI and Olof's boot farm, over time (and with the
breakage the DT transition introduced winding down) those have helped
quite a bit.  I think some of that's down to differences in the
underlying hardware with more being directly visible it's easier to unit
test, don't know if there's anything else going on.

--Pk6IbRAofICFmK5e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluSYdgACgkQJNaLcl1U
h9AYnAf9EqJ6ohwitjE7rXWNWBTUCxd0YearR51ItSKPkO0KkGnbg63if6gFS8fk
g6Din+W2b6pr3WOZc8RGTS0LmkJUnJlep0IcCfk3bOIx9Kx77O+3sheL8O+r48FZ
4F0C+/Ubm/BN/99saP6LUKP/8kOPuBaSSQyofbKE4mZPetne8JhPlI9cZ4ebmrII
HKBs5+lgadzJ3S8AfWRqAGt5+e9uxTm34PRW67a2Mx/QZFP5afKRV+RbPpLAf91t
XtH6vv3Al8F2G1PlYRrObmcoHl9l5a8KFhnoOFBnbaEx8ta/O8EBcGQOQcVJI7NF
vMus9DkA9xLMVEVXlJg2ATfbvLdarg==
=MkOi
-----END PGP SIGNATURE-----

--Pk6IbRAofICFmK5e--
