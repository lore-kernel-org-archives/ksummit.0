Return-Path: <maxime.ripard@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72667F4B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:40:52 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id AD0CEA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:40:51 +0000 (UTC)
Date: Fri, 7 Sep 2018 10:40:39 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20180907084039.kqvnlamrfjll7zae@flea>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c736pzwykkc3lv57"
Content-Disposition: inline
In-Reply-To: <CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
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


--c736pzwykkc3lv57
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Kees,

On Thu, Sep 06, 2018 at 11:24:11AM -0700, Kees Cook wrote:
> On Wed, Sep 5, 2018 at 7:24 PM, Steven Rostedt <rostedt@goodmis.org> wrot=
e:
> > On Thu, 6 Sep 2018 09:41:58 +1000
> > Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >> On Wed, 5 Sep 2018 15:57:02 -0700 Kees Cook <keescook@chromium.org> wr=
ote:
> >> >
> >> > I'd like to discuss ways that we could deprecate APIs more sanely. At
> >> > present I've seen (and used) two approaches, fast and slow:
> >>
> >> As the one who often has the "fun" of coping with API changes, I would
> >> like to be involved in this discussion.
> >>
> >> My first point would be that (almost) every time someone has tried the
> >> "ultra fast" method (i.e. add new interface, convert everyone in the
> >> current kernel, remove the old interface all in one go) we have had new
> >> users of the old interface introduced at the same time.  (pain for the
> >> linux-next bunny :-()
> >
> > Can this be solved with a script on kernel.org? Or a zero-day bot that
> > checks new commits (and perhaps patches to LKML) that checks for
> > deprecated functions being added by new code (like strcpy) and the
> > author would then get a nasty email about adding deprecated interfaces.
> >
> > This would solve the issue of not everyone using the latest checkpatch,
> > as this wouldn't be a voluntary self-check. It would also quickly
> > educate developers on what code is not acceptable to be added.
>=20
> I think this boils down to how our development ecosystem works. Things
> are pretty "voluntary" right now: one could easily ignore zero-day or
> checkpatch all the time, and if a maintainer isn't checking these
> things, a patch will go in.

I have the feeling that the problem is a bit different than what
you're actually describing. It's not so much that we ignore (as in
voluntarily ignore) these new deprecated functions, but more that it's
quite easy to overlook them if you're not following closely the
current effort being done, especially when you don't really have a
security culture.

And then, there's some changes where the benefit is really not obvious
(kmalloc_array comes to my mind).

Polling actively some file isn't going to work, since well, we're all
too busy and lazy to actually do that, but maybe adding
warnings/errors to checkpatch would help, in a similar way than what's
being done for the msleep vs mdelay warning, with a link to the
documentation to explain why that is needed in the first place.

I think that this would help to address the discoverability of those
API changes.

Maxime

--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--c736pzwykkc3lv57
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE0VqZU19dR2zEVaqr0rTAlCFNr3QFAluSOYYACgkQ0rTAlCFN
r3SMFg//cnALf7TeyFv8xooXP0KUX3yZ8VgfA6X/3qGbkOcrsKL1fzBaW+X1CB5W
zmDVHb7jvtgg4pXYQSeSDlKu5dFCDNMVcqWCFqZAloRvZ73ja3hub0Duy0JKxsn5
1yndl8ZEoO1PQ8z6VFW25a+mXDNRwc2MX/RieCNepvE9C9GDpyMaJyoONzadqviV
SCPpWki551Qo72X1Rbe9pv+NQ6HofR2fKoNP8TEbyvIB2fpL6/aaJfHlNDo7SbHn
c9gZ6aCIzLOl+g8Q1KIbhq35dAIWJdu6tlMKv4uo7rZ2GyFWsNH7BYjbWTe4qR8K
RGLEROa1AAxK5NgTL3FfmGAwnztei1W+rxUvr0/As7TqYy0o1RBHmOMRO88hiUNI
xHJAVm8IClHAD0hDewl1X/6AH7dyxvN+oyKeI9Vcy90WUG4A4xRue43DpbWbKqZY
o603fmziTrekR6DSYAyExES9F73jHieqY7PQIE1rbJ3kVIzdkMFbTVPp/Hx2HVti
0q2v/KavW+trqlse93pT6RibwJ+v0X6CGX8B2ZIugRMGzRw5AKSaw+cnRUvxQcCE
/gW1a9kHeJYnqi/FpTdomy7qF7rhyOOYBgSYh066Mqsg5496NZ3tWODG8n3NKSHY
9kbx9H+YURZ4qiamNHMBIWFXv68jHSphLqb/vdp8yOOeSecDzT0=
=YQSE
-----END PGP SIGNATURE-----

--c736pzwykkc3lv57--
