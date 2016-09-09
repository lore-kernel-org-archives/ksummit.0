Return-Path: <broonie@sirena.org.uk>
Date: Fri, 9 Sep 2016 12:01:35 +0100
From: Mark Brown <broonie@kernel.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160909110135.GH27946@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
	<20160905110416.GV3950@sirena.org.uk>
	<87a8fm9dce.fsf@notabene.neil.brown.name>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73D3@USCULXMSG01.am.sony.com>
	<8737la81bk.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LZFKeWUZP29EKQNE"
Content-Disposition: inline
In-Reply-To: <8737la81bk.fsf@notabene.neil.brown.name>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Baolin.Wang@linaro.org,
	James Bottomley <James.Bottomley@HansenPartnership.com>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--LZFKeWUZP29EKQNE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 09, 2016 at 08:38:07AM +1000, NeilBrown wrote:

> There is a usb notifier which allows other drivers, such as power
> managers, to be told when a cable is attached to a USB port.  That is
> enough to get basic charger functionality working.  But not all phys
> send a notification and those that do, don't do it in a consistent way.
> There is also extcon, which some phys use to report a cable, but not
> all.  It provides more details of the cable, but cannot report anything
> about a current limit negotiated with a host.

Right, we did look at these early on but they're all working with
subsets of the functionality - for example physical presence isn't
enough to kick off high current charging.  Part of the thinking was to
create something which could aggregate the various bits of information
that individual subsystems are detecting to produce a coherent view.

> So you certainly can make this work with mainline (I've done it)
> without any extra infrastructure.

You can support low rate charging (and some systems will just do chunks
of this autonomously in the hardware with no OS intervention) but I'm
not clear how high rate is going to work.

> The current patchset isn't exactly adding a third way to do things, but
> it is adding stuff without cleaning up what is currently there.  This
> won't make the code less messy.

It wasn't clear that the messiness wasn't just because nothing is taking
a top level view of what's going on.

--LZFKeWUZP29EKQNE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX0paOAAoJECTWi3JdVIfQvmIH/28zBxMwYOaWRMMKLddyuL2G
MBEYywcIo1zgRhSMU7/lk6Y4oYa84fvjKiciO+eEU2AP434z+I4kHS/B2zhXVMkw
Dkle68gg81cwumOgLu4Ns1cVRsbvs6PzHEsOWm3KBT1SnHC+ISXj1iMtFe1V8oij
cYVYOflislnvPdeHc6OMKhrrJo+tUCkOz464gQ4az6U69ePD8ybPr485jkvwQ6D4
/3Du9LUlvv90gnZ33aXAY7N+USF7o1UilGQMKiw+XRXhAe5FlAqegObYp5rVin3D
R0tHFr0FBO7/woruOaWvedFI8sgN3NxIDL8YOJOg8hjsIPcGXORAO4DSOUDLk2g=
=wJGx
-----END PGP SIGNATURE-----

--LZFKeWUZP29EKQNE--
