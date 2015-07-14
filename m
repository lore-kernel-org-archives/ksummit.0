Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47B97B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 10:46:34 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE7CDE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 10:46:33 +0000 (UTC)
Date: Tue, 14 Jul 2015 11:46:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150714104623.GQ11162@sirena.org.uk>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DtQHZAESxiuiGOEK"
Content-Disposition: inline
In-Reply-To: <20150713210226.519dedfd@gandalf.local.home>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--DtQHZAESxiuiGOEK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 13, 2015 at 09:02:26PM -0400, Steven Rostedt wrote:

> But I highly doubt that having them sit in next for two weeks would
> change that. Again, the code that the patches fix was already in next,
> and the original bug was never found there. What makes you think bugs
> in the fix patches will be any different?

Two weeks seems excessive but having them there for a -next build means
the automated stuff has a chance to kick in which is 90% of what -next
gives us in terms of quality.  The benefit does depend on how likely the
change is to be affected by system/platform/config specific issues.

Indeed depending on the bug having things forced to sit in -next for too
long can be a real problem - I've had people refusing to fix build
errors in Linus' tree for a week as they wanted things to cook in -next
which took out automated testing of Linus' tree (and anything that
merged it) for the duration.

--DtQHZAESxiuiGOEK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpOh+AAoJECTWi3JdVIfQ7LUH/33y8yjWVGKI2SvLKfUMJjEk
9bQsrQBYDZ3adRmYvCQ/jYOlJuBNJ79/fRxJCX1+C4K7xG6ATkL4Pq/RHOwZwxdk
yssiJ8F70JJ8z74hrxo599t5iRBIReiYHCqAfQe8Z797++9puxgm4leZjOdl0nkM
/KbYSYSfDYEqwC307Cq0w8eveBiwKlwLlIo+zsw6fy03xtKNk4FmsRnZyLnQogOW
mP6zDjXu5BPrhWfsvCYir9HCPAWbwCkSHJrKQjB2idJA5y9P1yKktBS2+HTllnDK
r8WtQ7Qp3Ptl1YXybOR0dQqitOsZ6Lo7O0XPF5dYmrpzONQPB1BEf5jnzP435MA=
=faXT
-----END PGP SIGNATURE-----

--DtQHZAESxiuiGOEK--
