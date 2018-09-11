Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E92F3F39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 00:47:10 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F0617DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 00:47:10 +0000 (UTC)
Date: Tue, 11 Sep 2018 10:47:07 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180911104707.65613222@canb.auug.org.au>
In-Reply-To: <20180910174638.26fff182@vmware.local.home>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/7LFIdfvfLvZ1fHwjo+DvU32";
	protocol="application/pgp-signature"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/7LFIdfvfLvZ1fHwjo+DvU32
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Steve,

On Mon, 10 Sep 2018 17:46:38 -0400 Steven Rostedt <rostedt@goodmis.org> wro=
te:
>
> Honestly, I think this is something that Linus should yell at
> maintainers for. I treat my pushes into linux-next the same as I treat
> my pull requests to Linus. I don't push anything into next until it's
> been fully run through my test suite, and passes. That also makes it
> easier for me to know that whatever I have in next is also ready for
> Linus (the way it was suppose to be).

I am pretty sure that Linus does not follow linux-next (except to see
what is still coming during the merge window), so maybe I should be
yelling at people - but yelling is not one of my better skills :-)

In the current particular case it is runtime testing that is failing
and I only do a small amount of that (and it is not failing for me).

--=20
Cheers,
Stephen Rothwell

--Sig_/7LFIdfvfLvZ1fHwjo+DvU32
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluXEIsACgkQAVBC80lX
0GxhUAf/Z7gYN4YGi60m//WgX8XLmBm/+vHRsahJtSXBmJ3vvaIvUcKGWtKByupl
y3hTcY10qNi2OPQf+cP0rwcBkuVtx2lSiBOaDW3n7JtwWn8r3rK4Rv+hbuIj0ELd
+0n9WqWbxoD2kYIp/3JC/+USOrnt/8SkU2+g3g60JT4dcQvBStEHtEQmYN2gW0SS
Lwx+rCYrpFGGDoyvBJP+WHb/suhsu3BoQBGXnP65gW43rzcdlUkMKux3jMtS97UP
O7S7hamqCtcje96SMrNt6XS2kn64/4hfDjXVaoa85EgdHaqMWLMee6zM5GGOrTZR
b0ItnY19XvXS9OgWHNB/bHz05ZJmYg==
=d6yJ
-----END PGP SIGNATURE-----

--Sig_/7LFIdfvfLvZ1fHwjo+DvU32--
