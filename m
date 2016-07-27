Return-Path: <BATV+8d9f9e855fa7e103eb21+4721+infradead.org+dwmw2@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36335951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:33:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3E1A4DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:33:48 +0000 (UTC)
Message-ID: <1469626423.120686.408.camel@infradead.org>
From: David Woodhouse <dwmw2@infradead.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Julia Lawall
	<julia.lawall@lip6.fr>
Date: Wed, 27 Jul 2016 14:33:43 +0100
In-Reply-To: <1469625916.27356.18.camel@HansenPartnership.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
	<alpine.DEB.2.10.1607271439250.3117@hadrien>
	<1469625916.27356.18.camel@HansenPartnership.com>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-sTsoo2s/HxLX/ddvwQWu"
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-sTsoo2s/HxLX/ddvwQWu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-07-27 at 09:25 -0400, James Bottomley wrote:
> On Wed, 2016-07-27 at 14:40 +0200, Julia Lawall wrote:
> >=20
> > On Tue, 26 Jul 2016, David Woodhouse wrote:
> >=20
> > > On Fri, 2016-07-22 at 15:57 +0200, Hannes Reinecke wrote:
> > > >=20
> > > > > I guess that almost all functions return only a few possible
> > > > > error codes?
> > > >=20
> > > > Precisely. If we had a way of specifying "the return value is an=
=20
> > > > errno with the possible values '0', '-EIO', and '-EINVAL'" that=20
> > > > would be _so_ cool.
> > >=20
> > > And perpetually out of date. Because functions call through to=20
> > > *other* functions which might return an errno outside the 'known'
> > > set.
> >=20
> > If you have a script to calculate it, it doesn't have to be=20
> > perpetually out of date.=C2=A0 The problem is just the time to collect =
the=20
> > information for the whole kernel.=C2=A0 It could be a good intern proje=
ct.
>=20
> It's a lot of pain, for what gain?=C2=A0 What, practically would we get a=
s a
> benefit if we did this?=C2=A0 Every time I see proposals about scripting
> checks in the kernel, I'm reminded of our section mismatch debacle.=20
> =C2=A0Life is so much easier without every kernel release generating 100s=
 of
> patches trying to correct section mismatches which didn't matter in the
> first place ...

To find functions where the -errno returns might be ambiguous with real
valid return values, might be beneficial. If it doesn't have too many
false positives.

To tell *which* specific errnos might be returned by a given
function... I can't see any benefit in that ever.

