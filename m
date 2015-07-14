Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0627ABBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 20:45:31 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9120F174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 20:45:30 +0000 (UTC)
Date: Tue, 14 Jul 2015 21:45:19 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150714204519.GI11162@sirena.org.uk>
References: <55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
	<20150714092955.2d28984b@gandalf.local.home>
	<1436905046.2445.54.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ePxKZFqwHXdt6wcv"
Content-Disposition: inline
In-Reply-To: <1436905046.2445.54.camel@HansenPartnership.com>
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


--ePxKZFqwHXdt6wcv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 14, 2015 at 11:17:26PM +0300, James Bottomley wrote:
> On Tue, 2015-07-14 at 09:29 -0400, Steven Rostedt wrote:

> > Mark Brown mentioned the down side. Depending on what the bug is,
> > especially if it breaks Linus's build, or causes some other major
> > breakage, to wait in next means that Linus's tree (that everyone is
> > based on) will be broken for that long too. Which could stop other
> > types of testing of Linus's tree.

> If you followed process in the first place, how could you possibly break
> the build except for some corner case configuration which can wait for
> the fix?  linux-next and 0day pick up this kind of breakage fairly
> instantly.  If you wait before sending a pull, you'll see the reports in
> time to correct.

The specific case I'm thinking of had a dependency on some other changes
in -next that weren't targeted for Linus' tree and which triggered only
non-x86 architectures (but fairly obviously on some of them IIRC,
probably something like all*config).  With the other changes in -next
everything was fine, and with x86 everything was fine.  Most of the
testing on -next is on the integrated tree, though 0day probably should
have triggered. =20

That interaction with other bits of -next definitely feels like a weak
spot for me when I'm sending changes to Linus.

> > I've been trying to get time to test against -next before the merge
> > window opens, because my tests usually discover these there. But I
> > don't always have time to do so.

> Well, the more, the merrier.  If you have a suite of tests, just package
> it up and send it off to Fengguang if you don't have time to run it.

Or get them into kselftest!

--ePxKZFqwHXdt6wcv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpXTeAAoJECTWi3JdVIfQ6lwH/iFUX+Kbmt2eksmzi8ZzWxPJ
n8DmDOCm3yl9R6dR6h0OkLfBTwIbCgSCPME9NhuGmsY7sch7BAmj/RJT+2zkXB4+
3AZy9rBSSPpzOWDJdB5Qrg1oOZQD6UR74tvPXuVztE8Xmsl4XTMRlE3oPgrlLlMu
XZLFl8P/axyp+hb3gm9lEk4DGZP225SpFlr6M8cetENQ6fr/HAcpBKbdA+OUkVG+
IvNfmyMPpl68S7OTovCc/wzqRwb64EuJHad9ty65fN6VEk5TOAftSyc9CWxvrfzb
FXzXzzaeIeoUEgY6pdeGNAHR4cQFREk2vztiYhJal0a5v5kRy+zTaec0peuZ0ZU=
=jEFP
-----END PGP SIGNATURE-----

--ePxKZFqwHXdt6wcv--
