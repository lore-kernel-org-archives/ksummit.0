Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A2C63BCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:36:10 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27E5132
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:36:10 +0000 (UTC)
Date: Fri, 10 Jul 2015 01:35:59 +0100
From: Mark Brown <broonie@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150710003559.GT11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0oUtF0PMfLAfIhqm"
Content-Disposition: inline
In-Reply-To: <1436481109.3324.219.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--0oUtF0PMfLAfIhqm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 09, 2015 at 11:31:49PM +0100, David Woodhouse wrote:
> On Thu, 2015-07-09 at 12:37 -0700, Darren Hart wrote:

> > I spend a highly disproportionate amount of my time, relative to measur=
able
> > quality impact to the kernel, going over the nuances of submitting patc=
hes.

> > 1) Must have a complete commit message
> > 2) DCO goes above the ---
> > 3) Include a patch changelog, do so below ---
> > 4) Cc maintainers :-)
> > 5) Checkpatch... checkpatch... checkpatch...
> > 6) Compiler warnings
> > 7) CodingStyle :-)
> > 8) Use ascii or utf8 character encodings

As far as I can tell for most of the bits of this that are tooling and
create practical problems git send-email will avoid most of the issue
and people do seem to have mostly adopted that, but perhaps that's a
result of me seeing a different submitter base to you.  I very rarely
see anything that's serious enough to cause a practical problem except
for CC issues that doesn't also come along with other substantial code
quality problems.

Patch changelogs are the biggest thing I can see there that feels like a
tooling problem to me since git send-email doesn't do anything at all,
though it's not an issue I'm personally that concerned about (I do
appreciate having them but I can often barely remember what issues I
raised in the first place).

> The "content" in question is a proposed change to the code base. Such a
> change requires a coherent commit message which will make sense when we
> look back at this commit in the future. We will need to understand what
> was happening and why, in order to fix it or tweak it for new
> circumstances.

> Doing that is *not* a peculiarity of the Linux 'process'. It is basic
> engineering discipline, and it is *part* of the work. Just like the
> task of breaking a change down into incremental, bisectable commits =E2=
=80=94
> which I'm surprised wasn't in your list.

Judging by the history of many of the proprietary codebases I've had
cause to look at the fact that these things are good engineering
practice does not mean they're not unusual.  :/

I have to say that I'm willing to cut people quite a large amount of
slack on changelogs if I can understand the code and they obviously
don't speak English that well, though in cases where I do that if I feel
it's needed I will tend to fix up the changelog myself.  It's not that
common that it's needed but I do feel it's an effort worth making.

> Likewise, compiler warnings. If your developers are actually
> *submitting* code with unresolved compiler warnings, again there's not
> a lot we can do to help them or you. Apart from confiscating their
> keyboard.

There's some that this is the case for but there's enough things that
depend on configs or compiler versions that it's perfectly plausible
that things build fine for the submitter in reasonable testing.

> Josh suggests that we should provide a service that people could push
> code to and 'get automated feedback on what needs fixing'... but isn't
> that what checkpatch was for? OK, a local tool can't cross-compile it
> for you on every platform we support, but it can do a lot of stuff
> short of that.

aiaiai is pretty reasonable for going a step beyond here, I really do
wish it played nicely with ccache though.

> I do like the idea of a 'test' mailing list which receives patches and
> checks them for corruption though.

That would help a lot of people.

--0oUtF0PMfLAfIhqm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnxNvAAoJECTWi3JdVIfQZ6AH/0+MUHobtPhRrFGBaqY5vAst
U2wOAq+A2qgD9KI7uFHArowswgl7rHaUkAUBbAmtP+unGuMRy0sowNoMntAu8XQf
OzSpWLOhw65ryAAv9J3blrEFee7k3U+U5M3VKkVWOZlCadnTM6pbQUC6OYjVwDld
17IY9sRQ68GNn/qlj5+MlaD7Mqul9DheZ+j2r0BxwQicYiXuJUs7oHAVO9P3zACZ
GCw5Wph/ed0Q7UeGtpSGIOUtsx+MYRcGAHcEl0v1x6qNv0hWt3+aWnZdOo9S5FYi
saZ2JCQtTgdUr6PFnr0YYd2U8kuitUTGxq01y0zDCLqEc/cH0OrZ35Uf3sDeMpY=
=afvP
-----END PGP SIGNATURE-----

--0oUtF0PMfLAfIhqm--
