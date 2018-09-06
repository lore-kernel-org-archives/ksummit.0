Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCB601239
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 23:19:02 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34218786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 23:19:02 +0000 (UTC)
Date: Fri, 7 Sep 2018 09:18:42 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20180907091842.6c55bd9a@canb.auug.org.au>
In-Reply-To: <CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/5weyR+g7ME7de+XQQBkb773";
	protocol="application/pgp-signature"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/5weyR+g7ME7de+XQQBkb773
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Kees,

On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
>
> If there was an agreement by all maintainers that deprecated
> functions/patterns should not be added, and we documented the
> deprecation somewhere like Documentation/process/deprecated.rst, then
> we could make the declaration that if such functions got added (it's
> easy to mechanically check for them), it would be the responsibility
> of the author and maintainer chain to see that it got fixed before the
> release is cut. We already have this for things like "breaks the x86
> allmodconfig build" or similar. The checking would be manual, and the
> enforcement would be by agreement, but it'd be better than the kind of
> "please don't do this" hand-waving we've had in the past.

I could do this in linux-next, of course, the same way I check for
missing signed-off-bys.  All I would need is the list of deprecated
things.

--=20
Cheers,
Stephen Rothwell

--Sig_/5weyR+g7ME7de+XQQBkb773
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluRtdIACgkQAVBC80lX
0GzyTAf/WIL22jzueCIJCoA8Zuean88I2vipho3NTLVMCHMsio3zN7K8ptzlJw1U
TaZnAzfYJNGOQbZbrDO1SuSWu6OTjgCoZ4j1r3DoYAOSc2cYgP7NXKdvTgmMdx1+
lxEVkuTZRFWvSRbkwX4wQqso9yDJlR1TyqN5Tg1KCarN9V45xh4CNrDk2efgS2np
/2kcpb26D0PUUXmsqyn5tTv/3CIgG3AvPm2BQueN//QvROgVetgzADx1zJatIOUa
RAnymbZA2aJmy97afR0jtWRe2EGxkkX63Z4lwlE2retVlit5uDa0IAv4HgYNmqkx
oTA3HNvXWhHJiIQ7i/Yz9mMJCC9woQ==
=Rts/
-----END PGP SIGNATURE-----

--Sig_/5weyR+g7ME7de+XQQBkb773--
