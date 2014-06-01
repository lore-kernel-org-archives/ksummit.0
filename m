Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D2B0882D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Jun 2014 04:32:02 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE8861FFF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Jun 2014 04:32:01 +0000 (UTC)
Date: Sun, 1 Jun 2014 14:31:46 +1000
From: NeilBrown <neilb@suse.de>
To: Daniel Phillips <d.phillips@partner.samsung.com>
Message-ID: <20140601143146.0385adbb@notabene.brown>
In-Reply-To: <538A5B64.10203@partner.samsung.com>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
	<53877FBD.7060003@partner.samsung.com>
	<20140529234311.GB12450@kroah.com>
	<538A5B64.10203@partner.samsung.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/qXCygZZiiM22RkXxhqZGbE6";
	protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic] Richer internal block API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/qXCygZZiiM22RkXxhqZGbE6
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sat, 31 May 2014 15:44:52 -0700 Daniel Phillips
<d.phillips@partner.samsung.com> wrote:

> On 05/29/2014 04:43 PM, Greg KH wrote:
> > ...you know how this all works, we don't have to have meetings in=20
> > order to do design decisions that are "large".
>=20
>=20
> Perhaps there is something wrong with that approach. Certainly in=20
> regards to how to bridge the gap between what we now have for logical=20
> volume support, and what we should have, or what BSD has, that approach=20
> is demonstrably a perennial failure. After all these years, we still=20
> have dm and md as separate islands, no usable snapshotting block device,=
=20
> and roughly zero interaction between filesystems and volume managers.=20

dm-raid.c is a bridge between those islands.

Does dm-thin.c not provide usable snapshots?  I admit I haven't looked in
detail.

> The larger issue would be, why is there no design process in Linux for=20
> large design issues? Maybe that is the core topic that is really missing.

What sort of "design process" do you imagine?  Something like IETF?  While =
it
certainly has had some successes I don't see that its process as conducive =
to
quality.

The design rule for Linux is simple:  show me the code.
If if passes review, it goes in.  If it doesn't you should know why and
can try again.

You can certainly start with a design proposal if you like, and you might g=
et
valuable feedback from that.  The more concrete your design, the easier it =
is
to respond to, so the quality of the responses you get will be higher.
But there is no way to escape the fact that, for a "big design" which affec=
ts
multiple subsystems, you will probably need to develop several prototypes
before you find something that works well.  Be ready to discard and try aga=
in.
Like Greg said - it is "evolutionary" and evolution isn't just "survival of
the fittest", it is also "death to the weak".

NeilBrown

--Sig_/qXCygZZiiM22RkXxhqZGbE6
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU4qssjnsnt1WYoG5AQJbRA//cPnrDplg74WYWOy3m4KXrMznbSyFTru9
xReUPPtmwX60meFqdhYHGUjERCHEu9jVWrblRx52CDis2vbB92H19f0Jp3OjdjOC
NqSR587gAX0rlceF8yvsHq3KVZ4TJ5ynPI8PM0XYWAYtVJFZ+Z48OGy2OK5y2cqD
UAbOTyg93eRe7uOvW/9llGUjoznjQkxIKDMTkFcv2wnFN9nqgS7QhSpc+rrp3Ea0
wOcrEGSYsiy4wMun5DTpCTJDlBpVtnhs6YjMU1DH8eJJUg+CAnvscfrgLZ9988ts
tRhUxakXohUswB32xsRNwKbxC6xMNR/NT13I95zZfp0BRmjZ33ZEf2N8lu6pOEnX
r8dXlQQcjjUEHhYeCw3pXy1+0ODXDeytrrLlukfNI2siB2xf2Jsy+U3JG3jkcU4O
C3Rp1GWxFHF85FXTJflBWscIpZrkVvO6qNV33rT21lqknT0egOWlWxuld8MneUW3
Y5nN1SsC5VTAr7KdwM3kk9PoYu3X+ApIW9S81lIeFIYjycPEK9OoU3rboRPJG3B0
1mFIpMw/A6SdVou9dbPR+qvhsaxEJqQox9Bg2zF9yNtIlc14kgSlRPoIBIGtg3n3
ymG+EdPGohPCG6xDjAWXf26v2q7XBNdVP9jWuets/N7WiCY7DiCrjlaGcu85leMs
mK2QynKN4FQ=
=mF0h
-----END PGP SIGNATURE-----

--Sig_/qXCygZZiiM22RkXxhqZGbE6--
