Return-Path: <dledford@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60C67BBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 16:25:09 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C19F144
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 16:25:08 +0000 (UTC)
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
From: Doug Ledford <dledford@redhat.com>
Message-ID: <1269d256-d6ec-dc9c-c1ec-551d389e9be2@redhat.com>
Date: Wed, 19 Apr 2017 12:24:51 -0400
MIME-Version: 1.0
In-Reply-To: <CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="EDPuNpWFLPOwHhlX97iSRPtkja1lLGUAx"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Dave Airlie <airlied@linux.ie>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--EDPuNpWFLPOwHhlX97iSRPtkja1lLGUAx
Content-Type: multipart/mixed; boundary="dMJRwTTVOVELwejbvrNfKVlLE8LdhdKKX";
 protected-headers="v1"
From: Doug Ledford <dledford@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Takashi Iwai <tiwai@suse.de>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 David Miller <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Airlie <airlied@linux.ie>, Ingo Molnar <mingo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Arnd Bergmann
 <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <1269d256-d6ec-dc9c-c1ec-551d389e9be2@redhat.com>
Subject: Re: "Maintainer summit" invitation discussion
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
 <s5hd1c9wl4b.wl-tiwai@suse.de>
 <CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
 <d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
 <CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
In-Reply-To: <CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>

--dMJRwTTVOVELwejbvrNfKVlLE8LdhdKKX
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 4/19/2017 12:18 PM, Linus Torvalds wrote:
> On Wed, Apr 19, 2017 at 8:37 AM, Doug Ledford <dledford@redhat.com> wro=
te:
>> On 4/18/2017 4:13 PM, Linus Torvalds wrote:
>>>
>>> I'm not sure who those people actually are, but I suspect this list
>>> contains people who can point to each tech lead.. I think it's Laura
>>> Abbott for Fedora, for example?
>>
>> There really is no pain point for Fedora.  They take a very simple
>> approach: in rawhide, they pull latest git once you hit the -rc cycles=

>> and build it, otherwise it's the latest released kernel; in actual
>> releases, they pull stable tree point releases as they are released (n=
ot
>> long term stable, they upgrade to a new stable tree fairly regularly).=

>> They really don't do much in the way of having to integrate changes in=
to
>> their kernel (intentionally), it's just a constant rolling update game=

>> using newer and newer tarballs.  So, the pain is not in Fedora, it's i=
n
>> RHEL.  What we do there is so totally different from Fedora and hurts =
so
>> bad as a developer...but I don't know if you really care to even talk
>> about that at the summit since, to be fair, it's largely a consequence=

>> of our business model.
>=20
> Yeah, I don't think we can do much about distros that intentionally
> want to stay behind and backport. Admittedly Android seems to be very
> much in that camp too, but I'd at least want to talk to them more.
> RHEL I feel knows what it's doing and isn't causing the kinds of
> issues Android is anyway.
>=20
> That said, even with Fedora I think Laura was at the KS last year, and
> did talk about what she sees as the stable kernel process. So Fedora
> may not be a "painpoint", but may well be relevant for the "meet with
> people and talk about process issues once a year".

Entirely true.  And I probably shouldn't have said there is no pain
point for Fedora, because I shouldn't have put words in her mouth
anyway.  I would *expect* there is no pain point given their model (and
I've not seen the internal email discussions we see around our RHEL
kernels), but I can't speak beyond that.


--=20
Doug Ledford <dledford@redhat.com>
    GPG Key ID: B826A3330E572FDD
    Key fingerprint =3D AE6B 1BDA 122B 23B4 265B  1274 B826 A333 0E57 2FD=
D


--dMJRwTTVOVELwejbvrNfKVlLE8LdhdKKX--

--EDPuNpWFLPOwHhlX97iSRPtkja1lLGUAx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIcBAEBCAAGBQJY949TAAoJELgmozMOVy/dBWEP/3C9jqh8OtCpUm0KUYFVrCB3
RVeM2dYZ81j/vkwwcGJ8g/T2xJRjEPoMMQX3+qnEVZhEi0qtSmT6BHiJz88rOOoK
COWMQCzhbTaVqIi1GTbH5i/3bcoNjCAAY80atyOgNYhELjOYwUIpTmvGTRWrYx1Z
wGgv/s+rDnuHCJS4vDncFAA1iNa2LGG1+IXjtW5kt7hS7yahmNbVDA90KzM7Pthi
gkHR53j/SxxUTNhv75PnENEERclN+amMzDOJzD5UgZ+vHOvMBceZ1s1CSo0CK9Au
2kUDsOEaAYz2oNpTb+FauDI9Yn74aZqvnh3Tvwlz7BLxJi4vh70Q/p+DUyr2XeZM
XqKOR5noKOtsw5SO2kIouhyoYCz2GD6FuiYo1AAXJNqBBsQaALbcJdtBsjUmx7Rh
6lUrj1Jm/T/P1LsrjCObRd+Pp9dN2bqO7XjSP6GE4EinjA6s2VM+dq19OmhbjpXm
SmDwcJG0zFLXzt0Mrkk0s54cXwsEb+L7+JKc9d0pDPvqtdinuYc1KqkfLar2xTMs
aDWg2AyMfbbhefTmM/5ch5/O4eOszfgYCvDS672XIff+DRayGp5p8lCwssa/cJo/
RHJoyvFtltSw36OOzKI9EiVWtWIDsu/yFXFRzJdLGdCLRfHBQZr2zyLl/Ij65hOn
VL9puT2GSdfc2Imf+MoK
=8Mck
-----END PGP SIGNATURE-----

--EDPuNpWFLPOwHhlX97iSRPtkja1lLGUAx--
