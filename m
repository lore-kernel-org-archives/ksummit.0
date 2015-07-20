Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 75215408
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 10:30:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 14A41E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 10:30:32 +0000 (UTC)
Message-ID: <1437388227.8968.34.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>
Date: Mon, 20 Jul 2015 11:30:27 +0100
In-Reply-To: <1437386699.22996.10.camel@infradead.org>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-wPUqkEOPqkfIDfHx0r5V"
Mime-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-wPUqkEOPqkfIDfHx0r5V
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2015-07-20 at 11:04 +0100, David Woodhouse wrote:
> On Mon, 2015-07-20 at 10:23 +0100, James Bottomley wrote:
> > On Mon, 2015-07-20 at 01:44 -0700, Josh Triplett wrote:
> > > On Mon, Jul 20, 2015 at 08:08:25AM +0100, James Bottomley wrote:
> > > > the mechanical one file at a time fixing
> > > > X.  I think we need someone to be the gatekeeper and review and app=
ly
> > > > the script in one go.
> > >=20
> > > I often find myself writing this kind of tree-wide fix, and I find it
> > > frustrating that it can't get merged as a unit; that would avoid the
> > > inevitable pile of merge conflicts, as well.  For anything that can b=
e
> > > reliably applied as a script, I'd love to see it actually run as a
> > > script and the result committed.
> >=20
> > Can you propose a mechanism?  We already have the trivial tree ...
> > should we have the script tree, and would you volunteer to maintain it?
> > Probably we'd run the script just after the merge window closes, so it
> > would likely be a late merging tree.
>=20
> We have done that a few times, with Linus actually running the script
> for himself just after the last pull for -rc1.
>=20
> I think last time he may have said "never again", but perhaps that was
> the nature of the changes (the include/uapi moves iirc) rather than the
> act of running a script per se.
>=20
> I'm not sure we need a way to handle such scripted changes in bulk.
> They are relatively infrequent, aren't they?
>=20
> The problem is that a lot of these really do need to be checked by a
> real human after the scripted change (even Coccinelle-type changes) is
> made. And thus we can't easily just let a script run free.

Agree ... that's why we need a responsible maintainer, and I believe it
would be an even more onerous task than running the trivial tree.

James


