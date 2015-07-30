Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EEB6441C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 13:48:44 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 86904161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 13:48:44 +0000 (UTC)
Message-ID: <1438264121.2229.11.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>
Date: Thu, 30 Jul 2015 06:48:41 -0700
In-Reply-To: <1438243737.26511.114.camel@infradead.org>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud> <20150728213805.GA8786@kroah.com>
	<1438162660.26913.230.camel@infradead.org>
	<1438182000.2204.35.camel@HansenPartnership.com>
	<1438184150.26511.77.camel@infradead.org>
	<1438187888.2204.83.camel@HansenPartnership.com>
	<1438191159.26511.91.camel@infradead.org>
	<1438213176.2204.152.camel@HansenPartnership.com>
	<1438243737.26511.114.camel@infradead.org>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-jmEHwjLgkSnnkv2i1Mat"
Mime-Version: 1.0
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-jmEHwjLgkSnnkv2i1Mat
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2015-07-30 at 09:08 +0100, David Woodhouse wrote:
> On Wed, 2015-07-29 at 16:39 -0700, James Bottomley wrote:
> > On Wed, 2015-07-29 at 18:32 +0100, David Woodhouse wrote:
> > > ... as well as contradicting its explicit statement that its intentio=
n
> > > is to "control the distribution of derivative OR COLLECTIVE WORKS".
> >=20
> > That quote loses the last important piece; that paragraph, which I'll
> > quote in full
> >=20
> >         Thus, it is not the intent of this section to claim rights or
> >         contest your rights to work written entirely by you; rather, th=
e
> >         intent is to exercise the right to control the distribution of
> >         derivative or collective works based on the Program.
> >=20
> > says that no additional rights over pieces that were written by another
> > (in this case a firmware provider) and are not based on the Program are
> > claimed.  That rather supports the idea that the extent of the license
> > attachment is limited to derivation.
>=20
> The more conventional interpretation of that paragraph =E2=80=94 the
> interpretation which *doesn't* require us to believe that the GPL
> wasted all those words *explicitly* talking about things which are "not
> derived from the Program, and can be reasonably considered independent
> and separate works in themselves", only to contradict itself and say
> "haha just joking; *ALL* aggregation is fine" =E2=80=94 is that this is t=
he GPL
> clarifying how it operates within the constraints of copyright law.
>=20
> There is a common =E2=80=94 though bogus =E2=80=94 complaint about the 'i=
nfectious'
> nature of the GPL, which goes along the lines of "how can they require
> that I publish the source code to the bits that *I* wrote. Copyright
> law gives them no rights over *my* code".
>=20
> The paragraph you cite above is more reasonably interpreted as a
> clarification that the GPL isn't claiming any *rights* over your own
> separate works, and that it merely operates by withholding permission
> to use the *GPL'd* part in that context.
>=20
> But again, I'm not requiring that you publicly accept this point of
> view. There is plenty of scope for debate, and it's not impossible that
> a court *could* uphold your interpretation and effectively just delete
> the paragraphs of the GPL that you don't like.
>=20
> All I'm asking is that you stop making the bogus claim that yours is
> the *only* possible interpretation. It isn't even the sanest one.

OK, let us suppose for the sake of argument that this is correct and the
GPL does manage to get extended to non derived included projects.  Even
in that case, we're not causing any corporate legal jeopardy because of
the principle of estoppel.  Estoppel says we cannot accuse someone of
breaching our licence for something we also did.  So if we ship the
firmware with the kernel, anyone else also shipping firmware with the
kernel is automatically innoculated against accusations of license
breach for that action.

James


--=-jmEHwjLgkSnnkv2i1Mat
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
DQEJBTEPFw0xNTA3MzAxMzQ4NDFaMC8GCSqGSIb3DQEJBDEiBCC8OZ8Tra81fVv1E2AdEuyIRzWU
oGy1WVQCEQVP1+h4PjCBpQYJKwYBBAGCNxAEMYGXMIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UE
ChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2ln
bmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGll
bnQgQ0ECAw1qzTCBpwYLKoZIhvcNAQkQAgsxgZeggZQwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQK
Ew1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVu
dCBDQQIDDWrNMA0GCSqGSIb3DQEBAQUABIIBABmampEREG82llCPJnN5DUWSEEt+xAk/tkuiMJi4
f5dGKxxVlzT25eg3a8M8MpvFYXwk74oFznAQ2e3IP2wbsCx/WQIs7U1Fi65CWVOnocLJldWdZZQ1
+KSFzjzZeROOflmfv/pcKBvuo5kTa4A0SGxRDmfXFu1vmEsrBdZaUQ6Gsw4tLQpNF4WWICXWnKOa
5MCb8jDI7Llpg9KvJkQpxiudqw3+oK5OOj9VGOcBuFv4Lw+l0JyNNt440nn3sRJX/atH691FDGJa
3FKhbtY2qMN8CfpkARuGan2rZEEAtcBbcMIwoR6+Fry2BUw0VezpV+zJlFrV1pz0z6rPhgRgWuoA
AAAAAAA=


--=-jmEHwjLgkSnnkv2i1Mat--
