Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3E514942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 19:32:03 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6312201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 19:32:02 +0000 (UTC)
Date: Tue, 13 May 2014 20:31:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140513193146.GR12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<6686293.8G8KACfUS3@wuerfel> <20140513121148.GI12304@sirena.org.uk>
	<4341089.iLfxP0nJG8@wuerfel>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CHuL9rjfPiigWdCj"
Content-Disposition: inline
In-Reply-To: <4341089.iLfxP0nJG8@wuerfel>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--CHuL9rjfPiigWdCj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 13, 2014 at 03:08:29PM +0200, Arnd Bergmann wrote:
> On Tuesday 13 May 2014 13:11:48 Mark Brown wrote:

> > There's also the possibility that the driver is going to have to figure
> > out at runtime if it's on a system with active ACPI or a system with
> > passsive ACPI, though I expect we can just do something like check what
> > properties are there for that assuming people don't end up doing
> > mix'n'match type things.  People are interested in ACPI for embedded
> > cases outside of x86 to a large extent so that they don't have to deal
> > with two different firmware interfaces if they also work on the server
> > cases.

> To be clear, I was only talking about embedded x86 above, there is
> no reason to introduce ACPI on any new architecture really.

> While we will likely get ACPI on ARM64 in the future, I definitely don't
> want to have two incompatible ACPI implementations, especially for the
> same chip. While AMD recently announced they are also going after
> embedded markets with their ARM64 products, they should either
> just use DT in that case, or they should use the same firmware they
> have on their servers.

I'd heard mutterings like that from elsewhere (I don't know anything
about AMD's thoughts), and of course there's nothing stopping ARM people
just picking up the out of tree ACPI stuff and using that if they decide
they want to work that way.

In any case that was more a comment about it being an area of broader
interest than just some future Intel stuff - my main concern is that
we've already got upstream embedded ACPI stuff for x86 which doesn't
look *particularly* like what we do for DT but more like what seems
idiomatic for ACPI (some of the Haswell and Baytrail laptops have
embedded style audio subsystems) and as far as I am aware those systems
are in the active ACPI model rather than a passive ACPI model.

--CHuL9rjfPiigWdCj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcnMfAAoJELSic+t+oim9dkcQAJbkBEBqPOA4fTLKwj+OrE7U
LUOQt0GI2HSwNeoNTNa16H5tJJMXNHTAvZ7vrHBcq8zgbhRgUR7SpFHeaktX1equ
jXVJ07YPEa2LLk2EkAqY61FW8yL+Wiun8eYlBEp28MbUXeNBiQNI3cDf5M8repwt
saGeai7XjfYGvazskEeNewNwFMGdIv9dF3nXT0cEYF0PXue8l54PMOInarEn7zVq
zWK4CiPeWBnO10u7XwC8EAZ1+ytNs3SG4SHLTGvXI6/iiEOPOLf7Svesatfqrbzz
55aF50kf6a1R7sn2CxEEZ6rsMkQ8fj/A2BYcUGpp3yi3O9QfaMgoEso563d80yJc
8J17ysCfSHrl/ZO4+QW95zjLKVbqcbn47p54p0EO4A59uKDWu9Wig8W00FIaLLjV
79mL8o3B0UjmiwkvlyjeooHcEnvMPvulhrIotGAzOQ+Uc/zFr0E1ClFC/S5vTuI5
TOISjQj0ZK4bueJvHEMeBR2Ua2sFbBLUtVBHQchvnNNSgoHGCe10u8o/xqsbt5ox
yxEC9/H0sL74kQ43kdd4a7KCgnZraOSSplBvTTvFQKURqP+ZPUgXV35ZZklXc/ef
Z+UoFuHza0nT9d0iriFl+e60xDvy7ElirlzM8du50t8CV/UdY/d3EvwOjqydaqrI
CetwuT9D8kP0Owo+/Mns
=0X+n
-----END PGP SIGNATURE-----

--CHuL9rjfPiigWdCj--
