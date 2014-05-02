Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B5F764C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:45:33 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43E871FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:45:33 +0000 (UTC)
Message-ID: <1399063518.24523.43.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Dave Jones <davej@redhat.com>
Date: Fri, 02 May 2014 21:45:18 +0100
In-Reply-To: <20140502194935.GA9766@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com> <1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org> <20140502194935.GA9766@redhat.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-YbAeOuYIWIGPP7yr/+Rr"
Mime-Version: 1.0
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-YbAeOuYIWIGPP7yr/+Rr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2014-05-02 at 15:49 -0400, Dave Jones wrote:
> On Fri, May 02, 2014 at 03:33:14PM -0400, Theodore Ts'o wrote:
>  > There's been a huge focus on system calls in this discussion, and I
>  > suspect this is a bit of a red herring.  Taking a look at "git log
>  > arch/x86/syscalls/syscall_64.tbl" --- since all the world's is no
>  > longer a Vax, but rather an x86_64 :-P --- there really hasn't been
>  > that many new system calls lately.
>=20
> I may have a vested interest in syscalls :)
>=20
> The rate we're adding them has slowed down, but the rate at which we're
> finding bugs exposed through them has accelerated enormously over the
> last few years.
>=20
> To use just one example, on certain systems I'd love to be able to just
> turn off sys_perf_event_open given what a trainwreck of vulnerabilities i=
t's been
> over the last few years [comedy: it is actually a config option, but x86
> 'selects' it, so you'll have it and you'll like it].
> Thankfully at least the scarier parts of it are now hidden behind the
> paranoid sysctl.

I have considered proposing perf_event_paranoid=3D3 to disable it
completely for non-root.

>  > And if you look at things like renameat(2), the actual code savings by
>  > removing renameat(2) is pretty small, and IMHO, not worth the
>  > complexity and uncertainty that it would represent to application
>  > programmers of "does this system call exist or doesn't it".
>=20
> I think we've got two categories here.
>=20
> "variant" syscalls like renameat, which just offers enhancements over
> an existing syscall. Stuff that things like glibc tend to care about.
> This stuff is usually pretty boring, and not even worth considering for
> potentially disabling imo.
>=20
> And then we have "enable boatload of code" syscalls that are typically
> used by a few standalone apps/features. kexec, checkpointing, whatever
> db it was that cares about remap_file_pages, mempolicy, etc. etc.
>=20
> It's this "not used by every user" code that tends to scare me, because
> it's written with 1-2 well behaved bits of userspace in mind, which
> usually means "has so many unchecked corner cases it's not even funny"
[...]

Since Michael often seems to be the one testing those corner cases while
writing documentation, it seems like you're getting back to the old
issue of whether lack of documentation should be a blocker for adding
new system calls.

Ben.

--=20
Ben Hutchings
Lowery's Law:
             If it jams, force it. If it breaks, it needed replacing anyway=
.

--=-YbAeOuYIWIGPP7yr/+Rr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUAU2QD4+e/yOyVhhEJAQp89A//YX60seP/eR6h/omgxhtDFjg/0E2kfj6d
Aa7A/l7H9XQmzNO/Az5dmXxKTUKCWA5tC1rXtrQJlc/pNTLIue+a7YPvrFtkWEl3
x8c4LJU5Cl5iQv0TAPaRJkFD0I5OCwKM9snvPkzOdw7xsLVkrkPNHgjZdGMpdpCA
P5zTXSJ+W+DWXtxtBGZYLwhZZP71LI1Gae9Z0KDCAerXi2EFveMMWg6SLIs27b7Z
qKcQvUdXkCU8RKy8vUKLb7/yd7owmDec8aAS7l2VVAOb2TwgZiE6LVtElzwwtBEH
5l3Mcq6hL/fWesLYy2AXShy0h1T3DGyrLcxrWnmkBrxoMrWo5R+AoXRaU+KtrrTf
0hY3T5p+2Q7XvCUyHhuqzTxwiVODzaAvE1l3ufd2l8Lz3kSLZqLKXg3Mzpn5zSkH
CDu9qz1AO+2jzhfGP8u0XbNJwgONS7PuTGauUsLdTz8YTlBpJzKOZuIAZ4VXxN2A
BuE+qaD5wT4pDuGMzYH+5YK3aYf9Xy1wEY+DtFDfP9nmE1GlLEI7QlJ1gU27RUED
4AOs/UQJIJm8RxfdW4X/Bg+VQhY/MhjKjldF+78bEEoRVfxwKZBM4uGnMNNDsU97
y6wZeCJk46J8STMwBT59/Dcj/KZHqBEYL1fEwYxYiECODvMWxJaSh8HCj4QKJHa+
Blv9JUHJhME=
=0ORO
-----END PGP SIGNATURE-----

--=-YbAeOuYIWIGPP7yr/+Rr--
