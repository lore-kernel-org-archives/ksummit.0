Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 03F57A6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 16:10:53 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B29E710A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 16:10:52 +0000 (UTC)
Message-ID: <1473264649.10218.56.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: Shuah Khan <shuahkhan@gmail.com>, Andy Lutomirski <luto@kernel.org>
Date: Wed, 07 Sep 2016 12:10:49 -0400
In-Reply-To: <CAKocOOM7XJeW79dtFNx2Agi7cyrQxmMROmQrisdTG8oZMSi_qQ@mail.gmail.com>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
	<CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
	<CAKocOOM7XJeW79dtFNx2Agi7cyrQxmMROmQrisdTG8oZMSi_qQ@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-VLJKQwGjtu0Tt9Av/wk/"
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-VLJKQwGjtu0Tt9Av/wk/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-09-07 at 09:30 -0600, Shuah Khan wrote:
> On Tue, Sep 6, 2016 at 11:30 PM, Andy Lutomirski <luto@kernel.org>
> wrote:
> >=C2=A0
> > I wouldn't mind a policy that tracepoints are simply never
> > stable.=C2=A0=C2=A0Maybe we
> > should even deliberately change them periodically to drive the
> > point home.
> >=20
> > The kernel should be able to have a debug API that is genuinely for
> > *debugging* and doesn't freeze the underlying implementation.
> Agreed. Tracepoints and events provide a powerful tool in debug
> certain class
> of problems (races and performance problems) where traditional debug
> methods
> such as CONFIG_DEBUG_FOO aren't effective. Trace information includes
> important
> status information on thread status which is helpful in debugging.

=46rom an enterprise distro (and user) point of view,
it is important to be able to debug a kernel that
is running on a production system (and developed
some problem after a month of running), without
having to reboot into a special "debug kernel".

Being able to just fire up a tracer debugging
script that can identify intermittent problems
is an invaluable tool in making the kernel better
for our users.

Hamstringing our ability to make the kernel better,
in order to keep the debugging ABI stable, is
shooting ourselves (and our users) in the foot.

--=20
All rights reversed

--=-VLJKQwGjtu0Tt9Av/wk/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJX0DwKAAoJEM553pKExN6DvasIALL8VIgAQ+fqQ69rZz2I8T1g
dpm7Fv0kCDEYKgj0uGDGx8szXhqPKjcmu042C+TUHXkmsTayjrU3dW9JXTiPhSRj
PE3Jly4Zgy7WQ0RvRnMCwKynqPHXAZFu14qLOe9D+vnu49XPeTNfDzAwlRhkK+Fu
8O1GycqLpV+/wjpysazEgO4YJTF0EkWHrYH0ac3k+J28V4LgMvGVR55slRna65ea
JT5pXeENkuwTPAEpvqSYn+IuqwaY773schDjZ9nTVc5KN8y6ab4qEmWKhMRKKRw0
vVDac7qZZMb6tczUN1GYAsfvurpiaPjB8U11XZ+/9yfM7d5ywvNGlOUZxMnaMXU=
=kRh0
-----END PGP SIGNATURE-----

--=-VLJKQwGjtu0Tt9Av/wk/--
