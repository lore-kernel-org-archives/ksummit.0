Return-Path: <broonie@sirena.org.uk>
Date: Mon, 24 Oct 2016 17:41:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20161024164116.GB17252@sirena.org.uk>
References: <ECADFF3FD767C149AD96A924E7EA6EAF0ABA11DA@USCULXMSG01.am.sony.com>
	<20161022011925.6n3nhq23vbrly364@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rJwd6BRFiFCcLxzm"
Content-Disposition: inline
In-Reply-To: <20161022011925.6n3nhq23vbrly364@thunk.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"fuego@lists.linuxfoundation.org" <fuego@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Some ideas on open source testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--rJwd6BRFiFCcLxzm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 21, 2016 at 09:19:25PM -0400, Theodore Ts'o wrote:

> And so you might have alarge number of workflows:

> * Developers who want a fast smoke test after applying a patch or
>   patch set.
> * Developers who want to dig into a specific test failure, and who
>   want to be able to very quickly iterate over running a specific test
>   against a quick succession of test kernels.
> * Maintainers who want to run a much more comprehensive test suite
>   that might take hours to run.  * Release engineers who want some
>   kind of continuous integration test.

> A test runner framework which is good for one is very likely not going
> to be good for another.

That's true but there's also an awful lot that can be shared - for
example, the mechanics of booting on a given system are going to be the
same regardless of how the test was scheduled or how long it will run
for.  We should be looking for ways to share things as much as we can,
especially around the bits where the skills needed to implement align
less well with kernel skills.

[UI for reporting]
> I'm hoping to have an intern try to create something like that for
> gce-xfstests that would run on Google App Engine, over the next couple
> of months.  So maybe by next year I'll have something that we'll be
> able to show off.  We'll see....

This sort of UI thing seems like a prime example of an area where we
could really use some sharing - for example we've got some capacity to
run tests in kernelci but nobody to work on UI for doing anything useful
with the results.

> Maybe someday an ARM64 system will have the necessary hardware
> virtualization systems such that we can quickly test an ARM
> handset/embedded kernel using kvm on an ARM64 server / workstation.

Those systems are out there today, KVM works fine on arm64 providing
it's not been disabled - any of the server boards like Cavium or AMD
(both of which are orderable now) and a bunch of the embedded boards
like HiKey ought to be able to run it happily too.

> Maybe that would be a 90% solution for many file system and even
> device driver authors, assuming the necesary SOC IP blocks could be
> emulated by qemu.

qemu emulation isn't really that useful for driver testing, the quality
of the emulation with respect to the hardware is generally not super
hot.

--rJwd6BRFiFCcLxzm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYDjmrAAoJECTWi3JdVIfQcogIAIA4awanLw2q8jN2Tl0XwUI9
6K08s1GYo5g/X/CZ2zNkKamA8XNwPnhI1idgSs3MTz+Wb1kpf/YHozN+YFXsWVp4
6HhRXsqJacEulwFgGquO25fX2HVmmNIZI1HQDdYc9Z2jTupQQ1252wSpzh7tGX3g
wqS7XAEtcuYa8gFA7xS9ngYVRqTbw7jkt8GLYubhX5Iw2v0/t6Te10BTS79hPPhr
vHeMnx0MsaXUgQ4sZSVvmN1XjWvm/7jJ725smQn4m3bwBNII2brN3YC7ldK94Gnl
5c64IymgFAM1Z4UP/+Vj3BqRdY22PwTU2OgW9+e4SPDX0rFpisPImWGYX36FbKw=
=nEXl
-----END PGP SIGNATURE-----

--rJwd6BRFiFCcLxzm--
