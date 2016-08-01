Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15A2589C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:13:42 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E093E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:13:41 +0000 (UTC)
Message-ID: <1470075217.13905.23.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Dave Hansen
	<dave@sr71.net>, Johannes Weiner <hannes@cmpxchg.org>
Date: Mon, 01 Aug 2016 14:13:37 -0400
In-Reply-To: <1470069183.18751.35.camel@HansenPartnership.com>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<1469742103.2324.9.camel@HansenPartnership.com>
	<20160801154639.GD7603@cmpxchg.org>
	<1470067585.18751.24.camel@HansenPartnership.com>
	<579F74B4.1060302@sr71.net>
	<1470069183.18751.35.camel@HansenPartnership.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-GVClQcszAz1kxJAaM6CB"
Mime-Version: 1.0
Cc: "Kleen, Andi" <andi.kleen@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory thrashing,
 was Re: Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-GVClQcszAz1kxJAaM6CB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2016-08-01 at 12:33 -0400, James Bottomley wrote:
> On Mon, 2016-08-01 at 09:11 -0700, Dave Hansen wrote:
> > On 08/01/2016 09:06 AM, James Bottomley wrote:
> > > > =C2=A0With persistent memory devices you might actually run out of
> > > > CPU
> > > > > capacity while performing basic page aging before you
> > > > > saturate
> > > > > the=C2=A0
> > > > > storage device (which is why Andi Kleen has been suggesting
> > > > > to=C2=A0
> > > > > replace LRU reclaim with random replacement for these
> > > > > devices).
> > > > > So=C2=A0
> > > > > storage device saturation might not be the final answer to
> > > > > this
> > > > > problem.
> > > We really wouldn't want this.=C2=A0=C2=A0All cloud jobs seem to have
> > > memory=C2=A0
> > > they allocate but rarely use, so we want the properties of the
> > > LRU=C2=A0
> > > list to get this on swap so we can re-use the memory pages for=C2=A0
> > > something else.=C2=A0=C2=A0A random replacement algorithm would play =
havoc
> > > with that.
> >=20
> > I don't want to put words in Andi's mouth, but what we want isn't
> > necessarily something that is random, but it's something that uses=C2=
=A0
> > less CPU to swap out a given page.
>=20
> OK, if it's more deterministic, I'll wait to see the proposal.
>=20
> > All the LRU scanning is expensive and doesn't scale particularly
> > well, and there are some situations where we should be willing to
> > give up some of the precision of the current LRU in order to
> > increase
> > the throughput of reclaim in general.
>=20
> Would some type of hinting mechanism work (say via madvise)?=C2=A0

I suspect that might introduce overhead in other ways.

> I suppose another question is do we still want all of this to be page
> based?=C2=A0=C2=A0We moved to extents in filesystems a while ago, wouldn'=
t some
> extent based LRU mechanism be cheaper ... unfortunately it means
> something has to try to come up with an idea of what an extent means
> (I
> suspect it would be a bunch of virtually contiguous pages which have
> the same expected LRU properties, but I'm thinking from the
> application
> centric viewpoint).
>=C2=A0
On sufficiently fast swap, we could just swap 2MB pages,
or whatever size THP is on the architecture in question,
in and out of memory.

Working with blocks 512x the size of a 4kB page might
be enough of a scalability gain to match the faster IO
speeds of new storage.

--=20

All Rights Reversed.
--=-GVClQcszAz1kxJAaM6CB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXn5FRAAoJEM553pKExN6DQqIH/2P0drqLVjzCZqRXgERyz6bC
ZFwyidvFPtxmqv6pxyLLR/Y6Yye0jZdJyZRYvb0FJrKCgs8g+JDsYPq7ztzcy85I
5nb72euEv7f3IpRuaNK+iYUk3KZCopEn7/MEepnvqMSld6Q66fzHf/8ppFGLAChY
muiFI8mZNr5WmcSLg1G84GC4jrizOhuD2GgdAY4j3G+zL1Knve0AMLYgys2roddB
Nfmph3EZVehX91PcZTglCME5spgHVWfxW5rCRdtq0erzZPT2jrK8C4ugnkAkhdhQ
+fK2UpBvl2WfR2ojtcSnHHb2TsChZZIISy3B0pNhhGZ1SUmReEhcpazTiMULuKw=
=hJtj
-----END PGP SIGNATURE-----

--=-GVClQcszAz1kxJAaM6CB--
