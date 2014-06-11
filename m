Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9BC3C7AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 21:54:05 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 033E2201E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 21:54:04 +0000 (UTC)
Date: Thu, 12 Jun 2014 07:53:55 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Bjorn Helgaas <bhelgaas@google.com>
Message-ID: <20140612075355.4b0d1f5a@canb.auug.org.au>
In-Reply-To: <CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/M2RTMsZukQuAO=6fL5lRIeJ";
	protocol="application/pgp-signature"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/M2RTMsZukQuAO=6fL5lRIeJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Bjorn,

On Wed, 11 Jun 2014 13:43:18 -0600 Bjorn Helgaas <bhelgaas@google.com> wrot=
e:
>
> all did our jobs perfectly, we would never add a change to Linux that
> broke compilation of anything.  So if there's a file that doesn't
> compile anymore, I think of that as a result of a mistake somewhere
> along the line.  We can use that mistake to deduce that nobody cares
> anymore, but it'd be a lot nicer to have a scheme that didn't depend
> on people making random mistakes.

We could start making nonrandom mistakes? ;-)

--=20
Cheers,
Stephen Rothwell                    sfr@canb.auug.org.au

--Sig_/M2RTMsZukQuAO=6fL5lRIeJ
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJTmM/5AAoJEMDTa8Ir7ZwV/BcP/0aa0gteSXgJDkOJdsjvuj48
BMSSvtlud3e8mt2ucG9hPCc2exZ2rrnLPn+7IOI0p1/fDUBy9UZaTvSENbRxKCkk
dxBbqRi+WOcouAzR4gX2VeGKsC4wja6X4SKiMTDZsK2N2OnWbkfCbs6y9ByWZVqG
urxX7NOFEknyxulWw8omlMBlsNO7jA7V3OhNUg9SFWfVolar4OXehtiqYjnGgRV4
7fiaVvGNtaX7ELxoebskx/aSw+T+S9/CHLf7KUWm2Jx4eu9j5DjJ9F/lptpWjjef
yoHxz6qxyJYbYzbyh6Jvq7QO1Gq4sr9Vvvcyz2VkEsbQosKGvnPGtz4GKl5rU9he
hlw4V830FIYbYnSnfCGATOHUzlpUBpejb+VrD+oDigkxfduuHcxzvO/gOhcyL8VQ
KxvGAfqW5syyPfelasteJb/XVJP+FE9o5zcauR4/KDcvPZ948iVAr9LFt/z0NwmR
/JxZGJNcA+rJ4NnP87LfkKBpLwM6x4ukr4twYeev+yEvEeoR5HMXuCscDJp/xcR5
2v5lCq6TCOuLmzqW4grvwnKBVVIHstt7Tguj5xX7KMTxuCiflKKiJSLkQcnCHq+o
ItuwrI7FWcRWsE6f31GaOxPvpciH1bhl9/3uvdziCiG2g1EVDQCcUcGloz3FAVbF
+j43+eEtGqpRCBU2MUMY
=UJiK
-----END PGP SIGNATURE-----

--Sig_/M2RTMsZukQuAO=6fL5lRIeJ--
