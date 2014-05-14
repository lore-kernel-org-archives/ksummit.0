Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D522748E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:14:46 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 615C61FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:14:46 +0000 (UTC)
Date: Wed, 14 May 2014 16:14:31 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140514151431.GD12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1904209.2bUKgQ0eOo@vostro.rjw.lan>
	<20140514115745.GZ12304@sirena.org.uk>
	<2969644.G2RFXhV3FE@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="A8vqqruzBrZVziFN"
Content-Disposition: inline
In-Reply-To: <2969644.G2RFXhV3FE@vostro.rjw.lan>
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


--A8vqqruzBrZVziFN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 14, 2014 at 02:32:07PM +0200, Rafael J. Wysocki wrote:
> On Wednesday, May 14, 2014 12:57:45 PM Mark Brown wrote:

> > Since the core device probe is deferred until everything it depends on
> > is ready it'll get pushed along the device list so that it appears after
> > everything it needs and hence is suspended first.

> Except for async suspend, that is?

Gah, I'd not actually seen that before - few of the systems I've worked
on would have changed it anyway.  Yes, that'll break things too.

--A8vqqruzBrZVziFN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTc4hUAAoJELSic+t+oim9qxwP/3Tm+L1yigPC+6O67o6E2NhY
fh7AMQV4nCZ+6txUROrAgtwP/hLC86QT8zLYKhz023GafAHvcVKA8tC0b2rzt8rD
lZSV4s1Gpi8K2LRc7lD3Pdp/7xuqB6Ci1RKlJqnvwhBK6wpeCZ92rF9sw1wlLcL8
qLoHcHeVvwK0HMGNvqTj8EQb0ycQI/Sz/QyJfgLQDUD/6TOn0EdHEq0nlNvPlUvh
jD7TSIXOlF5swHNGA5TcJOcr/mzQ+kK9zlRtDcYjcOSsU+ONHefWfvew4ThxRWOX
j5lzWtCRnmhrS9usojE3Tm6FRMfk97fbRFsFFZUbz/TmmYoo4ZeMgsQahnF2p1g5
Feuk0b8gQ4GmxJqVF8AVXFHsF2EsbdqEzTlbpIwz8Upyu3dpA8FPHvbSdPbPo/Ze
mmm9bH/WINbHVAHHhHJf69yLyA++CrjSJ9XOQ+qf2S5cxVEY6x8cUGVe85oxoQrA
ow/75i6qjIfOoqSZfWgIDt68TJD7dgAjOOYJptViWG0e5qdAObm8trojJ2Bb7osX
D9VNbd9W6xbJHZ0cRldIoi2P3ZdMIdplP+fiv0QBSugVOxd0UK2bzuPRYFqQBua/
YjHk31yIH/E0KbW64tPBGoVNO06eF53AJZH5AiTmqzPCu/pQxUcJgP/+GhfbP23M
bpIhlazx8mbRrI2QUEnV
=TFYv
-----END PGP SIGNATURE-----

--A8vqqruzBrZVziFN--
