Return-Path: <BATV+0d76782fbc60545d8437+4715+infradead.org+dwmw2@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9AAB83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 14:02:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29CB117F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 14:02:16 +0000 (UTC)
Message-ID: <1469109732.120686.168.camel@infradead.org>
From: David Woodhouse <dwmw2@infradead.org>
To: Shuah Khan <shuahkhan@gmail.com>, Behan Webster <behanw@gmail.com>
Date: Thu, 21 Jul 2016 15:02:12 +0100
In-Reply-To: <CAKocOOM4oJS-vXU9yWxt6Bjsi152iUqdj_Mqxfq-_UQkpwWBFA@mail.gmail.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
	<20160720155319.GG6509@sirena.org.uk>
	<alpine.LNX.2.00.1607201859270.24757@cbobk.fhfr.pm>
	<1469094899.120686.101.camel@infradead.org>
	<CAKocOOM4oJS-vXU9yWxt6Bjsi152iUqdj_Mqxfq-_UQkpwWBFA@mail.gmail.com>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-ftGmlp7qd2C0U4y6jojf"
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-ftGmlp7qd2C0U4y6jojf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-07-21 at 07:41 -0600, Shuah Khan wrote:
> On Thu, Jul 21, 2016 at 3:54 AM, David Woodhouse <dwmw2@infradead.org> wr=
ote:
> > On Wed, 2016-07-20 at 19:04 +0200, Jiri Kosina wrote:
> > > On Wed, 20 Jul 2016, Mark Brown wrote:
> > >=20
> > > > > > There's a push from certain quarters to move away from GCC to L=
LVM.
> > > >=20
> > > > > This might actually be an interesting topic per se.
> > > >=20
> > > > Yes, indeed.
> > >=20
> > > Let's make this a real proposal then ... (subject changed). I am agai=
n a
> > > bit unsure about the core / tech division here.
> > >=20
> > > People who should be invited: proponents of the push from the certain
> > > quarters mentioned by Mark above, and ideally some LLVM folks as well=
.
> > >=20
> > > I've never actually used llvm to compile the kernel (which makes me r=
ather
> > > poor contributor should any such discussion happen), but I've been on=
 the
> > > "receiving side", debugging a crash that turned out to be llvm messin=
g up
> > > with IF in a way that interfers with local_irq_save(), and also suffe=
red
> > > from the followup frustration when I found out that this has been rep=
orted
> > > to llvm folks ages ago, and they haven't bothered to fix it (it's now=
 at
> > > least worked around, in a very sub-optimal way (lahf/sahf)).
> >=20
> > I got involved in building the kernel with LLVM a little while ago,
> > after accidentally implementing .code16 support in LLVM =E2=80=94 for o=
ther
> > reasons, but it allowed the arch/x86/boot/ bits to be built with LLVM.
> >=20
> > Apart from resolutely not wanting to implement variable length arrays
> > on the stack, the LLVM folks actually seem quite keen to make things
> > work. I'm interested in the problem you report above.. and note the
> > absence of a bug number. Can you provide it?
> >=20
> > You're right that it does take a while to get some things fixed, but
> > people *are* doing a fairly good job of identifying them, filing bugs,
> > and implementing workarounds until the bugs can be fixed.
> >=20
> > Building with LLVM has also helped to find some real kernel bugs. I'd
> > be keen to get this working more widely.
> >=20
>=20
> Would you be willing to share your experiences and the nature of bugs
> you were able to find using LLVM. Maybe that could be folded into this
> discussion as a real life experience.

http://llvm.linuxfoundation.org/index.php/Bugs

Probably horrifically out of date. Behan is the best person to ask for
a current status, I suspect...

--=20
David Woodhouse                            Open Source Technology Centre
David.Woodhouse@intel.com                              Intel Corporation
--=-ftGmlp7qd2C0U4y6jojf
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
MTYwNzIxMTQwMjEyWjAvBgkqhkiG9w0BCQQxIgQgGKLuN0xhcgQq6Mkbilpaz6JzN0nvIbUlzjW6
ieLRCB0wgZoGCSsGAQQBgjcQBDGBjDCBiTB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRD
b20gTHRkLjEpMCcGA1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNV
BAMTGlN0YXJ0Q29tIENsYXNzIDEgQ2xpZW50IENBAhBpGO6V6hWC3Rew8BQHK94kMIGcBgsqhkiG
9w0BCRACCzGBjKCBiTB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEpMCcG
A1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNVBAMTGlN0YXJ0Q29t
IENsYXNzIDEgQ2xpZW50IENBAhBpGO6V6hWC3Rew8BQHK94kMA0GCSqGSIb3DQEBAQUABIICAK53
8r089cA/te98Y/AOsCMlRgJAMx4G3VZpewcS3Fttp087wRg0M0W69KznqHUf9x4HSr6AVUI/Gi4B
zdAGFYyBCBYJa/V0m/K8MZm1T5c40F/NsxRNl8nZV5ky5grNk0d2RRUW9lQ2RCRQEZxdvG3Ttof0
kUPMTR+bRwFI4TfVE0+N+nJXrG5Kw24O7XRtY1gy46oeX1xBChJcXObdHKZ/R6SUnKbR4do7qcqA
AwwyKmi+ISGNF0UH0vfcdc/ObbSthm9Ha5ZlLAzwDzS1VYtG7NodpPabQVdo/k78FQmD0BSMIN4t
jo/4ABmpB0IL+HgP4qNEKrdrgkfjUiNy3KNWNXtF7n9paPWLKoGK8QLWqbwMogDurzZQlZ/dj/76
9yxc4JHiN5X099g7Otr463BLZoyp2ia3CC7PpX6HZHFGd8osKw48usd/K4vfYHr2JibrAsqc9xYu
KeVVREUIepbt6uFUcHHurI2iAv3Fn6XG845cxGzczOGkFphqyOzWmqRFqpgJVtV7erg/5BazUNew
aMsqrohTvXYCR4tcXBWroNHm5laWKOKrlYfaEbsJcw8Ey5RSW+arKSK/CK/DqJIg0Wx3YRQLP8Ry
p7ILs95no4FOj78gdw7TOF1U0vrPDDbQJVBVLfvMVy+Q63U8J0kydYWQimrTYozsLasDAcuNAAAA
AAAA


--=-ftGmlp7qd2C0U4y6jojf--
