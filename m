Return-Path: <BATV+8d9f9e855fa7e103eb21+4721+infradead.org+dwmw2@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5ADE8FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 00:03:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 61C3B162
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 00:03:14 +0000 (UTC)
Message-ID: <1469577784.120686.373.camel@infradead.org>
From: David Woodhouse <dwmw2@infradead.org>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 01:03:04 +0100
In-Reply-To: <CALCETrUh9H+7a7Qoi-rbLztOSWg_Po0m6kH7GhKmqvJ+bVB6QQ@mail.gmail.com>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
	<CALCETrWKk8sLvgXwzu1RQnZRQ7f1f-+p53iJ7yasp_=zTnFDHQ@mail.gmail.com>
	<1469544015.120686.324.camel@infradead.org>
	<CALCETrUh9H+7a7Qoi-rbLztOSWg_Po0m6kH7GhKmqvJ+bVB6QQ@mail.gmail.com>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-6O8gU29RKowGcv7l9efK"
Mime-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-6O8gU29RKowGcv7l9efK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2016-07-26 at 14:00 -0700, Andy Lutomirski wrote:
>=20
> >> But doing this really nicely does tie in to the async printk
> >> discussion for a different reason.=C2=A0 I think that we should always
> >> initialize the obvious "early" consoles that can be cleanly enumerated
> >> early (e.g. EFI).=C2=A0 What we shouldn't do by default is *display*
> >> anything to them unless we crash, because the distro people want a
> >> clean boot to look pretty.=C2=A0 ISTM the condition for flushing the a=
sync
> >> printk buffers could be the same as the condition for actually writing
> >> to pre-VT consoles.
> >
> > Me no like.
> >
> > That makes even *less* sense for early boot than it does during later
> > runtime. Because even *more* of the 'we crash' scenarios during early
> > boot are going to be uncontrolled "oh shit" happenings, not "oh dear,
> > it looks like we're going to crash so let's helpfully dump out all the
> > console messages before we do so".
>=20
> I only meant in the cases where we're currently silent.=C2=A0 If we boot
> with "quiet" and we panic, couldn't we at least try to flush out the
> printk buffer onto the early console?=C2=A0 Currently we just sit there
> with a blank screen.=C2=A0 (I debugged a case exactly like that last week=
.)

Sure, *that* part makes some sense if we can work out the details.

One of the issues is that you can end up with out-of-order messages =E2=80=
=94
for example if you've already printed everything above KERN_CRIT as it
happened, and you then go back and re-print the *whole* logbuffer when
you realise you're going to panic. If you *haven't* actually printed
any lines yet then that's kind of OK, but are you really intending to
keep track of that and behave differently if you have?

And if you spew *everything* on panic to a limited output like the
bootx or VGA text-mode console, you might find that the KERN_DEBUG
messages obscure what actually happened, which would be visible if you
only printed KERN_NOTICE and above... so maybe the best option is just
to honour the loglevel on the command line, but to do it *early*.
Heuristics for 'dump the logbuffer when you panic' still aren't a
panacea.

--=20
David Woodhouse                            Open Source Technology Centre
David.Woodhouse@intel.com                              Intel Corporation
--=-6O8gU29RKowGcv7l9efK
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
MTYwNzI3MDAwMzA0WjAvBgkqhkiG9w0BCQQxIgQgixg2j/43jw/G5FjAE3+64U7/U+JpAt/eXMQ/
WzOTtxEwgZoGCSsGAQQBgjcQBDGBjDCBiTB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRD
b20gTHRkLjEpMCcGA1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNV
BAMTGlN0YXJ0Q29tIENsYXNzIDEgQ2xpZW50IENBAhBpGO6V6hWC3Rew8BQHK94kMIGcBgsqhkiG
9w0BCRACCzGBjKCBiTB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEpMCcG
A1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNVBAMTGlN0YXJ0Q29t
IENsYXNzIDEgQ2xpZW50IENBAhBpGO6V6hWC3Rew8BQHK94kMA0GCSqGSIb3DQEBAQUABIICAIPn
CHzZPRTvJPX2W5PArvQHREUIZQ0VQFoROXptRQ/g1e89rW3rntmRmrh4Ue5m8oE84XToFtQwaOKo
UDOqfnxTWF+kQjszI42RnixNU/p+AMdw3P1C1aUvg4vp/t9ucskE8nSH2g2qJ9nVZv7tRWoJoFMj
tS/hjpBl2GeiH4p/dsSPEt5AUXzxneGFpNUCTFDUr24LST6LmNfTc/AHyC1s7ObVCN7z58CPe36p
j3rlOGiVQXZx3YYv0oF+YJmd3h8xehQiEHZh8kh1zcIgK7K28U98m/FKyz+DCQZeZ8I7KLtcdk7W
tbwWbjtcaFPd6f9q65USsqJQYyph6GzBEwrcThQUa5o96xGBrCCCV/wKi7QOZP4tqakYQ9Lkxvz3
W4M66num7Tq7KqWVxBhynSp/6DGZqbFOs9P6Q7F4kyYlJjZ5n+ydHmg4d1bv49fzYADcJ0vUZWG1
d+pyxocht1Mx6OgeEVB4tGP6+sQte68x25vd0sP2VhaNAUrTptEbMBtWvzShgNzGVK0s0p2q3MwO
kEgSU6xlqbXSJsrYgO1jwkTqvU0Rl2YD3J3YQ+G+RGNxxPFCre5v6yZreATezVREPqROt8eFpVVn
eaUbLw4kn68ULFHXkg6BBrtve9siXah81cnjaHwkXLkkbttF3y2Y+pqvBGcQX+Tkx1IS0ANZAAAA
AAAA


--=-6O8gU29RKowGcv7l9efK--
