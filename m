Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21DF6265
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 12:28:44 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7241D2C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 12:28:43 +0000 (UTC)
Date: Mon, 17 Jun 2019 13:28:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190617122837.GP5316@sirena.org.uk>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<20190615110107.GA5974@pendragon.ideasonboard.com>
	<20190617080315.4d8fd076@coco.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FTsVDVnBYKo0tCDH"
Content-Disposition: inline
In-Reply-To: <20190617080315.4d8fd076@coco.lan>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, Tim.Bird@sony.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--FTsVDVnBYKo0tCDH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 08:03:15AM -0300, Mauro Carvalho Chehab wrote:
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:
> > On Fri, Jun 14, 2019 at 12:11:37PM -0300, Mauro Carvalho Chehab wrote:

> > > We're receiving about 400 to 1000 patches per month, meaning 18 to 45
> > > patches per working days (22 days/month). From those, we accept about
> > > 100 to 300 patches per month (4.5 to 13.6 patches per day).

> > > Currently, I review all accepted patches. =20

> > As other have said or hinted, this is where things start getting wrong.
> > As a maintainer your duty isn't to work for 24h a day and review every
> > single patch. The duty of a maintainer is to help the subsystem stay
> > healthy and move forward. This can involve lots of technical work, but
> > it doesn't have to, that can also be delegated (providing, of course,

> There are a couple of reasons why I keep doing that. Among them:

> 1) I'd like to follow what's happening at the subsystem. Reviewing the
> patches allow me to have at least a rough idea about what's happening,
> with makes easier when we need to discuss about possible changes at
> the core;

> 2) An additional reviewer improves code quality. One of the feedbacks
> I get from sub-maintainers is that we need more core review. So, I'm
> doing my part.

> 3) I like my work.

This doesn't have to be an either/or thing - one of the things that you
can do is vary how much attention you're paying depending on whatever
factors are useful (which can be very fuzzy sometimes).  Thinking too
much about formailzing things can get in the way sometimes, both with
decision making paralysis and with making things seem scarier for
contributors who are being asked to take on responsibility.

> Also, as I said, this is media dirty laundering: weather I would keep
> doing patch reviews or not - and how this will work - is something for
> our internal discussions, and not for KS.

The specific example is from the media subsystem but these are general
issues.

> > > Also, as also discussed during the media summit, in order to have such
> > > kind of automation, we would need to improve our infrastructure, movi=
ng
> > > the tests from a noisy/heated server I have over my desk to some VM
> > > inside the cloud, once we get funds for it. =20

> > Sure, and I think this is a topic that would gain from being discussed
> > with a wider audience. The media subsystem isn't the only one to be
> > large enough that it would benefit a lot from automation (I would even
> > argue that all subsystems could benefit from that), so sharing
> > experiences, and hearing other subsystem's wishes, would be useful here.

> Maybe.

> Are there any other subsystem currently working to get funding for
> hosting/automation?

Not sure if it's specifically what you're looking at but there's stuff
going on that's at least very adjacent to this, more from the angle of
providing general infrastructure than subsystem specific things and
currently mainly foucsed on getting tests run.  To me that sort of
approach seems good since it avoids duplicated efforts between
subsystems.

There's people working on things like KernelCI (people are working on
expanding to include runtime tests, and there's active efforts on
securing more funding) and CKI which aren't focused on specific
subsystems but more on general infrastructure.  Tim Bird (CCed) has been
pushing on trying to get people working in this area talking to each
other - there's a mailing list and monthly call:

    https://elinux.org/Automated_Testing

and one of the things people are talking about is what sorts of things
the kernel community would find useful here so it's probably useful at
least putting ideas for things that'd be useful in the heads of people
who are interested in working on the infrastructure and automation end
of things.

--FTsVDVnBYKo0tCDH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0Hh3QACgkQJNaLcl1U
h9D7eAf6AwenwokK+ABVpY7X4eVa95UB2lkoAZ+EaLmv7ZRU3lCZEcaWk8CdLI/1
daGJSEde1c/x22NxWtsU2bXVjo6SxSGxZjVEm04+NYR46LmEcIrOAdzYht3eE7PG
J9NBDVaRakviRk+AAmh3vaKRr+VWAeJ6zy8SNzVAjUlO/Lw4HWUDABPaguZQ+Y5s
lUwUux5Q5qW6PoIjrRe3cipGjG+CHoJc2hJtX2iuNuV6nrgEqmCW/5l8zyqR+5xg
pm2YgMBSDhMekzNmBkmOoxwIOxIsdchRttwrOz8raL+249piZ95GA/QPvn4MoqBR
mfLVbDnctsr2F1TuO/Q2Mg6GcCZ1DA==
=iTuJ
-----END PGP SIGNATURE-----

--FTsVDVnBYKo0tCDH--