--=20
dwmw2
--=-sTsoo2s/HxLX/ddvwQWu
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEeAw
ggXiMIIDyqADAgECAhBrp4p9CteI1lEK+Vnk57ThMA0GCSqGSIb3DQEBCwUAMH0xCzAJBgNVBAYT
AklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0
aWZpY2F0ZSBTaWduaW5nMSkwJwYDVQQDEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0
eTAeFw0xNTEyMTYwMTAwMDVaFw0zMDEyMTYwMTAwMDVaMHUxCzAJBgNVBAYTAklMMRYwFAYDVQQK
Ew1TdGFydENvbSBMdGQuMSkwJwYDVQQLEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0
eTEjMCEGA1UEAxMaU3RhcnRDb20gQ2xhc3MgMSBDbGllbnQgQ0EwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC9fdr3w6J9g/Zbgv3bW1+uHht1wLUZr5gkrLtXedg17AkefMyUGwrQdvwO
bhajcVmnKVxhrUwkZPXRAwZZosRHfEIi5FH7x6SV/8Sp5lZEuiMnvMFG2MzLA84J6Ws5T4NfXZ0q
n4TPgnr3X2vPVS51M7Ua9nIJgn8jvTra4eyyQzxvuA/GZwKg7VQfDCmCS+kICslYYWgXOMt2xlsS
slxLce0CGWRsT8EpMyt1iDflSjXZIsE7m1uTyHaKZspMLyIyz6mySu8j8BWWHpChNNeTrFuhVfrO
AyDPFJVUvKZCLKBhibTLloyy+LatoWELrjdI4a8StZY8+dIR9t4APXGzAgMBAAGjggFkMIIBYDAO
BgNVHQ8BAf8EBAMCAQYwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQI
MAYBAf8CAQAwMgYDVR0fBCswKTAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5jb20vc2ZzY2Eu
Y3JsMGYGCCsGAQUFBwEBBFowWDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3Auc3RhcnRzc2wuY29t
MDAGCCsGAQUFBzAChiRodHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9jYS5jcnQwHQYDVR0O
BBYEFCSBbDlhvkkPj7cbRivJKLUnSG1oMB8GA1UdIwQYMBaAFE4L7xqkQFulF2mHMMo0aEPQQa7y
MD8GA1UdIAQ4MDYwNAYEVR0gADAsMCoGCCsGAQUFBwIBFh5odHRwOi8vd3d3LnN0YXJ0c3NsLmNv
bS9wb2xpY3kwDQYJKoZIhvcNAQELBQADggIBAIvj94fsAYuErQ8BAluc4SMnIwS9NPBwAm5SH9uh
2NCXTq7im61g7F1LIiNI/+wq37fUuaMbz4g7VarKQTgf8ubs0p7NZWcIe7Bvem2AWaXBsxsaRTYw
5kG3DN8pd1hSEUuFoTa7DmNeFe8tiK1BrL3rbA/m48jp4AiFXgvxprJrW7izsyetOrRHPbkW4Y07
v29MdhaPv3u1JELyszXqOzjIYo4sWlC8iDQXwgSW/ntvWy2n4LuiaozlCfXl149tKeqvwlvrla2Y
klue/quWp9j9ou4T/OY0CXMuY+B8wNK0ohd2D4ShgFlMSjzAFRoHGKF81snTr2d1A7Ew02oF6UQy
CkC2aNNsK5cWOojBar5c7HplX9aHYUCZouxIeU28SONJAxnATgR4cJ2jrpmYSz/kliUJ46S6UpVD
o/ebn9c6PaM/XtDYCCaM/7XX6wc3s++sbQ7CtCn1Ax7df6ufQbwyO0V+oFa9H0KAsjHMzcwk3EV2
B2NLatidKE/m7G+rB9m+FlVgIiSp0mGlg43QO9Kh1+JqvTCIzv2bJJkmPMLQJNuKKwHNL8F4GGp6
jbAV+WL+LDeGfVcq8DHS3LrD+xyYEXQBiqZEdiPVOMxLDSUCXsDO0uCWpaNQ8j6y6S9p0xE/Ga0p
eVLadVHhqf9nXqKaxnr358VgfrxzUIrvOaOjMIIF+TCCBOGgAwIBAgIQaRjuleoVgt0XsPAUByve
JDANBgkqhkiG9w0BAQsFADB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEp
MCcGA1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNVBAMTGlN0YXJ0
Q29tIENsYXNzIDEgQ2xpZW50IENBMB4XDTE2MDMxMjE2MjEyNVoXDTE3MDMxMjE2MjEyNVowQjEc
MBoGA1UEAwwTZHdtdzJAaW5mcmFkZWFkLm9yZzEiMCAGCSqGSIb3DQEJARYTZHdtdzJAaW5mcmFk
ZWFkLm9yZzCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBANBDAiGnoeOIQJ/Aolutct4z
x6Yt3dOUI5d0YnydAMNOiyVLXzHuuuVjUpk/6nRxg1FN3e0i3TWe5MjSTD98760qWoAuF2g5BGU+
tN/GUsyws26ZWOt82w7xhn4dcI8EhmASUtwDTZs5ZXPQzSkuNs6uX5SY0eKPlBNHkAtMf39hNc4m
liy6WRDKApZxA1vCbiHsJQZdNEBYO35022bu8PZBe6LSAFKoncoGMHl1xNEkN6kfOJFYnLqBYeXO
2mDA8KZ4h15EnQyyHGSghN92OUTc9stAWEt9a+q6TCtyW5zNgYTaaOtE41t5x2xDAgsnNU7sVM8f
wSR3tYeW9IqTgU6eDUllb1a9FK7es3+j9UDg7OxNv9rnXIda6TdXlGWYfFltujF7FMwTofq3UG7t
w68Ugk0MMfpZadhPhjYLI/qXiEDgQi8Xr+eWSo5P0ygaLvAz8OPcWAt8RG5Y8Id9hpb5neW1HTAR
Q+k8lbpkx2wDPHZEft0ITROOupf76f9CNF4jYcyCKZNnjSsKeJv69VX1TsVaeqT1LJUEudXLa/BK
FSb7x5M1KF4z46yImJrnagI19Nk/ufWn1usBXqXh8pY8cVN/I7C+TDPBY5SqIceTq7DaHZp19JQU
IIWlyRsm2d4UoVcgIdTjX57Odap4Pjzrfp2RmC6hvkW2hQ5EreIPAgMBAAGjggG2MIIBsjAOBgNV
HQ8BAf8EBAMCBLAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMAkGA1UdEwQCMAAwHQYD
VR0OBBYEFBDmK2IjZJ7MKmBK0A7J/tKaSIdoMB8GA1UdIwQYMBaAFCSBbDlhvkkPj7cbRivJKLUn
SG1oMG8GCCsGAQUFBwEBBGMwYTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3Auc3RhcnRzc2wuY29t
MDkGCCsGAQUFBzAChi1odHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zY2EuY2xpZW50MS5j
cnQwOAYDVR0fBDEwLzAtoCugKYYnaHR0cDovL2NybC5zdGFydHNzbC5jb20vc2NhLWNsaWVudDEu
Y3JsMB4GA1UdEQQXMBWBE2R3bXcyQGluZnJhZGVhZC5vcmcwIwYDVR0SBBwwGoYYaHR0cDovL3d3
dy5zdGFydHNzbC5jb20vMEYGA1UdIAQ/MD0wOwYLKwYBBAGBtTcBAgQwLDAqBggrBgEFBQcCARYe
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vcG9saWN5MA0GCSqGSIb3DQEBCwUAA4IBAQAn5wvdgC0V
kS226sFKAbqPnmVhc9jgrbsiXUcpdtYEzv6EZonARIeRC1UlIzK7jzZFRe95W5y4/qlcPQDoAeZL
cSsbpW3AYPFFWdRgVp/eIR3iy9C5KEcAbkJES2lRUZWyRqAceW1Gur9kfvjM5H0kM6BBwJfCtoqo
WragTXfsIXGNsF0F+60mUYYsKFPZzPmyz9J0Dr0xx9Lcp4fbD6UckDWCNJt2AJAiEPt/vPiiBzU8
edaRzkYhzxd9f3pZAzhlzIf2CgTrGtKSL2X1bS/b3siREjQLhVrlGw4qxqllqER3APrDzyijLFuc
CWpS8hxjTmYcNZSibv+3Oy6uU+wqMIIF+TCCBOGgAwIBAgIQaRjuleoVgt0XsPAUByveJDANBgkq
hkiG9w0BAQsFADB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEpMCcGA1UE
CxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNVBAMTGlN0YXJ0Q29tIENs
YXNzIDEgQ2xpZW50IENBMB4XDTE2MDMxMjE2MjEyNVoXDTE3MDMxMjE2MjEyNVowQjEcMBoGA1UE
AwwTZHdtdzJAaW5mcmFkZWFkLm9yZzEiMCAGCSqGSIb3DQEJARYTZHdtdzJAaW5mcmFkZWFkLm9y
ZzCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBANBDAiGnoeOIQJ/Aolutct4zx6Yt3dOU
I5d0YnydAMNOiyVLXzHuuuVjUpk/6nRxg1FN3e0i3TWe5MjSTD98760qWoAuF2g5BGU+tN/GUsyw
s26ZWOt82w7xhn4dcI8EhmASUtwDTZs5ZXPQzSkuNs6uX5SY0eKPlBNHkAtMf39hNc4mliy6WRDK
ApZxA1vCbiHsJQZdNEBYO35022bu8PZBe6LSAFKoncoGMHl1xNEkN6kfOJFYnLqBYeXO2mDA8KZ4
h15EnQyyHGSghN92OUTc9stAWEt9a+q6TCtyW5zNgYTaaOtE41t5x2xDAgsnNU7sVM8fwSR3tYeW
9IqTgU6eDUllb1a9FK7es3+j9UDg7OxNv9rnXIda6TdXlGWYfFltujF7FMwTofq3UG7tw68Ugk0M
MfpZadhPhjYLI/qXiEDgQi8Xr+eWSo5P0ygaLvAz8OPcWAt8RG5Y8Id9hpb5neW1HTARQ+k8lbpk
x2wDPHZEft0ITROOupf76f9CNF4jYcyCKZNnjSsKeJv69VX1TsVaeqT1LJUEudXLa/BKFSb7x5M1
KF4z46yImJrnagI19Nk/ufWn1usBXqXh8pY8cVN/I7C+TDPBY5SqIceTq7DaHZp19JQUIIWlyRsm
2d4UoVcgIdTjX57Odap4Pjzrfp2RmC6hvkW2hQ5EreIPAgMBAAGjggG2MIIBsjAOBgNVHQ8BAf8E
BAMCBLAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMAkGA1UdEwQCMAAwHQYDVR0OBBYE
FBDmK2IjZJ7MKmBK0A7J/tKaSIdoMB8GA1UdIwQYMBaAFCSBbDlhvkkPj7cbRivJKLUnSG1oMG8G
CCsGAQUFBwEBBGMwYTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3Auc3RhcnRzc2wuY29tMDkGCCsG
AQUFBzAChi1odHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zY2EuY2xpZW50MS5jcnQwOAYD
VR0fBDEwLzAtoCugKYYnaHR0cDovL2NybC5zdGFydHNzbC5jb20vc2NhLWNsaWVudDEuY3JsMB4G
A1UdEQQXMBWBE2R3bXcyQGluZnJhZGVhZC5vcmcwIwYDVR0SBBwwGoYYaHR0cDovL3d3dy5zdGFy
dHNzbC5jb20vMEYGA1UdIAQ/MD0wOwYLKwYBBAGBtTcBAgQwLDAqBggrBgEFBQcCARYeaHR0cDov
L3d3dy5zdGFydHNzbC5jb20vcG9saWN5MA0GCSqGSIb3DQEBCwUAA4IBAQAn5wvdgC0VkS226sFK
AbqPnmVhc9jgrbsiXUcpdtYEzv6EZonARIeRC1UlIzK7jzZFRe95W5y4/qlcPQDoAeZLcSsbpW3A
YPFFWdRgVp/eIR3iy9C5KEcAbkJES2lRUZWyRqAceW1Gur9kfvjM5H0kM6BBwJfCtoqoWragTXfs
IXGNsF0F+60mUYYsKFPZzPmyz9J0Dr0xx9Lcp4fbD6UckDWCNJt2AJAiEPt/vPiiBzU8edaRzkYh
zxd9f3pZAzhlzIf2CgTrGtKSL2X1bS/b3siREjQLhVrlGw4qxqllqER3APrDzyijLFucCWpS8hxj
TmYcNZSibv+3Oy6uU+wqMYIEXjCCBFoCAQEwgYkwdTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0
YXJ0Q29tIEx0ZC4xKTAnBgNVBAsTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MSMw
IQYDVQQDExpTdGFydENvbSBDbGFzcyAxIENsaWVudCBDQQIQaRjuleoVgt0XsPAUByveJDANBglg
hkgBZQMEAgEFAKCCAaUwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcN
MTYwNzI3MTMzMzQzWjAvBgkqhkiG9w0BCQQxIgQgRFHO+4suyGGDsmg/tpf9BTH6opnSh3+H/afC
5+tl0BwwgZoGCSsGAQQBgjcQBDGBjDCBiTB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRD
b20gTHRkLjEpMCcGA1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNV
BAMTGlN0YXJ0Q29tIENsYXNzIDEgQ2xpZW50IENBAhBpGO6V6hWC3Rew8BQHK94kMIGcBgsqhkiG
9w0BCRACCzGBjKCBiTB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEpMCcG
A1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNVBAMTGlN0YXJ0Q29t
IENsYXNzIDEgQ2xpZW50IENBAhBpGO6V6hWC3Rew8BQHK94kMA0GCSqGSIb3DQEBAQUABIICACoh
LqcQluS37jxxw/7hWxiqDorX7P/qH5kg0v4kFTmC81Vo3dc0g+fLRW2Poh6OKiYctCzwsneaBh3/
dRq+byMc3682m+ubBlUgTIGz5PPrhrWgk5p+sEHFFZDOVhGA4UU8XHOKNAPOmIml7kxq3bIE/eSq
2VlrMQ64liW53AMk5R7HuN7z6Xw3CUv0QLX+w4oOLHT1GDpmYLxhWKuBmY9qb4CEnUv36w88rzit
rHncIthRJUxwwtVdwvqg1MgsCIig3nIHbpScbVpOdCokdtS+7+U+WERVwtWE/6AZXRi5Z5gA8x5u
ylF8S2SBXgmbpyi9M9XnHJ83v/+CviBgC0WB8RRCNGcWLnmRXCSflUKFBfvBtOrKfuT0U5jOiDat
3pThu08gEMDEPC1yd5myc3qK0gOgEqietg5ixmXH5CwhBwpnqwYrCip+kxZG42BcWKhocXvR0imi
pSfCfqD8r9KPmNGVY0fjJhILLj9eZs09j2aSXLEnnPWhwQW8dGXG2lLuI9LJ0Ah3PO1lE52KrSGI
QV/pLHaTCHV0kofPGN3XJHd8Oyv2Nq0kjFAtnXJ0Ly/E+zmREaBEuITsSEGzwqTxQMykrV18o0rq
0cKc85giseDmimhPODrz2m2Xjc26MbYWJIKo90vdlxs5tzaRgI/vtmOH2os3QCmcXQaLpH3qAAAA
AAAA


--=-sTsoo2s/HxLX/ddvwQWu--
