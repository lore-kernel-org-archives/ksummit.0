Return-Path: <broonie@sirena.org.uk>
Date: Tue, 6 Sep 2016 01:35:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160906003532.GA3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EcSFpNr6Vcxykj4g"
Content-Disposition: inline
In-Reply-To: <9895277.d39OTXtlqC@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--EcSFpNr6Vcxykj4g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 05, 2016 at 05:22:59PM +0300, Laurent Pinchart wrote:
> On Monday 05 Sep 2016 10:03:27 Theodore Ts'o wrote:
> > On Mon, Sep 05, 2016 at 12:11:05PM +0100, Mark Brown wrote:

> > One of the problems is I can't test the Android common tree, because I
> > don't have access to hardware that I can boot on that tree.  (To be
> > honest, I'm not even sure what hardware would boot on it.)  And thanks

I'd be rather suprised if it doesn't boot on x86 TBH - if it doesn't I'd
imagine Google would fix it.  If you have a burning desire to run it on
an ARM system (and who wouldn't!) then one of the qemu platforms or
something like the BeagleBone Black or Cubietruck will work well
upstream (CubieTruck should be especially good for filesystem stuff due
to the SATA interface).  It's just a normal tree, it should work on
anything you're already working with.

> > This is why upstream-first is so darned important.  And why sloppy
> > patches that break other architectures are a really bad idea, even if
> > they are for a vendor-only BSP kernel....

You're preaching to the converted here but just telling everyone over
and over again that they're doing a terrible job isn't helping anything.
It's not offering any sort of constructive suggestion for how to improve
the situation that engages with the reality on the ground.

> > Maybe there will be some hope if some of the features from ARM64
> > server can infect the SOC community --- Jon Masters really had the
> > right idea when he insisted on one kernel to boot all ARM64 kernels,
> > with all changes pushed upstream, and not hacky, out-of-tree patches
> > which only work for one SOC vendor.

> I don't think that's a fair comparison. For server platforms end-users of=
 the=20
> hardware will pick a distribution and roll it out on the machines, so har=
dware=20
> vendors have a strong incentive to play by our rules. Phones are complete=
ly=20

The other big difference with server on ARM is that it's starting from
scratch with no real world to worry about on this architecture - the
server vendors only really care about the distros who happen to have
policies we like.  In turn the reason the distros are able to do that is
that there is no real deployed base of hardware and software for them to
target.

There's also the fact that for platforms that are upstream (and anyone
doing a good job downstream) we've been doing the single kernel image
thing for literally years - the way arm64 did single system image was
just to inherit all the work that had already been done on 32 bit ARM.
This is mainly about upstreaming especially in the mobile space where a
combination of technical issues and the construction of the market make
things challenging for everyone (the x86 mobile systems I've seen have
had just the same issues here).

> different in that the device vendor doesn't care about end-users being ab=
le to=20
> pick what software in general and kernel in particular they want to insta=
ll on=20
> the device. Worse than that, many vendors go through hoops and loops to m=
ake=20
> that impossible. Unless customers start boycotting devices that are not=
=20
> upstream-friendly - and I don't think anyone expects this to happen - we'=
ll=20
> need to give SoC vendors a different incentive.

You can see some of those incentives operating if you look at the
systems that do do better upstream - for the most part the platforms
doing best upstream are those that address markets where the customers
care about it like the general market where there's no expectation of
strong support from the chip vendor.

--EcSFpNr6Vcxykj4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXzg9RAAoJECTWi3JdVIfQyRMH/2IsikVpCPr081kKMadxv0ga
Ry+50qr314l/WcPlEa4EBfDo+K31BK9ujJPOjnpe514XE8HgGNmCXrhgLsFybmp3
dJ4zjF94qOhExWZVyT/b1JTjkUYCAqPru0CraZAlFfpFVnTvXPlZBzenGdFFO/ny
mMTQE56GE4pYiXGEk9NF2Zz5cJFv9kF46hACU6Tgdsc9UIV6rnTYyqFOXF53CfHM
JQ5kdIuoAz6s68S7tGBkqIzfSkbYVmSSZRea9/AEFrXL8yUBaB2LhiXFO1VJW/fK
qiKm3nzpIKZaC15OLJ4bPoZ8utn2j3iLzu1aqKJ9zSuKcZW+Po7emQEnDj0CNmE=
=1il2
-----END PGP SIGNATURE-----

--EcSFpNr6Vcxykj4g--
