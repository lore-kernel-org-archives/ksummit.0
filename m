Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19398E34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 May 2018 02:10:32 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E75169F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 May 2018 02:10:31 +0000 (UTC)
Date: Fri, 11 May 2018 11:10:18 +0900
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180511021018.GE949@sirena.org.uk>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G6nVm6DDWH/FONJq"
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
Cc: "w@1wt.eu" <w@1wt.eu>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--G6nVm6DDWH/FONJq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2018 at 06:03:22PM +0200, Jiri Kosina wrote:
> On Wed, 9 May 2018, Daniel Vetter wrote:

> > Since Stephen merges all -fixes branches first, before merging all the
> > -next branches, he already generates that as part of linux-next. All
> > he'd need to do is push that intermediate state out to some
> > linux-fixes branch for consumption by test bots.

> What I do for my trees is that I actually merge the '-fixes' branch (that=
=20
> is scheduled to go to Linus in the 'current' cycle) into my for-next=20
> branch as well.

> This has the advantage of (a) getting all the coverage linux-next does (b=
)=20
> seeing any potential merge conflicts early

> Is this not feasible for other trees?

That's obviously best practice which I hope everyone who doesn't have a
separate fix branch in -next is doing but it means that the fixes branch
is not getting tested without the changes in your -next branch, and also
reduces the coverage separate to other people's -next branches.  This
means that there's room for implicit dependencies to slip through.

--G6nVm6DDWH/FONJq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlr0+4oACgkQJNaLcl1U
h9AgNgf/bAT4jhMrJUeKLkhow6ag+iOj8415TKB+/4p5WdMsxL3NTK1+I2+yyL6s
FQ4pCIgT0MY29Gkxj778/kCcY1pZVsqp2RlGKELU9GTNY2FpblWnXoUoocibcbwO
s/fQhbkpHpkz5vDTa86rHaD5KgtY5GhYh1SW0N5P6zxm2K0PtKcVW6Z+tJlx46mG
XaRSJIKtzOQmKpXqWMP0cBGQlk7k7tQdH0Twxhj8IjVTvoBSbY0eo/z+S27j2TyS
hWH/Y3FRGqOVcbvfFA2G0jPHBGRlsV9N0JESO8JU1baMMoExvwZobDHHg0Xq0KF+
1VN+C1lVyWhFJrMPdpJL7A67nOnI3w==
=4Usi
-----END PGP SIGNATURE-----

--G6nVm6DDWH/FONJq--
