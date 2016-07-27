Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8B7794D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:06:32 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2776A192
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:06:32 +0000 (UTC)
Message-ID: <1469631987.27356.48.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>, Mark Brown
	<broonie@sirena.org.uk>,  Mimi Zohar <zohar@linux.vnet.ibm.com>,
	dhowells@redhat.com
Date: Wed, 27 Jul 2016 11:06:27 -0400
In-Reply-To: <1469544138.120686.327.camel@infradead.org>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-e6uNK3TzSlNX/Dj9xJue"
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-e6uNK3TzSlNX/Dj9xJue
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2016-07-26 at 15:42 +0100, David Woodhouse wrote:
> On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:
> > On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wrote:
> >=20
> > > Oops, "Signature management - keys, modules, firmware" was a
> > > suggestion
> > > from last year, but in my opinion still very apropos.
> >=20
> > Yup, definitely - especially with secure boot starting to firm up=20
> > on the ARM side there's a bunch more interest in it from more=20
> > embedded applications.
>=20
> Are we going to propose this again "formally" (i.e. sufficiently
> clearly that the committee take note and consider it)?

Heh, we've got lots of people wanting to participate, but no-one really
wanting to make the proposal, so I'll try.

internal kernel key management is becoming a bit of an uncontrolled
mess.  We have several sources of trusted keys: the secure boot keyring
(called the db database), the internal keys the kernel was compiled
with, keys in the TPM which are declared to the kernel (this is another
whole world of pain because adding this damaged the current TPM key
management infrastructure from userspace), IMA keys (used for file
integrity measurement), authentication and encryption keys (things like
keys used to encrypt the disk, authenticate NFS roots etc).

There are several issues

   1. Population and update policy: How should we populate the default
      keyrings and revocation lists? =C2=A0Should we have a built in list o=
f
      absolute trust that can never be added to? I think the current
      default here is OK: it's populate with the kernel built in keys and
      nothing else. =C2=A0If userspace wants to populate with, say, the sec=
ure
      boot keys, then it can do so from init. =C2=A0An issue here is the
      Microsoft signing key, which most Linux people have but which they
      wouldn't necessarily consider to be a source of absolute trust.=20
      =C2=A0However, third party driver vendors would like a way to get the=
ir
      key trusted by the kernel so they can easily supply modules (This
      isn't a binary module issue: the code is usually GPL, but the
      vendors would like to supply updates asynchronously to the distro
      release cycle). =C2=A0We can say their key should be added as part of=
 the
      rpm that installs the module, but do users really want this key
      adding to the default keyring to be trusted for non-module
      operations?
   2. Virtualization of the keyrings. =C2=A0The issue here is that you don'=
t
      necessarily want root in a container to have full access to the
      kernel keyrings. =C2=A0It looks to me like we can use a simple per
      namespace virtualization of the key permissions, but I don't think
      this should be a topic of discussion before it has been proposed and
      discussed on the containers list (which no-one has done yet, in
      spite of my requesting).
   3. Integration with existing key management infrastructures. =C2=A0The i=
ssue
      here is things like the gnome keyring and the TPM. =C2=A0The TPM is a
      particularly thorny problem: as a key store, the TPM has a very
      limited storage space, so something has effectively to swap keys in
      and out as they're used. =C2=A0This function is currently performed b=
y a
      userspace stack called the TSS. =C2=A0However, the kernel use of the =
TPM
      effectively steals the nvram resource behind the manager's back and
      can lead to resource starvation issues in the TPM and unexpected
      responses back to the user space TSS. =C2=A0If the kernel wants to us=
e
      TPM keys, it needs either to request them properly from the TSS or
      we need to pull TPM key management fully into the kernel and make
      the TSS use it.
   4. Our current key type model is slightly confusing, because we have
      about 18 different ones from specific key types: assymetric, secure,
      encrypted confused with use case key types like: cifs.spnego,
      dns_resolver and grouping types like keyring. =C2=A0We should probabl=
y
      document them all somewhere and encourage subsystems which don't use
      them (like dm crypt) to start. =C2=A0We might also consider discourag=
ing
      key type proliferation?
   5. root (uid 0) access: should root be able to modify any keyring?

Probably a ton more issues I forgot, but others can add them.  A
precursor to this discussion should probably be an introductory
presentation about how this all currently works.  If you can't answer
the question how do I add a key to the kernel for a signed module, you
need the introductory session ...

James

