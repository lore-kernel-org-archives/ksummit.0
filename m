Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0607313E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:19:04 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F00B71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:19:03 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id r196-v6so1902315iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 14:19:03 -0700 (PDT)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<CAKMK7uEChffffb+iJT1UHHBnw+ocnGG3W64q-H9FDZgy-fZ46g@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <a7fb1355-ea96-d658-4c77-9b328054ac2a@linuxfoundation.org>
Date: Mon, 10 Sep 2018 17:19:41 -0400
MIME-Version: 1.0
In-Reply-To: <8412864.7ztUKcXNNC@avalon>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="w3U88cdmsSkoD0IMH4JaBZMZD2vHCslit"
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--w3U88cdmsSkoD0IMH4JaBZMZD2vHCslit
Content-Type: multipart/mixed; boundary="b8WM44lK4Dusw9Sb8ruBRijot8pojxAxY";
 protected-headers="v1"
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 ksummit-discuss@lists.linuxfoundation.org
Message-ID: <a7fb1355-ea96-d658-4c77-9b328054ac2a@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
 <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
 <CAKMK7uEChffffb+iJT1UHHBnw+ocnGG3W64q-H9FDZgy-fZ46g@mail.gmail.com>
 <8412864.7ztUKcXNNC@avalon>
In-Reply-To: <8412864.7ztUKcXNNC@avalon>

--b8WM44lK4Dusw9Sb8ruBRijot8pojxAxY
Content-Type: text/plain; charset=utf-8
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 9/10/18 4:32 PM, Laurent Pinchart wrote:
> If we want to challenge that, we'll have to agree about another communi=
cation=20
> system for the whole kernel. While I don't think that's realistic, I'm =
not=20
> opposed to discussing it. However, I expect many developers to come up =
with=20
> lists of requirements, and the result of merging all those requirements=
=20
> together to be exactly email and nothing else :-)
>=20
> On my side, there are three very important features that a communicatio=
n=20
> system should have:
>=20
> - It should be push-based. I don't want to have to log in and pull info=
rmation=20
> from web UIs.
>=20
> - It should be customizable, offering an easy way to script review, and=
 patch=20
> and pull request handling.
>=20
> - It should offer an offline mode. Lots of us travel a lot or generally=
 have=20
> to work without an internet connection more often than we would like, s=
o any=20
> solution that requires being online won't work.

This is part of the reason why I mentioned pagure.io in a different
thread -- it is mostly a web-ui sitting on top of gitolite and was
written with an eye to be fully workable via ssh and email:

https://docs.pagure.org/pagure/overview.html#overview

With Pagure, *theoretically* (I haven't looked in any depth into any of
it), everyone who is happy with the current gitolite/email workflow
would just continue using their existing routine. Anyone who wants to
use the UI for issue tracking and pull requests can optionally choose to
do so. Since it uses gitolite, there wouldn't be a "flag day" where
everyone would have to switch to the new workflow.

It is used by Fedora and therefore, I guess, is to some degree "backed"
by Red Hat (in the same sense as how Fedora is "backed" by Red Hat). It
also has the benefit of not suffering from the "community edition" vs.
"commercial edition" duality that GitLab has. From my experience using
Puppet, I know how tempting it is for orgs to prevent useful features
from making it into the "community edition" if they can charge for them
instead.

That said, I'm not sure if this would actually reduce confusion instead
of creating more. We know for a fact that central issue tracking a-la
Github would fail for the kernel unless there is someone in a
janitorial^W heroic position of figuring out to whom assign each
incoming bug. I also know from experience that almost every web UI tool
written to work with git chokes and fails on something as large as the
kernel or when hit with a firehose of chatter like LKML.

In other words, I'm not at all ra-ra about implementing this, but if
there is enough consensus that it's worth trying out, I will be happy to
set something up for a test spin.

Best,
--=20
Konstantin Ryabitsev
Director, IT Infrastructure Security
The Linux Foundation


--b8WM44lK4Dusw9Sb8ruBRijot8pojxAxY--

--w3U88cdmsSkoD0IMH4JaBZMZD2vHCslit
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCW5bf7QAKCRC2xBzjVmSZ
bAHhAQD7tSLjXCExeCuN05nOu4XGcBcqwxUanN9cPUObiNJpJgEAsEaH0F/JGoI0
naaRMRhXS2n0+LuHQPnUkJAsBXPHeAs=
=xr6h
-----END PGP SIGNATURE-----

--w3U88cdmsSkoD0IMH4JaBZMZD2vHCslit--
