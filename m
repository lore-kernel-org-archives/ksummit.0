Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B87646C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 12:03:24 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5DB02A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 12:03:24 +0000 (UTC)
Date: Sun, 2 Jul 2017 14:03:21 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170702120321.tskgcrbfehg4fccx@earth>
References: <20170626111207.GA11688@amd> <20170626114931.GG23064@atomide.com>
	<20170626131401.GA11980@amd> <20170626134904.GH23064@atomide.com>
	<20170626204932.GA19396@amd> <20170627071835.GJ23064@atomide.com>
	<20170627121455.tljtekx6bmzlezxa@earth> <20170627215727.GA5250@amd>
	<20170628160112.ip2ambkzlkkoz2ww@earth>
	<20170628202722.GC18101@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3whyfooflsfv7zxc"
Content-Disposition: inline
In-Reply-To: <20170628202722.GC18101@amd>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--3whyfooflsfv7zxc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 28, 2017 at 10:27:22PM +0200, Pavel Machek wrote:
> > > Oh, another major piece is DSP coprocessor that is there. Unlike
> > > graphics, we don't even know how support for it should like.
> >=20
> > https://www.kernel.org/doc/Documentation/remoteproc.txt
> >=20
> > config OMAP_REMOTEPROC
> > 	tristate "OMAP remoteproc support"
> > 	[...]
> > 	help
> > 	  Say y here to support OMAP's remote processors (dual M3
> > 	  and DSP on OMAP4) via the remote processor framework.
> >=20
> > 	  Currently only supported on OMAP4.
> >=20
> > 	  Usually you want to say Y here, in order to enable multimedia
> > 	  use-cases to run on your platform (multimedia codecs are
> > 	  offloaded to remote DSP processors using this framework).
> >=20
> > 	  It's safe to say N here if you're not interested in multimedia
> > 	  offloading or just want a bare minimum kernel.
> >=20
> > I have been told by some Nokia people (I do not remember who it
> > was, possibly Sakari), that the DSP is not that powerful and any
> > calculation should also be possible on CPU (wasting a bit of
> > energy).
>=20
> Ok, we probably don't care about DSP, but lets say we had really
> fast DSP or really cared about power.
>=20
> We'd need remoteproc. Sure. But that has no interface for userland,
> right?

remoteproc is only for start/stop + fw loading. The actual
communication is done using rpmsg, which does not yet have a
userspace API afaik.

> So we'd need to introduce interface for userland... fine.
>=20
> And then we'd need cross-compilers for the DSP used. Ok.

Yes. As far as I know there is currently no open source toolchain
for the TI DSP.

> And then we'd need to split mpg123 to CPU and DSP parts, and modify it
> so that it can run the DSP parts using remoteproc, when available?
>=20
> That starts to be ... complex, with changes all over the system :-(.

With little gain expected on N900...

-- Sebastian

--3whyfooflsfv7zxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllY4QYACgkQ2O7X88g7
+pqmJQ//SmQF7+D4JbzxQEioTVwAGm8jRUoycgE+ls3gLXvsWlyDcFz93Jy0O4d7
YquD+p+XBIfaxj8R0NFOcDdZyrU0RMynn7+HUhJPH07cMdTCESHpSjZJT2Ol/UBe
+fyjAvzKiPMRjJKAiQMsXu9VzFHdaV5Z7hsTJmWIMNwyQLgyDTQFCbFDpU2NXD8p
v2ES033XnmPelbTXujK7ysAbd5vkkkTlIQDJC2d5x63d0l4iH484oRgUMWl2rfNq
erjDBNQ6+6z2FSPZ4xotO5Al5Wy713vv/RB0F/j9MQJD0e2gymQI9EQGuZ5dJuIh
RgCC2XYTIJ63txl2WgKT0AGJizp9AcIIkDKjtM8grlvZpYO2pulZGESqp2Mo8Z5g
RzH8Ewshu2S6PSyjNshZgrNmCTBf9zhA847VEqOT6OoKRkSyu9atYwwV5uEVWLYC
ESaKn5Ogk2OqJJK9ZKNePxQXkE87FS4pYddKb1TvWtfEFF3tZPIa5GzV6j/lO7Ft
4kDQ/dkkISfTwBS0dRgogcV1K68pf6Dgo1YBWlEKhYWvMg8nBCFwcuRlGmAl8KGM
unkzwJ4fe5wkyq0s2we9AlxKB8M/wAUxXJuzZ3/1y3KeAIz29JwqHr2yGPBuS2y1
pTvbX8MnMsTUshjGXXjAKa1G0RYqTKJ9ZA9WYf4elBynC4VSOJs=
=TjVX
-----END PGP SIGNATURE-----

--3whyfooflsfv7zxc--
