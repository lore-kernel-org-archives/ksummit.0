Return-Path: <broonie@sirena.org.uk>
Date: Wed, 21 Sep 2016 19:50:38 +0100
From: Mark Brown <broonie@kernel.org>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Message-ID: <20160921185038.GE7994@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
	<57E29EA3.2000605@linaro.org> <20160921152819.GA25212@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PPYy/fEw/8QCHSq3"
Content-Disposition: inline
In-Reply-To: <20160921152819.GA25212@kroah.com>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PPYy/fEw/8QCHSq3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 21, 2016 at 05:28:19PM +0200, gregkh@linuxfoundation.org wrote:
> On Wed, Sep 21, 2016 at 10:52:19PM +0800, Alex Shi wrote:

> > I have left Intel Open source center for 3 years, may I miss some
> > changes in Intel. In my memory, Intel has no soft product on its leading
> > open source project, like virtualization or others. On android or
> > previous meego project, it's still use 'old' kernel with much of
> > down-stream patches.

> Being one of the previous Meego kernel maintainers, and in charge of a
> number of laptops that shipped Meego images (we made money on
> preinstalled Linux!) I strongly disagree with that statement.  We spent
> a lot of time getting all of the work we did for Meego upstream when we
> added it to our kernels, there was no deviation there at all.

Sadly the x86 Android phones I've seen were no different to any other
Android phone in this regard.

> We know bug reports come from everyone, there is no such thing as "bug
> free software", and none of us are claiming it.  What we are claiming is
> that you should stick to the tree that is tested by as many people as
> possible the closest (i.e. mainline) as that gets you the most bug
> fixes, as well as the ability to use the kernel community to help you
> out when you have problems.  Otherwise you are on your own with your
> 2.5million lines added franken-kernel that no one will touch if they
> have a choice not to.

That diff isn't going to go away overnight of course...

> > There are do many guys 'ignore' the upstream work with a huge 'time to
> > market' pressure. But there are not only their fault, community may need
> > some better ways to help them out.

> Ok, why are they not talking to us?  We are easy to find, just look at
> our inboxes :)

> What do you think we could do to help them out?  That's what I have been
> doing for the past 10 years in going around and working with companies.
> But it's a two-way street, we aren't going to suddenly stop development
> on new kernels and just focus on one specific one for a full year, you
> have to be realistic.

Right, as do we.  People's code isn't magically going to get upstreamed
overnight, it takes time especially if the hardware isn't designed in a
way that Linux expects and needs some substantial framework adjustments
(which is a serious problem for some of the SoCs).

> > BTW, I take back this word. There are may some industry out of my
> > experience which is doing so. But let me know the case.

> Lots of them are, look at the customers of Renesas as one such example
> of an SoC company that knows how to do this well, and is doing a great
> job.  And their customers seem to appreciate it from what I can tell.

They are one of the better engaged vendors, as are companies like Atmel,
TI and nVidia (pulling names off the top of my head here), but talking
to their downstreams they do still have product kernels with a bunch of
things in them which have not all seen the light of upstream.  It's not
black or white, it's shades of grey.

You're asking what we can do to help - one of the biggest things I wish
we did more of was spend time calling out good practice rather than
complaining about bad practice.  Help people see changes they can make
today rather than talking only about a far off, distant goal.  Encourage
people doing these things to talk about the day to day benefits they've
seen.

--PPYy/fEw/8QCHSq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX4tZ9AAoJECTWi3JdVIfQDjoH/26SHm/1hYhVslY9k9+t3vvZ
eBcJDyeXXNYZvI3ae3D85ffXyhQNpEoA1OxQax6dlK/Ef8njGAxGbpgff3l//fmp
f3JUrhL5BdgSoI561cr3i9EW5cj/pfq1jfBHNo0xDvoMH/6MkMnJERRKO+XsZPcz
r9A5laqbQ1Fs5lnEuFS0JNe+RcO0Z/+Z0vMLWFG6fq1Xlk4tbv7GP+oFiaBBgKLX
xSd8ZL9s6hMcYN/hyKyWV3g711BTkUg391xh6w/VPtNk7WgcLIb/ZjAKy8pELn36
8F+MPNks9YEIEloMLEglooYAyUsvP2qKRQbUt1ac267ti62k0F6dh47o+ABriOY=
=3fwd
-----END PGP SIGNATURE-----

--PPYy/fEw/8QCHSq3--
