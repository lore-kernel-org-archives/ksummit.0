Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 455D5724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 15:18:03 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EBD1410A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 15:18:02 +0000 (UTC)
Message-ID: <1470064676.13905.21.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: "Luck, Tony" <tony.luck@intel.com>, Mel Gorman
	<mgorman@techsingularity.net>
Date: Mon, 01 Aug 2016 11:17:56 -0400
In-Reply-To: <20160729162603.GA12262@intel.com>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<20160729110724.GD2799@techsingularity.net>
	<20160729162603.GA12262@intel.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-CJv0bz+bfsWQVFlkUHsE"
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory thrashing,
 was Re:  Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-CJv0bz+bfsWQVFlkUHsE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-29 at 09:26 -0700, Luck, Tony wrote:
> On Fri, Jul 29, 2016 at 12:07:24PM +0100, Mel Gorman wrote:
> > On Thu, Jul 28, 2016 at 02:55:23PM -0400, Johannes Weiner wrote:
> > > On Mon, Jul 25, 2016 at 01:11:42PM -0400, Johannes Weiner wrote:
>=20
> > > It might be useful to talk about
> > > metrics. Could we quantify application progress?
>=20
> The most reliable way to do that would be to have an actual
> user mode program that runs, accessing some configurable number
> of pages, periodically touching some file in /proc/sys/vm to
> let the kernel know that some quantum of work had been completed.

I don't think there is a need for that.

We already keep track of how much user time and how
much system time a program uses, and how much time
it is stalled on IO.

If user time is low, a program is stalled on IO a
lot of the time, and a lot of the faults are refaults
(previously accessed memory), then we are thrashing.

If the program is not stalled on IO much, or is
accessing pages it has not previously accessed
before, it is not thrashing.

We probably have the right statistics already, unless
I am overlooking something.

--=20

All Rights Reversed.
--=-CJv0bz+bfsWQVFlkUHsE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXn2gkAAoJEM553pKExN6Do0wH/jvqbtKkwe0y5Gb0kD0yoiMp
D2LpnYA1puAhve17mq92/xwidMSng7Es9QF5yD9CLH8Xp8+aoOigObAwfvT64Dro
UUTLueiFFCYxo47kR5o6cccG6A3up4//Ej/T1i4RvyssYjHrpiXBkhCxFqIQeVXq
pIo/fmGFsA13nGr3pceGfY41Fmt9BR0c/pyjYDlPYbvGnSZvog0PdZ8V1UjP8jbZ
MQVazeC2G0un4HTIdeCT2BIhCyMlvcyrKx99Kzvi0Zvz62SxQ9iYA2g4fc84JXyp
wacZ6AwvQ7mDuAQgaTmSrj7Mu2aGQn6+R8CbWHiFreXlxt64HIi2Nif6o95+ngg=
=pN+f
-----END PGP SIGNATURE-----

--=-CJv0bz+bfsWQVFlkUHsE--
