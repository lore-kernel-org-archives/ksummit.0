Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3975D899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:56:56 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9611A26C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:56:55 +0000 (UTC)
Message-ID: <1470326213.2411.26.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Date: Thu, 04 Aug 2016 08:56:53 -0700
In-Reply-To: <20160804154444.GA10323@sirena.org.uk>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-68Ir9EHMA3Ar44ORUoia"
Mime-Version: 1.0
Cc: Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-68Ir9EHMA3Ar44ORUoia
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-08-04 at 16:44 +0100, Mark Brown wrote:
> On Thu, Aug 04, 2016 at 09:33:55AM -0400, Steven Rostedt wrote:
> > Greg KH <greg@kroah.com> wrote:
>=20
> > > No, again, that would put more burden on the maintainer and=20
> > > developer than I want to "enforce".  I don't even want to do that=20
> > > extra work for the trees I maintain, I just couldn't scale that
> > > way.
>=20
> > Note, this isn't just good practice for sending patches to stable,=20
> > it's general good practice maintaining code. It gives a nice
> > history of
> > a
> > change. If you look at the change log of code that one might see
> > that
> > looks "interesting" it may be very educational to see that it was
> > done
> > as a fix for something else. And a new developer may understand why
> > code was added in the first place.
>=20
> If it's a choice between me taking a bugfix for mainline and me=20
> getting someone to give me a commit ID for exactly which commit=20
> introduced some change I'm probably not going to do the latter,=20
> especially when a lot of these things are more of the "we now=20
> understand the hardware better" variety.
>=20
> > I don't buy this as burden on a maintainer. This should be part of=20
> > the maintenance procedure, regardless of sending to stable or not.=20
> > Yes it does take extra time, but I don't think that time is wasted.
>=20
> I'm really happy we've got people engaging upstream.  I'm happy if
> people fill in the extra information but really I'm way more=20
> interested in a clear changelog than in getting a Fixes tag, or in=20
> checking that the tags people are adding are accurate.

Why not look at this in a different way: any bug fix that's correcting
a prior commit is actually a regression.  The reason we treat
regressions differently (and actually have someone to track them) is
that they're the ones users hate: it means that something that was
previously working (and thus relied on) suddenly doesn't work any more.
 Note that not every bug fix with a fixes tag is a technical
regression: if the fixes tag is actually the commit that first
introduced the feature it's not a regression because the non-buggy
behaviour was never visible to the end user.  However, the people who
track regressions are capable of sorting this out.

What I'm pointing out is that Fixes: has uses that go way beyond
stable.  That's why I do think it's good practice for the kernel.  It's
something we should already be doing that can assist the stable
process, not something that's just been invented for the purpose.

James


--=-68Ir9EHMA3Ar44ORUoia
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXo2XFAAoJEAVr7HOZEZN4U+oQAJCJsSTJmXLhcyg4hwvkkurm
DNz+u06DotClo+NCKthweXHiC2OdUtzUc+3dJ/ilF0tmoCl8UGJ5NDsW7jI/p7qY
3M8cZTs/CbVaqvAMKuGX3Uah7bfX3jvVkgtODhXhdZIdPi0ZkwUMzBXvZFEmL2EL
IRYjuzOgWLeaqXH7qwlVuxzAwKcqk1n3KJXf1sm/V/gVeSRNWAth9NTP0xD04LIj
YAYhs3KWnJHl4jijXYKd/e+rkFaRO/sGyrerpsKP+FO3/ANz55sOMLuH/j1hrwgf
1c8CIHhv3AsGxvKaaZHENhX6Z+XRPZIJiRf0MySjokeV82KRb/otCWnbnpkLvTix
ul1/VHfnMrYxmo4o7lvWxgAn3uyiO94u4etbefe7RjcpvvL6Wmw0TRX/6YodvHvR
N4BCD0xtTHsN1LVt+4mvsdbiCGSh1u3TiH1pYLubFaWIMe2qgzUnHdpSIWqsc+w9
5pJGH6vMVMcFZAC5S0yOWsBHEAGcL5Jdzt5HA/rJXsEwcdnFPTIQQNgIO+1RDsgG
GlNYAhQHw2c5mKkia+/LLyz3jVnbdGio9ApZcKHbv36PuRxvaRa9/AfiM2mFehyU
h70SzeDoJQ5R5Pso1nOx3nQBCBbFl592IRI86bDhbbFoiYMsW/dF0K1uiaQK6Y3n
sXcZs8p7ldXOLFBue3Jb
=N0/V
-----END PGP SIGNATURE-----

--=-68Ir9EHMA3Ar44ORUoia--
