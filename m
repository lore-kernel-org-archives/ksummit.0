Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C484481
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 04:04:51 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D70C914D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 04:04:50 +0000 (UTC)
Date: Fri, 14 Jul 2017 07:04:47 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20170714040447.GT1528@mtr-leonro.local>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oekZONiSGfIUbonp"
Content-Disposition: inline
In-Reply-To: <20170630062717.534b06e9@canb.auug.org.au>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--oekZONiSGfIUbonp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 30, 2017 at 06:27:17AM +1000, Stephen Rothwell wrote:
> Hi Kees,
>
> On Thu, 29 Jun 2017 13:16:40 -0700 Kees Cook <keescook@chromium.org> wrote:
> >
> > [1] If the solution for this is to merge other -next trees into mine,
> > I guess I can do that, though it can be very messy if any of them are
> > forced to make their commits unstable. It also creates headaches,
> > AIUI, for sfr if my tree suddenly gains a bunch of other trees so it's
> > not clear where something came from.
>
> I don't have a problem with trees in linux-next sharing *commits* - I
> have problems when they share *patches* that are different commits
> (that affect files that get changed in other commits).

Do we have any sane way to overcome this limitation?

I tried to add my tree [1] to participate in linux-next. My tree
includes my submission queue and important patches posted to the mailing list
to the RDMA subsystem.

The absence of ability to add parallel tree with same commits doesn't allow us
effectively test the RDMA patches.

The reasons to it are combination of mostly two factors: my tree is not
official one [2] (all patches in my tree are not officially final) and very
sporadic update very close and/or during merge window [3].

In this cycle, we missed merge window [4] because lack of ready for pull tree [5].

Thanks

[1] https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/
[2] https://git.kernel.org/cgit/linux/kernel/git/dledford/rdma.git/
[3] http://marc.info/?l=linux-next&m=149999488214297&w=2
[4] http://marc.info/?l=linux-rdma&m=149980130008834&w=2
[5] http://marc.info/?l=linux-rdma&m=149987945120683&w=2

--oekZONiSGfIUbonp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAlloQt4ACgkQ5GN7iDZy
WKfa1A/8CHHPdtqs2eR97zQa0M0vEryYfCPnFzYQzOg7Eh/gNmcJCaDabd+W2AOR
ez3KnatSLBNKa7i2ff+pcN6OH+SKeP8y7CalhbNAzUjCTRXI/T+SuQD5nLChsE4P
w//2coC+zg68XqBbYpnq0oQmy9yXyjg+86J1jRxohQz7IowRrWGjcwK6gzp4HCYk
2JXwSwgGHqQ9OC/SvpgJqYDd4cVz2zK8HdMRuJDdUJ76m2FGsHC2ct8e8vypJ+wq
3dC8fADyKG5SnQ3R2asAH8Kmkmb4LjZEdqnAE/7sURxh0Jry3Cqy+GGSmotCYakm
6PhUkL6RBj6UnyUnlbaoF4QQjaCqblnrfb9pgujZYMm7gsQnOcnP8WPHdbkBDV6O
xn+IsggtgTpUIoE6C2w5yIXErGKj1j4rpQVAylPC08y/gMhVKfAohioSEM/DAVgT
kuJ6w285aqABQgjVOh+zTjAHa8IvuLL0gW5sOM/K6/VeCDGIaqEyrEbBHWX/ubzw
+tu0rmuKx9ZKf4cpozRglgEH0RcwBkPQkXwhSv9t7Tb5xRPZW3AuG7tT9CqRi+Nb
2NXeWH/tK34TtKhKeiJOH+nrR8HN/KXhL3LXbflodVOiJAQ5hcXhc+4XGFSFmsBC
RzA3iwPKxI8J3noL6SBtq6/cd4wK5m8x1bc8GQQgqVzesXSwl/4=
=aAjw
-----END PGP SIGNATURE-----

--oekZONiSGfIUbonp--
