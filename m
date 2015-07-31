Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD17E96
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:04:38 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C15CF13E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:04:37 +0000 (UTC)
Date: Fri, 31 Jul 2015 18:04:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150731170416.GI20873@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PWfwoUCx3AFJRUBq"
Content-Disposition: inline
In-Reply-To: <2111196.TG1k3f53YQ@avalon>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PWfwoUCx3AFJRUBq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 31, 2015 at 06:14:14PM +0300, Laurent Pinchart wrote:

> It recently came to my attention that the way devm_kzalloc() is used by m=
ost
> drivers is broken. I've raised the topic on LKML (see
> http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were sim=
ply

lkml.org is down (again) - can you please provide a subject line?

> The issue occurs when drivers use devm_kzalloc() to allocate data structu=
res=20
> that can be accessed through file operations on a device node. The follow=
ing=20
> sequence of events will then lead to a crash.

Like Julia says I'm not sure this is really related to devm_ - I would
really expect that the majority of users were already broken prior to
the conversion to devm_ since the natural thing is to free things in the
remove() function which has exactly the same issues, the main problem
here is that the file open after device is removed case is rare for most
devices and requires somewhat obscure handling.

> While I agree that this is how devres operates today, I'm not sure we sho=
uld=20
> throw the baby out with the bath water. Using devm_kzalloc() as currently=
 done =20
> has value, and reverting drivers to the pre-devm memory allocation code w=
ould=20
> make error handling and cleanup code paths more complex again.

> Should we introduce a managed allocator for that purpose that would have =
a=20
> lifespan explicitly handled by drivers (or, even better, handled automati=
cally=20
> in a way that would suit our use cases) ? Tejun commented that "a better=
=20
> approach would be implementing generic revoke feature and sever open file=
s on=20
> driver detach so that everything can be shutdown then".

Tejun's suggestion seems like the most robust thing here - allocation
issues are only going to be one of the problems with userspace accessing
devices that are going away and there's a complexity cost from having
the partially destroyed cases around.  Off the top of my head there's
anything that attempts to access the hardware if it's genuinely gone
away rather than just been soft unbound for example.  If the device can
just invalidate all open files on the way out then that's going to be
exactly what most things want.

--PWfwoUCx3AFJRUBq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVu6qQAAoJECTWi3JdVIfQJiYH/AmcXa/6uvp/wtKgBxIjlmD+
Y/RRDjY8l5OU21oLNqEti0nMI24ZRhFlWop3N2hBe+e9qluRtKluMIb4Hx6JSDpf
qBx1hjd0d94ACkMhY/qyde63fMQq3tYYysX5cXPBhxzY9CYujhAuZjCbqqzgIq5b
VSTjvtTIRGvmkfE3AzsA2P5gfnNyjAH4MoVmH69y9lRvNsShWXOIi0jMnuYcbmKL
yuhgkKCM+hDwSmY6B0B/qOC74jqfi68ORY0jgDJfqN6V8JXapDwG+cwukfuEz3Zl
Jsm1w5hRi1tYjANQL48uzD9ByuzdT6ppBvMo0PcDTRyZp8HjpRzCKoUarPW9B/o=
=7KoR
-----END PGP SIGNATURE-----

--PWfwoUCx3AFJRUBq--
