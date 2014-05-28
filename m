Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0B0D09C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 05:37:58 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 756F31F899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 05:37:57 +0000 (UTC)
Date: Wed, 28 May 2014 07:37:49 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: =?utf-8?B?THVrw6HFoQ==?= Czerner <lczerner@redhat.com>
Message-ID: <20140528053749.GA2649@katana>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > The thing I'd like to see way more in the Linux ecosystem:
> >=20
> > Paid reviewers/maintainers (selected people, no hiring offers). The
> > number of developers increases faster than the number of quality
> > keepers. So, the latter should be given the chance to focus on it, if
> > they want to.
>=20
> That does not make much sense to me. In order to review the code you
> need to understand it and if you already understand the code, you
> can write it as well.

Huh, have you ever maintained something? I couldn't write most of the
drivers I get for I2C, because I simply don't have access to the
hardware. Also, I it is one thing to get the driver working (dealing
with HW bugs and documentation flaws) and another to get the driver
proper (use proper kernal interfaces, coding style...).

> I do not think that having dedicated reviewers is realistic in the
> long run.

Then, think more of dedicated maintainers: I don't know one maintainer
who is not interested in hacking as well. Which is needed, of course.
There are reviews which make flaws in the subsystem core obvious.
Usually, the original patch comitter is only interested in this reviewed
patch and does not want to deal with the core. So, this kind of work is
up to the maintainer. If maintainers are backed off, more of this work
could be done IMO.

> However encouraging reviewers by treating reviewed-by tag with equal
> "respect" as signed-off-by seems like the better way.

In general, yes. As I said before, "Reviewed-by" tags need to be trusted
what also takes some time and effort in the beginning.


--2fHTh5uZTiUOsy+g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJThXYsAAoJEBQN5MwUoCm2WNoP+wTMwxQXixSL4EszQ76w76h8
Vc5exRb/DlUk5mRU3RSMCmh5IVuoUrsc4WDKaclRDWRQSDMImE9Yf/ZUQZMizXsW
IUoQ/z88Tn5XJqjvMVbR0rx/3fj4ZZCTd/9MzYSkiqjt6Y0VNobUzNVQYjzRvzft
V95tqhjD3LbJpXNAAGXBEWW9cfeunvdwECE/aqHJMOM6yALOWD44e3x8I8qMQZfI
19tn2yoFr2BrcC+9qWDR6ozTubYmDlc1ibW21+Ki9MtGPPTcSWg5RRKHhon26mkc
RMyYHy/X7c3F6U15kqTRAqWXS6HSZqfIuK8QmzYy1GmBj3HSMnoPK6sNqXClKlRM
Vncl+W6r9fzOztPGQSb3GOiNqelMBzyj3+CG/QgKkc0aFxPWEdhp+q7SAskRemxl
BQe7nccNrpAfrS6Z2L0jNlf5+DqIb5LhAr45hr5xpqt2X4AjA8nr79k/k7/vb2Xs
urNsYlDjLMZNApwl9unx8GtA5zIYqyHyj7MQ7NdPeeGb68fU4L6r6luer5NELZ6o
6pchAiWHrZEU8j3cNxAsd5beYw9cp6nXowPKTloeR6/ekDdaNkOhRwrH0FCRWHMA
9LB086wg57N3W2sUPBZUUx3Ew4mV1MekrOMIn1s+MmkpjqYvYZyhOc5t1cE1GdH4
z6ecwATxV6PPYlmzdg7Q
=yzTe
-----END PGP SIGNATURE-----

--2fHTh5uZTiUOsy+g--
