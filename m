Return-Path: <monstr@monstr.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2C76F7B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:48:30 +0000 (UTC)
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0760020117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:48:28 +0000 (UTC)
Received: by mail-ee0-f46.google.com with SMTP id t10so4219686eei.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 23:48:27 -0700 (PDT)
Message-ID: <53706EAB.7010601@monstr.eu>
Date: Mon, 12 May 2014 08:48:11 +0200
From: Michal Simek <monstr@monstr.eu>
MIME-Version: 1.0
To: Wolfram Sang <wsa@the-dreams.de>, Dave Jones <davej@redhat.com>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
In-Reply-To: <20140511111034.GA6400@katana>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="9QMwuH4nCJVPjdGGeBb6SJlW33Is8uGvJ"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
Reply-To: monstr@monstr.eu
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--9QMwuH4nCJVPjdGGeBb6SJlW33Is8uGvJ
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 05/11/2014 01:10 PM, Wolfram Sang wrote:
>=20
>> Last year I had been doing the coverity scans on an almost daily basis=

>> for 2-3 months.  Now that we're a year in, I'd like to share some
>> results, and show some of the more common trends and bug patterns that=

>> seem to pop up.
>>
>> [ spoiler: For the most part, it's all pretty positive, but we still s=
uck ]
>>
>> It would also be good to have some more discussion about other tools
>> we could be making more use of.  (Nomination: Dan Carpenter for smatch=
).
>=20
> I'm definately interested.

I am also interested in this because using these tools is just one way
how to clean the source code and it must be automated.

> In my workflow, I use sparse/smatch/coccicheck/cppcheck before applying=

> my own work, or patches to the i2c branches. (Oh, and rats and flawfind=
er,
> too, but so far, they didn't point to something worthwhile.)
>=20
> I am interested in workflows and experiences from other people, how
> usage of static analyzers could be spread (gcc inclusion sounds great),=

> how to make them more robust, etc... And by doing that, get a better
> feeling when an issue left the scope of static code checking and needs
> some proper handling.

I expect that this is already the part of aiaiai. The part of this discus=
sion
should be also kernel-doc format checking because a lot of patches
are trying to use kernel-doc format but it is just broken - even checker
is in the kernel.

Everybody is using own testing - isn't it better to just add all these
checking the part of the linux kernel that everybody can enable it
and test it? I hope that everybody is running checkpatch before patch
is sent. Why not just tell them run this in-kernel tool with all
that checking enabled before you send the patch?

Thanks,
Michal

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Microblaze cpu - http://www.monstr.eu/fdt/
Maintainer of Linux kernel - Xilinx Zynq ARM architecture
Microblaze U-BOOT custodian and responsible for u-boot arm zynq platform



--9QMwuH4nCJVPjdGGeBb6SJlW33Is8uGvJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlNwbrUACgkQykllyylKDCGqNwCeI4Xp2iwHu7+oaK4gnLYCCEvg
YkIAn0B4a7OJyVyfMha3NCJ+Z3CVp6IA
=InHY
-----END PGP SIGNATURE-----

--9QMwuH4nCJVPjdGGeBb6SJlW33Is8uGvJ--
