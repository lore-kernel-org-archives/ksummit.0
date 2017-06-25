Return-Path: <leon@kernel.org>
Date: Sun, 25 Jun 2017 10:24:23 +0300
From: Leon Romanovsky <leon@kernel.org>
To: ksummit-discuss@lists.linux-foundation.org
Message-ID: <20170625072423.GR1248@mtr-leonro.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7WENQHN97/U9vH7R"
Content-Disposition: inline
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--7WENQHN97/U9vH7R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

There is a steady flow of patches which bump driver and module versions.

The differences in views add [1] an email burden, which can be easily avoided
by adding policy into CodingStyle guide.

As an example of such patches: "Succeeded" [2] vs. "Failed" [3].

I think that maintainers summit with major code "pushers" is the right venue
to get the answers on the following questions:
 * Can we come with unified policy about those patches?
 * Can we remove them? If yes, is it possible to replace MODULE_VERSION in all patches to point to kernel version?
 * Does such change fail under category "UAPI changes and we can't change" or not?

Thanks

[1] https://patchwork.kernel.org/patch/9735855/
[2] https://patchwork.ozlabs.org/patch/779864/
[3] https://patchwork.kernel.org/patch/7490321/

--7WENQHN97/U9vH7R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllPZScACgkQ5GN7iDZy
WKc7kg//ftDfTikXw0Rm0xlORI0h1rNjlTKx54b8dQROa1+Zoh9dFsYrv+NqauQz
PzYaOs6DELl4PmosZ7Lguhx4uIrhAdYnteIgY8znqAdf4k8vDh1hmqNKiUT5+B2A
R5iorPEF1coHknNsj/ZjU4LIt0vuJkxg3sYhu8Wvp4KXIGHrtZEIV+VIXE17teRN
RfmpeOUrh1Av2W+yyKESBrW4b6agq2oj+wmy3JZUCFrjv6bFyHTEixC0cIAj/pFY
QfpPOj/mE/oAHwNwCMKYaYwQRQBG80JoR0CqM3/91AWiq2G8tf4uitbKjbD4L8RT
2VL2I/JzxwoXOSSAtUvFrkqAbYka7XDOd6JNHeAbI+08yOZFluR2TkczgvbeI00P
ZHKERkNey1NaXzgp8B+ygzH7Lh5wnFT/feEMOwAffGX+k73BVJFFqxeUy09rMAaN
nqRTU1op+MSehlzELJUkCNAIp3FigjCHh2kWlNlhKPPnDPht5AJtao+e7WJkXyzh
QkmCHS3dyeSCJejGerbcr2LR9bFEt8Ydfdi42+qeGx34DowWv0CUFAarIlg9gC8i
rgYhNRytnIB4pJBlYem9X5ny1VVn+eN/aKzlT7+h57MRvCR7wxmDSXb90AeF2Naq
8f+0qm5+XyKh6dcBfwPARRwWzja8P3XYIB1tSSmzaRM93FMcPW4=
=c6OB
-----END PGP SIGNATURE-----

--7WENQHN97/U9vH7R--
