Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F23197FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 10:54:38 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 91EE01F895
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 10:54:38 +0000 (UTC)
Date: Sat, 24 May 2014 11:53:28 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140524105328.GO22111@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <6638836.llWl1tdgvD@vostro.rjw.lan>
	<20140522101449.GB12304@sirena.org.uk>
	<1638523.rqHsXd5Z1n@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6o5AAeie4QQ7Mfd3"
Content-Disposition: inline
In-Reply-To: <1638523.rqHsXd5Z1n@vostro.rjw.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--6o5AAeie4QQ7Mfd3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 24, 2014 at 01:15:56AM +0200, Rafael J. Wysocki wrote:
> On Thursday, May 22, 2014 11:14:49 AM Mark Brown wrote:

> > > There are more weird cases still.  For example, we have the _DEP object in
> > > ACPI that basically says "this device depends on that one" and there may be
> > > no other relationship between the two whatsoever.  How are we supposed to
> > > implement this within the existing frameworks?

> > That sounds like something that should be baked into however ACPI is
> > hooked in already?

> No, it is not.  It is a relatively new addition to ACPI and we don't support
> it today.  That's because it hasn't been present in the ACPI tables of any
> production systems until recently.

> However, today we have systems with it shipping and we need to add support
> for it.

Sorry, I wasn't clear - what I meant was that it should be something
that can be handled based on information the ACPI implementation already
has, I had been under the impression it got notification of all the
basic PM transitions already?

--6o5AAeie4QQ7Mfd3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTgHogAAoJELSic+t+oim9mPsP/jZIkA3I87cbuGKj3hZfEelG
so4Y6SKa4GPTa8rG8AlobTHpc6FgzLf9qumN77pCkE5aFUPE81yRfUhi1PA5Z4E7
+OYiuxxFd0lXpcEE94hXu4NpclaDreqbCDHDNRpQBMGJ91Fs4Oaz7kOnuIhxSp5M
nish2rYJ4aA1Em35kSJktm8jNeXvsJmYE6l9SqBpdT8xCnPMWH8JLlNyaw0qwfZu
6ZLV9koIQEMjJgV2vcFNzSCYdeKJigZxdCzun0oouFmFHqdcsA5gkvp4y4qa4cDf
9jA24E0cii5j9s9XnZ+yVFh4wKEE6lGNxPaRFdxpuZeHJ/SjGyqaSu7nbdHL8456
OARhbZ1jDhsMxWgfZsEbkcOSwuTkzkqk0l0t+qLC1W8UEl3LYTtRAW+J3+hqGfs1
WwxwemHJwXbRCGU/tWHkVpmeNVd7xnZs9MzCOe1c4raVY9a3v0lPd/PiPNWwxnnb
rxep105yKQcFpaZDib04iBswI6X5AFH89bJNzvp+r+R+5JRZr2SITuEA8ONoSEhy
01ARHHaa5ZG22RRZLShOGxmJljbjMFVcm/7Ol0z7JfTQaAPqceYS9yK6rgauwWsE
b57otxW49p+sA/igzIItFGgFDcaIGCgBb2cq/fZ4y8oBq8mkpruX5kNoLs+tbcoA
DdE7s5uN3mTblQw2mL9I
=Xmze
-----END PGP SIGNATURE-----

--6o5AAeie4QQ7Mfd3--