--=-e6uNK3TzSlNX/Dj9xJue
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEEww
ggUvMIIEF6ADAgECAhAkg3IqBATXSCfMF87755raMA0GCSqGSIb3DQEBCwUAMHUxCzAJBgNVBAYT
AklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSkwJwYDVQQLEyBTdGFydENvbSBDZXJ0aWZpY2F0
aW9uIEF1dGhvcml0eTEjMCEGA1UEAxMaU3RhcnRDb20gQ2xhc3MgMSBDbGllbnQgQ0EwHhcNMTYw
MzEzMTcyMjQ5WhcNMTcwMzEzMTcyMjQ5WjBmMS4wLAYDVQQDDCVqYW1lcy5ib3R0b21sZXlAaGFu
c2VucGFydG5lcnNoaXAuY29tMTQwMgYJKoZIhvcNAQkBFiVqYW1lcy5ib3R0b21sZXlAaGFuc2Vu
cGFydG5lcnNoaXAuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA8fN6FUaPbGae
QeEy4y7eNkcm7/okSgGAmybRoxFj7q9JBjoYQWN2ML+7syuRLbvVOZPy+GKsimSSMoNqfnt2tb+K
vRqe01ZTxfGeNkO3xGTwuzQN0HTGVFZEF3qvbBdFUSLVqHVas0kJ9XELezXuOcKdCNRwbrvI4erb
M/tosQ48mJcLPfrr8mCE/MOQlam+EHDUzEozrd3ffCIQRz7A0hWyfXYErLS4WXX5KI+bjz5W7J+I
7/0uspsv99vbQK+v1ObIdf3Xi3Y+g/JiJCpc3kSfna0ZDDSc7asjnizSpGPI/xpwwgOCQL4TnwGV
SWdf2EZUfOhcOIy8URRkYY38qQIDAQABo4IByDCCAcQwDgYDVR0PAQH/BAQDAgSwMB0GA1UdJQQW
MBQGCCsGAQUFBwMCBggrBgEFBQcDBDAJBgNVHRMEAjAAMB0GA1UdDgQWBBRI0VeubHbYY9Cj/2p1
oyuCmI1qcDAfBgNVHSMEGDAWgBQkgWw5Yb5JD4+3G0YrySi1J0htaDBvBggrBgEFBQcBAQRjMGEw
JAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbTA5BggrBgEFBQcwAoYtaHR0cDov
L2FpYS5zdGFydHNzbC5jb20vY2VydHMvc2NhLmNsaWVudDEuY3J0MDgGA1UdHwQxMC8wLaAroCmG
J2h0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL3NjYS1jbGllbnQxLmNybDAwBgNVHREEKTAngSVqYW1l
cy5ib3R0b21sZXlAaGFuc2VucGFydG5lcnNoaXAuY29tMCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tLzBGBgNVHSAEPzA9MDsGCysGAQQBgbU3AQIEMCwwKgYIKwYBBQUHAgEWHmh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeTANBgkqhkiG9w0BAQsFAAOCAQEAS7Gu/w3VB9MB
oDp9FuzuJtIIDmHh8cPdZe3RaXUI2jKjk973jsbjqmaNOGAEWGPuyP50pztL7p6j/crUMaJmbdNi
CyffIQau7KG88tzToeeeABJX8iKiW7r812UNzbNq56EAo8wyEjh8Ph+7p8UrbakTIsgzZ0E4z7fq
fQ4z+KiYiGv2YUjCdXNRplSWVXG/LFxL4eOXSDLIHsqUNTxFuKmThSzhYyGQTSOsNAjtWMWjYF8I
FiEeFpcftxeYzZNEytEXmzXwE+moy1/VKD0VkDSgqkT72CgXuODM/FDlEm2GKG0N8SxhTWqf1UGB
gKIi/rdwMEExeyozofzlXNXF9DCCBS8wggQXoAMCAQICECSDcioEBNdIJ8wXzvvnmtowDQYJKoZI
hvcNAQELBQAwdTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKTAnBgNVBAsT
IFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MSMwIQYDVQQDExpTdGFydENvbSBDbGFz
cyAxIENsaWVudCBDQTAeFw0xNjAzMTMxNzIyNDlaFw0xNzAzMTMxNzIyNDlaMGYxLjAsBgNVBAMM
JWphbWVzLmJvdHRvbWxleUBoYW5zZW5wYXJ0bmVyc2hpcC5jb20xNDAyBgkqhkiG9w0BCQEWJWph
bWVzLmJvdHRvbWxleUBoYW5zZW5wYXJ0bmVyc2hpcC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQDx83oVRo9sZp5B4TLjLt42Rybv+iRKAYCbJtGjEWPur0kGOhhBY3Ywv7uzK5Et
u9U5k/L4YqyKZJIyg2p+e3a1v4q9Gp7TVlPF8Z42Q7fEZPC7NA3QdMZUVkQXeq9sF0VRItWodVqz
SQn1cQt7Ne45wp0I1HBuu8jh6tsz+2ixDjyYlws9+uvyYIT8w5CVqb4QcNTMSjOt3d98IhBHPsDS
FbJ9dgSstLhZdfkoj5uPPlbsn4jv/S6ymy/329tAr6/U5sh1/deLdj6D8mIkKlzeRJ+drRkMNJzt
qyOeLNKkY8j/GnDCA4JAvhOfAZVJZ1/YRlR86Fw4jLxRFGRhjfypAgMBAAGjggHIMIIBxDAOBgNV
HQ8BAf8EBAMCBLAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMAkGA1UdEwQCMAAwHQYD
VR0OBBYEFEjRV65sdthj0KP/anWjK4KYjWpwMB8GA1UdIwQYMBaAFCSBbDlhvkkPj7cbRivJKLUn
SG1oMG8GCCsGAQUFBwEBBGMwYTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3Auc3RhcnRzc2wuY29t
MDkGCCsGAQUFBzAChi1odHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zY2EuY2xpZW50MS5j
cnQwOAYDVR0fBDEwLzAtoCugKYYnaHR0cDovL2NybC5zdGFydHNzbC5jb20vc2NhLWNsaWVudDEu
Y3JsMDAGA1UdEQQpMCeBJWphbWVzLmJvdHRvbWxleUBoYW5zZW5wYXJ0bmVyc2hpcC5jb20wIwYD
VR0SBBwwGoYYaHR0cDovL3d3dy5zdGFydHNzbC5jb20vMEYGA1UdIAQ/MD0wOwYLKwYBBAGBtTcB
AgQwLDAqBggrBgEFBQcCARYeaHR0cDovL3d3dy5zdGFydHNzbC5jb20vcG9saWN5MA0GCSqGSIb3
DQEBCwUAA4IBAQBLsa7/DdUH0wGgOn0W7O4m0ggOYeHxw91l7dFpdQjaMqOT3veOxuOqZo04YARY
Y+7I/nSnO0vunqP9ytQxomZt02ILJ98hBq7sobzy3NOh554AElfyIqJbuvzXZQ3Ns2rnoQCjzDIS
OHw+H7unxSttqRMiyDNnQTjPt+p9DjP4qJiIa/ZhSMJ1c1GmVJZVcb8sXEvh45dIMsgeypQ1PEW4
qZOFLOFjIZBNI6w0CO1YxaNgXwgWIR4Wlx+3F5jNk0TK0RebNfAT6ajLX9UoPRWQNKCqRPvYKBe4
4Mz8UOUSbYYobQ3xLGFNap/VQYGAoiL+t3AwQTF7KjOh/OVc1cX0MIIF4jCCA8qgAwIBAgIQa6eK
fQrXiNZRCvlZ5Oe04TANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3Rh
cnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzEp
MCcGA1UEAxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTUxMjE2MDEwMDA1
WhcNMzAxMjE2MDEwMDA1WjB1MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEp
MCcGA1UECxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxIzAhBgNVBAMTGlN0YXJ0
Q29tIENsYXNzIDEgQ2xpZW50IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvX3a
98OifYP2W4L921tfrh4bdcC1Ga+YJKy7V3nYNewJHnzMlBsK0Hb8Dm4Wo3FZpylcYa1MJGT10QMG
WaLER3xCIuRR+8eklf/EqeZWRLojJ7zBRtjMywPOCelrOU+DX12dKp+Ez4J6919rz1UudTO1GvZy
CYJ/I7062uHsskM8b7gPxmcCoO1UHwwpgkvpCArJWGFoFzjLdsZbErJcS3HtAhlkbE/BKTMrdYg3
5Uo12SLBO5tbk8h2imbKTC8iMs+pskrvI/AVlh6QoTTXk6xboVX6zgMgzxSVVLymQiygYYm0y5aM
svi2raFhC643SOGvErWWPPnSEfbeAD1xswIDAQABo4IBZDCCAWAwDgYDVR0PAQH/BAQDAgEGMB0G
A1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDASBgNVHRMBAf8ECDAGAQH/AgEAMDIGA1UdHwQr
MCkwJ6AloCOGIWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDBmBggrBgEFBQcBAQRa
MFgwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbTAwBggrBgEFBQcwAoYkaHR0
cDovL2FpYS5zdGFydHNzbC5jb20vY2VydHMvY2EuY3J0MB0GA1UdDgQWBBQkgWw5Yb5JD4+3G0Yr
ySi1J0htaDAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jA/BgNVHSAEODA2MDQGBFUd
IAAwLDAqBggrBgEFBQcCARYeaHR0cDovL3d3dy5zdGFydHNzbC5jb20vcG9saWN5MA0GCSqGSIb3
DQEBCwUAA4ICAQCL4/eH7AGLhK0PAQJbnOEjJyMEvTTwcAJuUh/bodjQl06u4putYOxdSyIjSP/s
Kt+31LmjG8+IO1WqykE4H/Lm7NKezWVnCHuwb3ptgFmlwbMbGkU2MOZBtwzfKXdYUhFLhaE2uw5j
XhXvLYitQay962wP5uPI6eAIhV4L8aaya1u4s7MnrTq0Rz25FuGNO79vTHYWj797tSRC8rM16js4
yGKOLFpQvIg0F8IElv57b1stp+C7omqM5Qn15dePbSnqr8Jb65WtmJJbnv6rlqfY/aLuE/zmNAlz
LmPgfMDStKIXdg+EoYBZTEo8wBUaBxihfNbJ069ndQOxMNNqBelEMgpAtmjTbCuXFjqIwWq+XOx6
ZV/Wh2FAmaLsSHlNvEjjSQMZwE4EeHCdo66ZmEs/5JYlCeOkulKVQ6P3m5/XOj2jP17Q2AgmjP+1
1+sHN7PvrG0OwrQp9QMe3X+rn0G8MjtFfqBWvR9CgLIxzM3MJNxFdgdjS2rYnShP5uxvqwfZvhZV
YCIkqdJhpYON0DvSodfiar0wiM79mySZJjzC0CTbiisBzS/BeBhqeo2wFfli/iw3hn1XKvAx0ty6
w/scmBF0AYqmRHYj1TjMSw0lAl7AztLglqWjUPI+sukvadMRPxmtKXlS2nVR4an/Z16imsZ69+fF
YH68c1CK7zmjozGCA14wggNaAgEBMIGJMHUxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSkwJwYDVQQLEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTEjMCEGA1UE
AxMaU3RhcnRDb20gQ2xhc3MgMSBDbGllbnQgQ0ECECSDcioEBNdIJ8wXzvvnmtowDQYJYIZIAWUD
BAIBBQCgggGlMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE2MDcy
NzE1MDYyN1owLwYJKoZIhvcNAQkEMSIEIF0Ltv8lGoGi7QPd8XUG6AGMKpgXDwHW4+OJ5fyzo37K
MIGaBgkrBgEEAYI3EAQxgYwwgYkwdTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0
ZC4xKTAnBgNVBAsTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MSMwIQYDVQQDExpT
dGFydENvbSBDbGFzcyAxIENsaWVudCBDQQIQJINyKgQE10gnzBfO++ea2jCBnAYLKoZIhvcNAQkQ
AgsxgYyggYkwdTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKTAnBgNVBAsT
IFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MSMwIQYDVQQDExpTdGFydENvbSBDbGFz
cyAxIENsaWVudCBDQQIQJINyKgQE10gnzBfO++ea2jANBgkqhkiG9w0BAQEFAASCAQC8/f9kmp3u
0aETu+fG71k1kCU/HoGhJHV73ffkEYQbE17Xovi8sWOBuDfswbXEO5PSF/C/DU6U2ed98kwP3bWg
8g8uWOqSb7+PONMftToSxG4gUfnfKWawnV4jPQnUTQrBlllvPXqpqvQl0T3wUf07tkbkvG25JoKi
so747hCn6ZHiE0YbckMu+eI/a+olQbQdiPkBqM/JkjhvvKzu11qKZUVssH9q47tJTTP9MH4AIDz0
4mN3Br87xcWAKCiNAZbNV72M3XkD/QkuEUhY0gNgaSYelDcMh9pALQZKE4VTRAsxUQRFI+7Pdq5X
NGkoM46FStv17TdzPr5TY/8DiIeIAAAAAAAA


--=-e6uNK3TzSlNX/Dj9xJue--
