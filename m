Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4CAEF723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:45:03 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE7E81F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:45:02 +0000 (UTC)
Date: Thu, 4 Aug 2016 16:44:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160804154444.GA10323@sirena.org.uk>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline
In-Reply-To: <20160804093355.30096bbe@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 04, 2016 at 09:33:55AM -0400, Steven Rostedt wrote:
> Greg KH <greg@kroah.com> wrote:

> > No, again, that would put more burden on the maintainer and developer
> > than I want to "enforce".  I don't even want to do that extra work for
> > the trees I maintain, I just couldn't scale that way.

> Note, this isn't just good practice for sending patches to stable, it's
> general good practice maintaining code. It gives a nice history of a
> change. If you look at the change log of code that one might see that
> looks "interesting" it may be very educational to see that it was done
> as a fix for something else. And a new developer may understand why
> code was added in the first place.

If it's a choice between me taking a bugfix for mainline and me getting
someone to give me a commit ID for exactly which commit introduced some
change I'm probably not going to do the latter, especially when a lot of
these things are more of the "we now understand the hardware better"
variety.

> I don't buy this as burden on a maintainer. This should be part of the
> maintenance procedure, regardless of sending to stable or not. Yes it
> does take extra time, but I don't think that time is wasted.

I'm really happy we've got people engaging upstream.  I'm happy if
people fill in the extra information but really I'm way more interested
in a clear changelog than in getting a Fixes tag, or in checking that
the tags people are adding are accurate.

One thing I've told driver authors before is that the big thing I'm
looking at for drivers for hardware which has limited distribution is
the impact it has on the subsystem and maintainability - to a great
degree if nobody can tell if the driver works there's a limited extent
to which I'm going to care about things.  That doesn't mean I'm not
reviewing at all but there's always a point where I just can't tell.

--OXfL5xGRrasGEqWY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXo2LrAAoJECTWi3JdVIfQlFgH/i3z/DXfmYnSowBfxruz5Cd6
QhV8Ot1eaxxaMEwOP7tVmdNxb6lPCrAKSRBCcf3wwEzV5KEQheR/Oo0ybdydpUPc
K8ibMw0tLCEjWRbzzSOoHkWF8/1QlkPOuT/fZy6OTPpiAz6jyPOOv49rm8FiCaK3
HRXxS69T/cMwqcxPGH+sVMAIMQ2qJggh3bU/31I/LiguVM4xFwtNdHCY5gtiPZ6W
Jr3D37rFgC3fiG97NwAd2KdMMFuaQ0WyJQnaryjfGmrBFakoRaviJhy3fS+5iQI3
D+tz2kdHsKbGeMCZ7dWDyZp20c9VP3mUZQIRV+Gl8L93sfdIPHYKiXGXeuynIkg=
=MH8/
-----END PGP SIGNATURE-----

--OXfL5xGRrasGEqWY--
