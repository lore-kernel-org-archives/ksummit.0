Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08BA147F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 15:00:04 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 45E087C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 15:00:03 +0000 (UTC)
Message-ID: <1438182000.2204.35.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 29 Jul 2015 08:00:00 -0700
In-Reply-To: <1438162660.26913.230.camel@infradead.org>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud> <20150728213805.GA8786@kroah.com>
	<1438162660.26913.230.camel@infradead.org>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-S+uITkv79QPhxEK+1iak"
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


--=-S+uITkv79QPhxEK+1iak
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2015-07-29 at 10:37 +0100, David Woodhouse wrote:
> On Tue, 2015-07-28 at 14:38 -0700, Greg KH wrote:
> > On Tue, Jul 28, 2015 at 11:54:28AM -0700, josh@joshtriplett.org wrote:
> > > > So in that case, what's the advantage of separating the firmware fr=
om
> > > > the driver?  If we can't update it without updating the driver, we =
could
> > > > just build it in and save a huge amount of hassle.
> > >=20
> > > Licensing, which is a large part of why we have request_firmware to
> > > begin with.  Let's not make distribution kernel maintainers' lives mo=
re
> > > difficult than they already are.
> >=20
> > Not true at all, please talk with some lawyers about this.
> >=20
> > Or, to be clear, the lawyers I have discussed this with have no issues
> > at all with it.  Yours might differ.=20
>=20
> Lawyers will mostly argue anything their client wants them to.
>=20
> So that isn't data; it's barely even a relevant anecdote. It certainly
> doesn't merit a blanket statement like 'not true at all'.
>=20
> If anything, your anecdote tells us more about the desires of those who
> were *paying* the lawyers in question, than it does about the matter at
> hand.
>=20
> Hell, *I* can find a doctor who will assert that vaccines cause autism,
> if you want one=C2=B9.=20

That's not even an opinion, it's wrong on the facts.  You can always
find a crackpot willing to argue by misrepresenting the facts, but it's
not what a reasonable person (or company) should base their decisions on
and not what we should do ... unless you want to open the door to say
re-doing our geo location libraries to take into account the views of
the flat-earth society?

> Something like this is not *truly* settled until/unless there is a
> court ruling =E2=80=94 and then only in that jurisdiction, and until/unle=
ss
> it's appealed/overruled.
>=20
> So yes, I'm sure there are lawyers who will turn up in court and argue
> whatever it is that they need to argue to make that case =E2=80=94 that a
> kernel bzImage *isn't* a "work based on the [Linux kernel]", or that a
> binary-only firmware image therein, which cannot be automatically
> extracted or separated because it is static data within one of the C
> files of a GPL'd driver, somehow *is* nevertheless "being distributed
> as a separate work".
>=20
> But there are other lawyers and expert witnesses who will respond to
> those arguments with a resounding WTF.
>=20
> Nobody gets to say "not true at all" before it's actually come to
> court.
>=20
> In the meantime, there are genuine licensing reasons why a risk-averse
> company might elect *not* to build non-GPL firmware *into* a Linux
> kernel image. Because they might not want to end up being summoned to
> that court room, and might not want to have to pay that lawyer to make
> that argument.

Really, no, there aren't.  Firmware is an operating system independent
blob which runs on a separate processor without modification for
Windows, Linux, Solaris or any other OS.  As such, there's no way it can
be considered a derived work of (or even based on) the Linux Kernel.
Thus it falls under the aggregation terms of clause 2 of the GPL:
       =20
        In addition, mere aggregation of another work not based on the
        Program with the Program (or with a work based on the Program)
        on a volume of a storage or distribution medium does not bring
        the other work under the scope of this License.

So it definitely doesn't have to be distributed under GPL and can be
aggregated with GPL components like Linux.

You're not out of the woods with this, though: the licence of the
firmware must permit arbitrary redistribution (and we've seen some that
don't), so it still has to be released under a freely redistributable
licence.  And, obviously, there's a greyer area for Linux Specific
firmware, but the above applies in the general case.

Distributions, like Debian, which have a definition for what they
consider to be "free software" may obviously conclude that binary blobs
don't satisfy that definition and therefore must be confined to the
non-free part of the distribution.  We can certainly continue to ship
firmware separately as a courtesy for Debian to prevent the hardship of
having to banish the whole kernel to non-free, but it's not because
there's any shadow of a doubt about the legality of aggregating Linux
independent firmware with the Linux Kernel.

James


--=-S+uITkv79QPhxEK+1iak
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
DQEJBTEPFw0xNTA3MjkxNTAwMDBaMC8GCSqGSIb3DQEJBDEiBCCXgVwO8s5PHKQlIb5w18HKmZl9
MJVFCCSpYF+8qb+M9jCBpQYJKwYBBAGCNxAEMYGXMIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UE
ChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2ln
bmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGll
bnQgQ0ECAw1qzTCBpwYLKoZIhvcNAQkQAgsxgZeggZQwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQK
Ew1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVu
dCBDQQIDDWrNMA0GCSqGSIb3DQEBAQUABIIBAHtu4nriMlkwirYagQZkac6Ju+6WKEEWGS9SE82+
mgc5ywZb5xUoD7MNWL6z7We7IrKxY8pH1K3X69QrHHNjXWHMY486ho1V30GkcQ20MLAgHP5Ofw6t
CZBeyfx8GNCG9U9oPYfcoMEUZNwLbjUS1FgFoz9NHGAwp3lGECpu4EN4i9yMOLf1BDzwcfXpCFuq
43E9WJAsiqdCA3uZPJ/bTmHoAQMzHnrCS2Sk+xeaDAd4x+6Ggkw21hVJAdBSy+Q3/4dvd/F/cytD
HwzRp1UqCabsMGFk8X1D4VP6Y1VheHtOlD+A6fMzIfs2UCqx+0wb8PrY2pbtyEztgFEmQBfMHGEA
AAAAAAA=


--=-S+uITkv79QPhxEK+1iak--
