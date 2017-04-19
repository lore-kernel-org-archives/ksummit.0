Return-Path: <dledford@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0CE7098C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 15:37:28 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6811E18A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 15:37:27 +0000 (UTC)
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Takashi Iwai <tiwai@suse.de>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
From: Doug Ledford <dledford@redhat.com>
Message-ID: <d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
Date: Wed, 19 Apr 2017 11:37:04 -0400
MIME-Version: 1.0
In-Reply-To: <CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="UKthVVbWjSwoc19LlkOGLl0DT9ia0NSxk"
Cc: Ingo Molnar <mingo@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
--UKthVVbWjSwoc19LlkOGLl0DT9ia0NSxk
Content-Type: multipart/mixed; boundary="UMMlPjQ023CQ3bgpaUDaEpPWE1F79CjMA";
 protected-headers="v1"
From: Doug Ledford <dledford@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Takashi Iwai <tiwai@suse.de>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 David Miller <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Airlie <airlied@linux.ie>, Ingo Molnar <mingo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Arnd Bergmann
 <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
Subject: Re: "Maintainer summit" invitation discussion
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
 <s5hd1c9wl4b.wl-tiwai@suse.de>
 <CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
In-Reply-To: <CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>

--UMMlPjQ023CQ3bgpaUDaEpPWE1F79CjMA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 4/18/2017 4:13 PM, Linus Torvalds wrote:
> On Tue, Apr 18, 2017 at 12:50 PM, Takashi Iwai <tiwai@suse.de> wrote:
>> On Tue, 18 Apr 2017 20:59:37 +0200,
>> Linus Torvalds wrote:
>>>
>>>    Some driver subsystems may be huge (eg media and sound), but I
>>> don't know if they have issues. Mauro/Takashi?
>>
>> In the sound area, majority of commits come from Mark Brown's ASoC
>> tree nowadays, and he should be included.  Mark is already in your
>> list, so we're covered pretty well by that.
>=20
> Ok. I don't know how many from that top-50 list we actually would be
> able to have.
>=20
> Not only do I think that we should try to limit it to maybe ~35 people
> (random number taken out of thin air, but feels small enough that
> people could basically just do it in a smaller room and keep things
> personal), but the list is just the 50 kernel maintainer side.
>=20
> And there's another important side to this if we can make it work: the
> *users* of the kernel. Notably I'd really like to have kernel leads
> from the main distros, ie Android, Fedora, Suse, Ubuntu.
>=20
> I think that when we talk about process pain points, we definitely
> need to have downstream involved. Greg is there with his stable
> maintainer hat on too, but he's still "ours".
>=20
> It would be really good to have whoever is in charge of the Android
> kernel there (not manager, but tech lead), and not make it a blame
> game, but really try to also talk about how we could perhaps bridge
> that gap somehow.
>=20
> I'm not sure who those people actually are, but I suspect this list
> contains people who can point to each tech lead.. I think it's Laura
> Abbott for Fedora, for example?

There really is no pain point for Fedora.  They take a very simple
approach: in rawhide, they pull latest git once you hit the -rc cycles
and build it, otherwise it's the latest released kernel; in actual
releases, they pull stable tree point releases as they are released (not
long term stable, they upgrade to a new stable tree fairly regularly).
They really don't do much in the way of having to integrate changes into
their kernel (intentionally), it's just a constant rolling update game
using newer and newer tarballs.  So, the pain is not in Fedora, it's in
RHEL.  What we do there is so totally different from Fedora and hurts so
bad as a developer...but I don't know if you really care to even talk
about that at the summit since, to be fair, it's largely a consequence
of our business model.

>> Do you plan it to be attached with some major conference, or as a
>> stand-alone one?
>=20
> Oh, I was just assuming people were aware of the kernel summit <->
> maintainer summit thing.
>=20
> So this would be the maintainer side of the traditional kernel summit.
>=20
> This year it would be October in Prague, co-located with the European
> ELC / LinuxCon / OpenSourceSummit thing.
>=20
>                   Linus
>=20


--=20
Doug Ledford <dledford@redhat.com>
    GPG Key ID: B826A3330E572FDD
    Key fingerprint =3D AE6B 1BDA 122B 23B4 265B  1274 B826 A333 0E57 2FD=
D


--UMMlPjQ023CQ3bgpaUDaEpPWE1F79CjMA--

--UKthVVbWjSwoc19LlkOGLl0DT9ia0NSxk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIcBAEBCAAGBQJY94QmAAoJELgmozMOVy/dvOgQALwC4PEgn/a3Oxdmu5VynMlE
LqFp5pE7QiXpZizszAYszq7zr/JaMhPCR7MbVUeOXEu4c3Nsw9P7QfDvKLihYCAx
ZqZYHTFjQOQkgrXSk/EiDICkRByvvjc9PUcZDF5R4MKHk3D61uQu6UKIoCZL47bJ
Upl1Y9z30KaClLRP36komq2v6W22NVg6DFFWaFJaYlGAZsLJg41iEoOWKMDaKylr
X8iV7PbgdoudcTE++QGMmEWnjo2wSVE1JWD1b1dtXPFkrLxLrsub2+QnTMxCdWV0
bblGTE5+hw7D7aYAL5WgCjM7tkiyPu4PRt1qIp0Vs/aL3TkqL8A1YiDrIIhRqDMB
M1t9+XE0ZBPjR02LnElBYw08w2ZmLuGd+DSBsrBVFXf7DCskRQx7irGIj3VwqQJo
nNQlDP4a1ys8ogdMmx7ddXsX98R+oNUx2gA90B4tc+EvgaqhF/nruhGOAzGrU2Fu
3umIftYq8lO9o/XbkZHSavvyw7xIi1wUFPAP4xJURbZJ17m3YGT7GaYWnUqo+6fd
sW6b7I5vLFkh4dVfC+EeBKr4QVGRa+UkJs46eaVLXlMQiNjz057alq6caZ3fKMuA
xdwzyzHweqLfMmOfQHH2G54j7VcD9v85lCXBnlW2ZPiYFLT0TbLke50KiNlcdhCG
lq0W9WIiWcB4TLjUmFy/
=vT/J
-----END PGP SIGNATURE-----

--UKthVVbWjSwoc19LlkOGLl0DT9ia0NSxk--
