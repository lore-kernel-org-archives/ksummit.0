Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2D0A09C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 20:37:28 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 939F320326
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 20:37:27 +0000 (UTC)
Message-ID: <1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Theodore Ts'o <tytso@mit.edu>
Date: Thu, 08 May 2014 21:37:06 +0100
In-Reply-To: <20140507020743.GA6461@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org> <53695CE3.5090005@linaro.org>
	<20140507020743.GA6461@thunk.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-O6oRGu7Yryskz9DmzkHL"
Mime-Version: 1.0
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-O6oRGu7Yryskz9DmzkHL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2014-05-06 at 22:07 -0400, Theodore Ts'o wrote:
[...]
> One of the questions to evaluate this proposal is how many syscalls
> this would take.  And if we the goal is to "avoid a hard ABI break",
> then that also means doing something like the Large File Support hack
> (i.e., open64, read64, etc.) which is application visible.  Right?
> But the problem is unless you get all applications to use these
> non-standard, non-POSIX interfaces --- or you need to get them to use
> a magic #define, ala the LFS --- and good luck getting all
> applications to do make that change,

LFS is far from universally supported by applications, 17 years after it
was standardised.  In fact, many applications recently regressed due to
a broken test for LFS in autoconf <https://bugs.debian.org/742780>.  It
doesn't seem like a good example to follow.

> or to get distributions to modify
> their build scrpits to include that --- and then it's equivalent to a
> hard ABI break, since it means time_t changes size.
[...]

However this is done, almost every library that includes time_t in its
API will change ABI.  I say 'almost' because glibc will probably use
symbol versioning or mangling to maintain binary compatibility, but most
library maintainers won't go to that trouble.

Ben.

--=20
Ben Hutchings
The obvious mathematical breakthrough [to break modern encryption] would be
development of an easy way to factor large prime numbers. - Bill Gates

--=-O6oRGu7Yryskz9DmzkHL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUAU2vq/Oe/yOyVhhEJAQomLRAAvfw1X/lfHy/SX7aTN5WZCdsIVe4a8Xg3
B0mGX/rvpfyzATjgQMLenrFLDorO+wU9AC1NidWX5UbFTcQMohgdz5waeLMoEv7c
LogFazfKYDOeu4AObeZ/9h527KnYALIZcqIvKNdstRJv54hbBItfwhvgJt54p/ze
ZkbtGr0H2Pn0f4AD7xn6m6SWVku836MVvkxFYFMBZZVAI5oooqWb3Lu5Zht3Ly7m
jYt89GD0Wi59LJbVrHQslLydTHhw4lX5761sc07arZoOpSemkaz5bohkuJ6HYit9
W8cRD21iAfIYZnH7czu9nrV/BwhJdf1j1sB/yVg4G1LzYZz/SMSO/gsFveoDu6vA
4FyquylZD9N30ByvZGcJfsQ/iQeYfhNbVWmzi7yz2JT+SNBB4JZt9ES2KNywChsK
adDMueedgrrA5ZuoytrCpPDT2RQTjIb0zNQctTq/99XZhRlIxCJqaP/GM73c6Ayk
0ua+HTqZK+6U77DdHAZ57hK0ooe41+eqa3z/PNJEHm/Cy/cZBjTA5oC8+UovNwyM
nC++xo3KLrlo3NIdibEzxRZj9nkFeA27AsaSzSB7Pme4OQ0BRDSSik7NfkBfrAZD
xOyV3STY28oNt8VoI2RXqCziG2r7Rbhq5TSpkduy8Tv+NCXjPjH3wzcbWtYSxLt6
Hha8MPVAsMI=
=KiBP
-----END PGP SIGNATURE-----

--=-O6oRGu7Yryskz9DmzkHL--
