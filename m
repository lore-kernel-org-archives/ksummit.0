Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 758D926
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 09:11:52 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA5EB1F9F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 09:11:51 +0000 (UTC)
Date: Sun, 25 May 2014 19:11:44 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20140525191144.7ff91b31@canb.auug.org.au>
In-Reply-To: <CAMuHMdXEEJnuV5tdv8kc=uaFxwTYn-Bh=T-e6n5zC4uFvRT3Ag@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525141725.54db587a@canb.auug.org.au>
	<CAMuHMdXEEJnuV5tdv8kc=uaFxwTYn-Bh=T-e6n5zC4uFvRT3Ag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/0oA7tZkZ+jMB1E.nIuv85sy";
	protocol="application/pgp-signature"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

--Sig_/0oA7tZkZ+jMB1E.nIuv85sy
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Geert,

On Sun, 25 May 2014 10:53:11 +0200 Geert Uytterhoeven <geert@linux-m68k.org=
> wrote:
>
> On Sun, May 25, 2014 at 6:17 AM, Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
> >
> > Some stats (I know you all love stats :-)):
> >
> > for next-20140523, no merge commits, origin/master..HEAD^ (exclude
> > Linus' tree and my Next files commit)
> >
> > commits: 7717
> > commits with more than one Signed-off-by: 6291
> > commits with Reviewed-by: 1369
> > commits with Tested-by: 354
> >
> > Not sure what these show ...
>=20
> Thanks for the numbers!
>=20
> How many Acked-by? Sometimes there's only a thin line between Acked-by
> and Reviewed-by.

commits with Acked-by: 1192

--=20
Cheers,
Stephen Rothwell                    sfr@canb.auug.org.au

--Sig_/0oA7tZkZ+jMB1E.nIuv85sy
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCAAGBQJTgbPVAAoJEMDTa8Ir7ZwVhXgP/3xk7Ynvf0zydDOZpkYn4D1k
pWBYz4pkoVLWuYYZvhhHOoYp6UKxXNY0+R2nIhF+WL8Nzj+Se62a1h6elfoaCczB
gPJ0kJ6wz9rA5aRSbz2BWAfOIUcPB/TXVDOH/yMwD9VmCdiPrfQCk9oMGhzJVzVq
iS62VUIXD+J5RK4ZmM53/4Sr8Lxt6XyRhDoLOZRblANxGS7umx6D3vtSEJ5S7ZBr
pyoTePb6ccb+VWNqweNRE/G8O0oyvEynGW56yOYJSoeZh5x4hZaz4K/DvcsWfBRd
1OJ7zlNF1bB0lczgVxNlN3A/ggqQjvUNAapjfCO0nfr7R4wKNJ4ilsyo85zDRnW4
77fLsiBspPH3xocTZFZ81NeQgRiiUH4uoZqWewp0zdo/0jT2IM3N0o4YkholEPxt
dQbisqCEHmCU7yBzSc+QBa/oW8tv2fDUPtGdbEIUl4LxzXIk/oNcP3PQuBZVM0uv
ZzeZi1rW+NYBXiuFL+mpdKCnzok8d0aLkaH2ca0oEtB70hO6TIPuAoCRUXRL5O14
EQiLqapmnK0LwkhKVEDZcGGOrIOAK5O5wgEdo6TPB+zN5JCzc+zYJe5nNbkXG65C
AfEOrSKHk0MhcRzJJxV9bayD4aNvl/Pzhqo2Bq0Lq6lxD9kWZ4/9uJML9/5Ol8k7
uIJ7+EEmuCZ7YoKCuo1H
=oClI
-----END PGP SIGNATURE-----

--Sig_/0oA7tZkZ+jMB1E.nIuv85sy--
