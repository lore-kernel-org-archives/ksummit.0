Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEB7E9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 16:38:12 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A1E508D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 16:38:11 +0000 (UTC)
Message-ID: <1438187888.2204.83.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 29 Jul 2015 09:38:08 -0700
In-Reply-To: <1438184150.26511.77.camel@infradead.org>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud> <20150728213805.GA8786@kroah.com>
	<1438162660.26913.230.camel@infradead.org>
	<1438182000.2204.35.camel@HansenPartnership.com>
	<1438184150.26511.77.camel@infradead.org>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-hCwql9kaacHx9nWE6AKg"
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


--=-hCwql9kaacHx9nWE6AKg
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2015-07-29 at 16:35 +0100, David Woodhouse wrote:
> On Wed, 2015-07-29 at 08:00 -0700, James Bottomley wrote:
> >=20
> >=20
> > Really, no, there aren't.  Firmware is an operating system independent
> > blob which runs on a separate processor without modification for
> > Windows, Linux, Solaris or any other OS.  As such, there's no way it ca=
n
> > be considered a derived work of (or even based on) the Linux Kernel.
> > This...
>=20
> I don't ever think anyone would claim that the firmware is a derived
> work of the Linux kernel. Or that it is based on the Linux kernel.

OK, got that.

> That's a straw man. But it's also not really necessary for the point
> you were making, which might as well start here:
>=20
> > ...it falls under the aggregation terms of clause 2 of the GPL:
> >        =20
> >         In addition, mere aggregation of another work not based on the
> >         Program with the Program (or with a work based on the Program)
> >         on a volume of a storage or distribution medium does not bring
> >         the other work under the scope of this License.
> >=20
> > So it definitely doesn't have to be distributed under GPL and can be
> > aggregated with GPL components like Linux.
>=20
> I understand that opinion. But the whole 'mere aggregation on a volume
> of a storage or distribution medium' thing is fairly ambiguous, and
> there is plenty of scope for interpretation.

No, it's not, you missed quoting the part that defines it.  It
specifically applies to aggregates of additional components which are
*not* based on the work.  The exact legal test for applying this
paragraph to a component is "not based on the work".

> Certainly it seems intended to cover at *least* the case of things like
> the old "shareware CDs", allowing GPL'd software to be included on
> those as well as non-GPL'd software. Those are collective works, and
> without the exception *would* have been prohibited by the GPL. (Again,
> just in terms of what you are permitted to do with the GPL'd thing,
> without ever making the bizarre claim that the non-GPL'd parts are in
> any way derivative of or based on the GPL'd parts.)
>=20
>=20
> It's possible to interpret that same clause as negating the *entirety*
> of the paragraphs that precede it =E2=80=94 permitting *any* combination =
of GPL
> and non-GPL works as long as you call it 'aggregation' =E2=80=94 and igno=
ring
> the ill-defined word 'mere' that precedes it, and the context 'on a
> volume of a storage or distribution medium' that follows.

No, the GPL relies on a specific copyright mechanism to apply to an
aggregated work, see below.

> One could then argue that even linking a proprietary piece of native
> code into a GPL'd work and calling it directly is permitted =E2=80=94 it'=
s
> still merely aggregation. Obviously, that doesn't seem like a
> *reasonable* interpretation, as it would clearly make the licence
> inconsistent with itself. So I wouldn't bet on a court backing that
> interpretation =E2=80=94 but then again, courts have done stupider things=
.

No you can't.  Whether the aggregate paragraph I quoted applies is very
specific in legal terms.  It only applies to the combination of the work
with something which is not a derivative of the work.

> Then there's a whole spectrum of other possibilities, between the
> minimal 'allow GPL'd stuff to appear on shareware CDs' to the excessive
> 'allow anything as long as you call it aggregation' interpretations
> that I have outlined.

Well aggregate has a very specific legal meaning:

        AGGREGATE: A collection of particular persons or items, formed
        into one body

the mere act of aggregation does not constitute making a derivative
work.  We have to make other additional legal arguments if we want to
claim the aggregation is also a derivative.

> Your viewpoint, while a valid opinion, falls closer to the latter end
> of that spectrum than mine does.
>=20
> The fact remains that there is scope for reasonable people to disagree,
> that *none* of us are right until it's tested, and there *is* a reason
> for cautious people to err on the side of caution.

No, the paragraph is clear and has a well defined legal test: Unless you
can opine that the component you're aggregating is *also* based on the
work, the clause I quoted applies and the aggregation is allowed without
the component having to be under GPL.

> You make a point about Linux-specific firmware being a 'greyer area',
> which is true precisely *because* of the ambiguity here. That, along
> with many other factors, would affect a court's perception of whether
> the the two parts are indeed 'merely aggregated on a volume of a
> storage or distribution medium', or whether they are tied together as a
> coherent 'whole which is based in part on the [kernel]'.=20
>=20
>=20
> I'm not going to tell you that your opinion on the 'mere aggregation on
> a volume of a storage or distribution medium' thing is wrong, although
> I happen to disagree with it.
>=20
> But I *am* telling you that you are wrong to claim that there is *no*
> risk. And that Greg is similarly wrong to make his absolute 'not true
> at all' claim.

Really, no, the GPL is very carefully written to follow the tenets of
copyright law and specifically and deliberately never defines what
constitutes a derivative work because it relies on case law to do that.
This means the copyleft capture applies only to something which in legal
terms is a derivative of the work.  An aggregate may or may not be a
derivative work, but the mere act of aggregation does not create a
derivative (and there is definite case law on this), you have to apply
additional arguments to determine if an aggregate is also a derived
work.  You already agreed that most firmware is not a derived work of
the kernel, ipso facto, it's an aggregate which is not based on the work
and thus falls under the clause I quoted.  That's why this clause
exactly says "aggregation of another work not based on the Program".

Binary modules may fall under the GPL because there's an untested legal
argument based on more than mere aggregation that they are derived works
of the kernel.  Unless you can make some argument for why a piece
firmware is a derived work of the kernel, the aggregation paragraph
applies because it passes the "not based on the work" test and thus it
does not fall under the GPL.

James

--=-hCwql9kaacHx9nWE6AKg
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
DQEJBTEPFw0xNTA3MjkxNjM4MDhaMC8GCSqGSIb3DQEJBDEiBCDf+GnQFL4Qz/wVRYH2sXgYdXep
YabJnRsIxp+zNSSPpzCBpQYJKwYBBAGCNxAEMYGXMIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UE
ChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2ln
bmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGll
bnQgQ0ECAw1qzTCBpwYLKoZIhvcNAQkQAgsxgZeggZQwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQK
Ew1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVu
dCBDQQIDDWrNMA0GCSqGSIb3DQEBAQUABIIBADKbpgqwWegz/37Pjro7m18Q67wBIhKS4BCb7FGS
JLOdr3FHP8r1vALEtTculxqx4VEOSEL1v96Dqc5BbfjAHSO0yf6IffF8DGecY6Cy1UeRZc4Eh1IZ
R6RfK7YVp0dCyQP94+A3S5DdPL3utIasX0NieKdCwq84fY2h1RLgr6i7EB2u5iOy7xeREHn+Z91L
UCRBeKJ62v2We1EIFNQjAZTq6iT256ajGmdfJlJZ4mfU/HHEN3wZ3UmMDddZ4czjunFQqN1R7L7n
c0+fZ14jwQpfvUlmFGNDOMSjh6g7sEkEUosuhjz8inF8H7URYrsPdbZST8cSBKTBbb1SEroQH4wA
AAAAAAA=


--=-hCwql9kaacHx9nWE6AKg--
