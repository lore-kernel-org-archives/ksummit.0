Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55AFE9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:25:49 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC895236
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:25:48 +0000 (UTC)
Message-ID: <1469751945.13905.6.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: Johannes Weiner <hannes@cmpxchg.org>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 28 Jul 2016 20:25:45 -0400
In-Reply-To: <20160728185523.GA16390@cmpxchg.org>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Xgud52SBzhin9JoXZ3CV"
Mime-Version: 1.0
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


--=-Xgud52SBzhin9JoXZ3CV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-07-28 at 14:55 -0400, Johannes Weiner wrote:
> On Mon, Jul 25, 2016 at 01:11:42PM -0400, Johannes Weiner wrote:
> > Most recently I have been working on reviving swap for SSDs and
> > persistent memory devices (https://lwn.net/Articles/690079/) as
> > part
> > of a bigger anti-thrashing effort to make the VM recover swiftly
> > and
> > predictably from load spikes.
>=20
> A bit of context, in case we want to discuss this at KS:
>=20
> We frequently have machines hang and stop responding indefinitely
> after they experience memory load spikes. On closer look, we find
> most
> tasks either in page reclaim or majorfaulting parts of an executable
> or library. It's a typical thrashing pattern, where everybody
> cannibalizes everybody else. The problem is that with fast storage
> the
> cache reloads can be fast enough that there are never enough in-
> flight
> pages at a time to cause page reclaim to fail and trigger the OOM
> killer. The livelock persists until external remediation reboots the
> box or we get lucky and non-cache allocations eventually suck up the
> remaining page cache and trigger the OOM killer.
>=20
> To avoid hitting this situation, we currently have to keep a generous
> memory reserve for occasional spikes, which sucks for utilization the
> rest of the time. Swap would be useful here, but the swapout code is
> basically only triggering when memory pressure rises - which again
> doesn't happen - so I've been working on the swap code to balance
> cache reclaim vs. swap based on relative thrashing between the two.
>=20
> There is usually some cold/unused anonymous memory lying around that
> can be unloaded into swap during workload spikes, so that allows us
> to
> drive up the average memory utilization without increasing the risk
> at
> least. But if we screw up and there are not enough unused anon pages,
> we are back to thrashing - only now it involves swapping too.
>=20
> So how do we address this?
>=20
> A pathological thrashing situation is very obvious to any user, but
> it's not quite clear how to quantify it inside the kernel and have it
> trigger the OOM killer. It might be useful to talk about
> metrics. Could we quantify application progress? Could we quantify
> the
> amount of time a task or the system spends thrashing, and somehow
> express it as a percentage of overall execution time? Maybe something
> comparable to IO wait time, except tracking the time spent performing
> reclaim and waiting on IO that is refetching recently evicted pages?
>=20
> This question seems to go beyond the memory subsystem and potentially
> involve the scheduler and the block layer, so it might be a good tech
> topic for KS.

I would like to discuss this topic, as well.

This is a very fundamental issue that used to be hard
coded in the BSDs (in the 1980s & 1990s), but where
hard coding is totally inappropriate with today's memory
sizes, and variation in I/O subsystem speeds.

Solving this, even if only on the detection side, could
make a real difference in having systems survive load
spikes.

--=20

All Rights Reversed.
--=-Xgud52SBzhin9JoXZ3CV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXmqKJAAoJEM553pKExN6DF4AH/ilMFBwpePbH6c9oS5EO7QhI
IyyihgYTM7NQASDCFWXF0jf67SbNNK7dQjPnv11ybw5TMKb79VfbN93MbwMljY6U
NuIXEoPNdFixc0g8LMYwr301JdooYtQJ424xejEvwCKvY1rNrqU9S2dtCJ8dk0nb
k7IqBIJPa6WYuKxsjx1c1QT4Xp+wMhA95G3pBD2FPI1hv4dusnh/gBE2GSNk0M38
KBSSsSuVvvsLjIoKJxdY6Y1jLfwSf2PW2IJh0v1L9R6qt30R/243bUTeMCqloozA
c40mbo541JQC19aOpmCAc2VMmQcvEK1wiqF0HMNP0nw/dg1Ui/4KPBXeKFMu1SY=
=hFp8
-----END PGP SIGNATURE-----

--=-Xgud52SBzhin9JoXZ3CV--