--=-wPUqkEOPqkfIDfHx0r5V
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEvow
ggY0MIIEHKADAgECAgEeMA0GCSqGSIb3DQEBBQUAMH0xCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1T
dGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5n
MSkwJwYDVQQDEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0wNzEwMjQyMTAx
NTVaFw0xNzEwMjQyMTAxNTVaMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRk
LjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMv
U3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHCYPMzi3YGrEppC4Tq5a+ijKDjKaIQZZVR63UbxIP6uq/
I0fhCu+cQhoUfE6ERKKnu8zPf1Jwuk0tsvVCk6U9b+0UjM0dLep3ZdE1gblK/1FwYT5Pipsu2yOM
luLqwvsuz9/9f1+1PKHG/FaR/wpbfuIqu54qzHDYeqiUfsYzoVflR80DAC7hmJ+SmZnNTWyUGHJb
BpA8Q89lGxahNvuryGaC/o2/ceD2uYDX9U8Eg5DpIpGQdcbQeGarV04WgAUjjXX5r/2dabmtxWMZ
whZna//jdiSyrrSMTGKkDiXm6/3/4ebfeZuCYKzN2P8O2F/Xe2AC/Y7zeEsnR7FOp+uXAgMBAAGj
ggGtMIIBqTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUU3Ltkpzg
2ssBXHx+ljVO8tS4UYIwHwYDVR0jBBgwFoAUTgvvGqRAW6UXaYcwyjRoQ9BBrvIwZgYIKwYBBQUH
AQEEWjBYMCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5zdGFydHNzbC5jb20vY2EwLQYIKwYBBQUH
MAKGIWh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNydDBbBgNVHR8EVDBSMCegJaAjhiFo
dHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS9zZnNjYS5jcmwwJ6AloCOGIWh0dHA6Ly9jcmwuc3RhcnRz
c2wuY29tL3Nmc2NhLmNybDCBgAYDVR0gBHkwdzB1BgsrBgEEAYG1NwECATBmMC4GCCsGAQUFBwIB
FiJodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS9wb2xpY3kucGRmMDQGCCsGAQUFBwIBFihodHRwOi8v
d3d3LnN0YXJ0c3NsLmNvbS9pbnRlcm1lZGlhdGUucGRmMA0GCSqGSIb3DQEBBQUAA4ICAQAKgwh9
eKssBly4Y4xerhy5I3dNoXHYfYa8PlVLL/qtXnkFgdtY1o95CfegFJTwqBBmf8pyTUnFsukDFUI2
2zF5bVHzuJ+GxhnSqN2sD1qetbYwBYK2iyYA5Pg7Er1A+hKMIzEzcduRkIMmCeUTyMyikfbUFvIB
ivtvkR8ZFAk22BZy+pJfAoedO61HTz4qSfQoCRcLN5A0t4DkuVhTMXIzuQ8CnykhExD6x4e6ebIb
rjZLb7L+ocR0y4YjCl/Pd4MXU91y0vTipgr/O75CDUHDRHCCKBVmz/Rzkc/b970MEeHt5LC3NiWT
gBSvrLEuVzBKM586YoRD9Dy3OHQgWI270g+5MYA8GfgI/EPT5G7xPbCDz+zjdH89PeR3U4So4lSX
ur6H6vp+m9TQXPF3a0LwZrp8MQ+Z77U1uL7TelWO5lApsbAonrqASfTpaprFVkL4nyGH+NHST2ZJ
PWIBk81i6Vw0ny0qZW2Niy/QvVNKbb43A43ny076khXO7cNbBIRdJ/6qQNq9Bqb5C0Q5nEsFcj75
oxQRqlKf6TcvGbjxkJh8BYtv9ePsXklAxtm8J7GCUBthHSQgepbkOexhJ0wP8imUkyiPHQ0GvEnd
83129fZjoEhdGwXV27ioRKbj/cIq7JRXun0NbeY+UdMYu9jGfIpDLtUUGSgsg2zMGs5R4jCCBl0w
ggVFoAMCAQICAw1qzTANBgkqhkiG9w0BAQUFADCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0
YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcx
ODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENB
MB4XDTE1MDMyMTA2MzIyMVoXDTE2MDMyMTE2MjE0N1owZjEuMCwGA1UEAwwlSmFtZXMuQm90dG9t
bGV5QEhhbnNlblBhcnRuZXJzaGlwLmNvbTE0MDIGCSqGSIb3DQEJARYlSmFtZXMuQm90dG9tbGV5
QEhhbnNlblBhcnRuZXJzaGlwLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKgy
u7x+ZiMyg3zICQoaB8dy1/h+EdoGbFbn27SR/VDHQSqFhXYgt1falPCqI+45s3ZVLGQAUuMWiP19
pLLrl6vZxhmoGVoAKKJtpEsLa4PMYKrz6l7Vk6iklyi8ZR29EvgXdydeSHaF9/0tBbEbuK3DKgcr
sFaVBHj9LoIt5ZRn3AKAqK3DuZdSTvzSPZAkZRuHRKkhlZlWZ3Bh4IV/323YCo0QtS7LheC63Iit
7D5YlsWij8M8FhFKf5z8SwvryY8TjtbDDkppgQkewZaVf3Eg9TDYEBIA5Rc4iNjjLoPKSlw3Yizq
RbuKcaX+LwXB4ldYD18Db+xUj4Tp+UN/CBECAwEAAaOCAuswggLnMAkGA1UdEwQCMAAwCwYDVR0P
BAQDAgSwMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUi4Y59d09Quzu
+0/NVz4+wralXOAwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwMAYDVR0RBCkwJ4El
SmFtZXMuQm90dG9tbGV5QEhhbnNlblBhcnRuZXJzaGlwLmNvbTCCAUwGA1UdIASCAUMwggE/MIIB
OwYLKwYBBAGBtTcBAgMwggEqMC4GCCsGAQUFBwIBFiJodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS9w
b2xpY3kucGRmMIH3BggrBgEFBQcCAjCB6jAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhv
cml0eTADAgEBGoG+VGhpcyBjZXJ0aWZpY2F0ZSB3YXMgaXNzdWVkIGFjY29yZGluZyB0byB0aGUg
Q2xhc3MgMSBWYWxpZGF0aW9uIHJlcXVpcmVtZW50cyBvZiB0aGUgU3RhcnRDb20gQ0EgcG9saWN5
LCByZWxpYW5jZSBvbmx5IGZvciB0aGUgaW50ZW5kZWQgcHVycG9zZSBpbiBjb21wbGlhbmNlIG9m
IHRoZSByZWx5aW5nIHBhcnR5IG9ibGlnYXRpb25zLjA2BgNVHR8ELzAtMCugKaAnhiVodHRwOi8v
Y3JsLnN0YXJ0c3NsLmNvbS9jcnR1MS1jcmwuY3JsMIGOBggrBgEFBQcBAQSBgTB/MDkGCCsGAQUF
BzABhi1odHRwOi8vb2NzcC5zdGFydHNzbC5jb20vc3ViL2NsYXNzMS9jbGllbnQvY2EwQgYIKwYB
BQUHMAKGNmh0dHA6Ly9haWEuc3RhcnRzc2wuY29tL2NlcnRzL3N1Yi5jbGFzczEuY2xpZW50LmNh
LmNydDAjBgNVHRIEHDAahhhodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS8wDQYJKoZIhvcNAQEFBQAD
ggEBAHJmVHEc33FRRzkHReScwIu/t2Ngo9QcAMHZ9WCf6y0p/GevKbFAy+eF+kRlNLxgh7paVkr2
0EXzRJZWN7ah5Ox1ngAZYhJOBi2vqvg5JpxWAxHO6h59VImK1hYvHy4z9+wQSrLlS6WbdCMv6TMH
tRSkuMJ/46nJfHKrhHBJtbFCgY3dpSZ30schYVJwk6ctuB5t2ULxwg2g8Jhhx/bGtuxK0CWDfZ+i
pEmynbu0b7rn37qVSwY42U9M6BvFlGlLkFAmBJFKsP8zVDVLfC2M81kbMN9hn0ylAstw7C/akEVF
ZNo+PNGUtGs6K+wFxa5VRteW2/Wz2mn9vpLC8iORnFswggZdMIIFRaADAgECAgMNas0wDQYJKoZI
hvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQL
EyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBD
bGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0xNTAzMjEwNjMyMjFaFw0x
NjAzMjExNjIxNDdaMGYxLjAsBgNVBAMMJUphbWVzLkJvdHRvbWxleUBIYW5zZW5QYXJ0bmVyc2hp
cC5jb20xNDAyBgkqhkiG9w0BCQEWJUphbWVzLkJvdHRvbWxleUBIYW5zZW5QYXJ0bmVyc2hpcC5j
b20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCoMru8fmYjMoN8yAkKGgfHctf4fhHa
BmxW59u0kf1Qx0EqhYV2ILdX2pTwqiPuObN2VSxkAFLjFoj9faSy65er2cYZqBlaACiibaRLC2uD
zGCq8+pe1ZOopJcovGUdvRL4F3cnXkh2hff9LQWxG7itwyoHK7BWlQR4/S6CLeWUZ9wCgKitw7mX
Uk780j2QJGUbh0SpIZWZVmdwYeCFf99t2AqNELUuy4XgutyIrew+WJbFoo/DPBYRSn+c/EsL68mP
E47Www5KaYEJHsGWlX9xIPUw2BASAOUXOIjY4y6DykpcN2Is6kW7inGl/i8FweJXWA9fA2/sVI+E
6flDfwgRAgMBAAGjggLrMIIC5zAJBgNVHRMEAjAAMAsGA1UdDwQEAwIEsDAdBgNVHSUEFjAUBggr
BgEFBQcDAgYIKwYBBQUHAwQwHQYDVR0OBBYEFIuGOfXdPULs7vtPzVc+PsK2pVzgMB8GA1UdIwQY
MBaAFFNy7ZKc4NrLAVx8fpY1TvLUuFGCMDAGA1UdEQQpMCeBJUphbWVzLkJvdHRvbWxleUBIYW5z
ZW5QYXJ0bmVyc2hpcC5jb20wggFMBgNVHSAEggFDMIIBPzCCATsGCysGAQQBgbU3AQIDMIIBKjAu
BggrBgEFBQcCARYiaHR0cDovL3d3dy5zdGFydHNzbC5jb20vcG9saWN5LnBkZjCB9wYIKwYBBQUH
AgIwgeowJxYgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwAwIBARqBvlRoaXMgY2Vy
dGlmaWNhdGUgd2FzIGlzc3VlZCBhY2NvcmRpbmcgdG8gdGhlIENsYXNzIDEgVmFsaWRhdGlvbiBy
ZXF1aXJlbWVudHMgb2YgdGhlIFN0YXJ0Q29tIENBIHBvbGljeSwgcmVsaWFuY2Ugb25seSBmb3Ig
dGhlIGludGVuZGVkIHB1cnBvc2UgaW4gY29tcGxpYW5jZSBvZiB0aGUgcmVseWluZyBwYXJ0eSBv
YmxpZ2F0aW9ucy4wNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5zdGFydHNzbC5jb20vY3J0
dTEtY3JsLmNybDCBjgYIKwYBBQUHAQEEgYEwfzA5BggrBgEFBQcwAYYtaHR0cDovL29jc3Auc3Rh
cnRzc2wuY29tL3N1Yi9jbGFzczEvY2xpZW50L2NhMEIGCCsGAQUFBzAChjZodHRwOi8vYWlhLnN0
YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3MxLmNsaWVudC5jYS5jcnQwIwYDVR0SBBwwGoYYaHR0
cDovL3d3dy5zdGFydHNzbC5jb20vMA0GCSqGSIb3DQEBBQUAA4IBAQByZlRxHN9xUUc5B0XknMCL
v7djYKPUHADB2fVgn+stKfxnrymxQMvnhfpEZTS8YIe6WlZK9tBF80SWVje2oeTsdZ4AGWISTgYt
r6r4OSacVgMRzuoefVSJitYWLx8uM/fsEEqy5Uulm3QjL+kzB7UUpLjCf+OpyXxyq4RwSbWxQoGN
3aUmd9LHIWFScJOnLbgebdlC8cINoPCYYcf2xrbsStAlg32foqRJsp27tG+659+6lUsGONlPTOgb
xZRpS5BQJgSRSrD/M1Q1S3wtjPNZGzDfYZ9MpQLLcOwv2pBFRWTaPjzRlLRrOivsBcWuVUbXltv1
s9pp/b6SwvIjkZxbMYIDfzCCA3sCAQEwgZQwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFy
dENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgw
NgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQQID
DWrNMA0GCWCGSAFlAwQCAQUAoIIBuzAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3
DQEJBTEPFw0xNTA3MjAxMDMwMjdaMC8GCSqGSIb3DQEJBDEiBCCkYJlKGf4pT2dLjehETYpKCZTW
ZiNf9gKdJG9SBomdTjCBpQYJKwYBBAGCNxAEMYGXMIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UE
ChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2ln
bmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGll
bnQgQ0ECAw1qzTCBpwYLKoZIhvcNAQkQAgsxgZeggZQwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQK
Ew1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVu
dCBDQQIDDWrNMA0GCSqGSIb3DQEBAQUABIIBADHQlRleKtyZTDNVoxZf5imhD65zGbx//wah1May
UXsjhjfQIbakWAb/YYzStUlHQqesqu0K+asH8fMcI6OWL8vb+GuhNVR9vlxGeSAPKzV2zHJXitvW
oXV+m9kfbA64X00eL3De6CKzTzOK7KABF7dtQgOd0FGQiOl8D96v89qQ+97NHVShkKzhJHWld9DU
2Hu0n+WfGcoD06pkoXZcdY8MXDpbZpV1X4On04YqLo9sqiIgWpAHAWfC4HPXeoszSsIP5kq6wrSB
kFs5K7AKEZgJzvWRFZovbWzwAQBqd02wsrs5FYzFkb0anRSVuJpaL2o0X86r5tyQJnDFP3wdui0A
AAAAAAA=


--=-wPUqkEOPqkfIDfHx0r5V--
