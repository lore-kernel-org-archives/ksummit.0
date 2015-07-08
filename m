Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70AC1BCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 13:25:10 +0000 (UTC)
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1B601C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 13:25:09 +0000 (UTC)
Received: by igoe12 with SMTP id e12so515725igo.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 06:25:09 -0700 (PDT)
Date: Wed, 8 Jul 2015 09:25:06 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150708132506.GA14279@gmail.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 07, 2015 at 10:42:49PM +0200, Jiri Kosina wrote:
> I think it'd be useful to have a session where maintainers could come up=
=20
> with feature / improvement requests for kernel.org infrastructure and hav=
e=20
> a subsequent discussion about whether they would be generally useful.

I suggest people just email users@linux.kernel.org. :) I've always
solicited such conversations, but in my previous experience these tend
to fall into two categories:

1. "Here's a minor suggestion that could be kinda cool, whenever you
   have some time."
2. "Here's a radical idea that would require a park of 1,000 various
   hardware systems and a dedicated staff of 10 people."

There doesn't appear to be a lot that falls between these two
categories. This is not to say that #2 is not possible, it's just that
we have to operate within LF budget constraints and people never tend to
follow such grand requests with "and here's my $EMPLOYER who's happy to
fund this initiative." If you do happen to be in such a position, then
I'll be happy to get you in touch with the Collab Projects management
team.

> Let me start with my personal wish:
>=20
> I personally would very welcome a facility that'd send out an e-mail if a=
=20
> new commit is pushed to a git.kernel.org repo branch (sort of what tip-bo=
t=20
> and akpm's scripts are doing these days) to automatically notify the patc=
h=20
> author that the patch has been merged and pushed out.

We have the following script running on torvalds/linux.git:
http://ur1.ca/n2iof

It has two downsides:

1. It sends an email per each commit, which tends to thrash the lists
   (e.g. see https://marc.info/?l=3Dgit-commits-head where Linus's tree goe=
s)
2. It doesn't fork into background while doing that, so you have to wait
   for it to finish sending the emails.

If that's fine with you all, I can enable this for other repos as well.
All I'd need would be the destination list address.

> Suggested attendance: Konstantin, maintainers :)

I'll be at the summit.

Best,
--=20
Konstantin Ryabitsev
Linux Foundation Collab Projects
Montr=C3=A9al, Qu=C3=A9bec

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnSSvAAoJEDZgaZyZ4FVXHfYIALSVYapDTUgkLGqq2lNQo1zW
/U443H34dfDeYh2jOPZlYQwV7q8wIlAAeZqMamAfN9u3R+efOSASQ5M3xxpPrp27
tdKknYq9auUuCBImzOyEZesrYi/Ue3xR4I91vnleNUdvWbCkXZEDeZxiRHQi32pX
oxtFL4VjuoHCiKf/4lqv/RC6Helki0JTGKdz1TGgJ5WS4W3aZXI3eMt0ZZ1TeoVY
pHeicJyPfRFTtBWWJ2vTWt0yO6jsNaTUJ00Q4BmqdQxXAH+nAQxNSXxKxcEDBHcm
IigvEQTzup/wajw1K3hVVNgY1AvS150vOsOWE2YYQDHjNUr9qDSkgbjs2C18LVw=
=BmEQ
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--
