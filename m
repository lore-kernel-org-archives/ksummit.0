Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58DE6D70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 14:45:28 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE4F4716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 14:45:27 +0000 (UTC)
Date: Tue, 11 Sep 2018 17:45:23 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180911144523.GB5257@mtr-leonro.mtl.com>
References: <20180911011056.GA6958@localhost.localdomain>
	<CAFbkSA2spzRzya=ftfTxK3Wca=wnNwg7x2o+rM5s8s201=R3Rw@mail.gmail.com>
	<s5hr2i0z1j9.wl-tiwai@suse.de> <20180911142134.GB19866@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/WwmFnJnmDyWGHa4"
Content-Disposition: inline
In-Reply-To: <20180911142134.GB19866@kroah.com>
Cc: Justin Forbes <jforbes@redhat.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] CVE patches annotation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--/WwmFnJnmDyWGHa4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 11, 2018 at 04:21:34PM +0200, Greg KH wrote:
> On Tue, Sep 11, 2018 at 02:00:58PM +0200, Takashi Iwai wrote:
> > On Tue, 11 Sep 2018 13:57:09 +0200,
> > Justin Forbes wrote:
> > >
> > > On Mon, Sep 10, 2018 at 8:11 PM, Eduardo Valentin <edubezval@gmail.com> wrote:
> > > > Hello,
> > > >
> > > > I would like to open a discussion on improving the annotation
> > > > around CVE patches on the Linux kernel. Today, the kernel Documentation
> > > > mentions about CVE assignment and asks as a good practice to at least
> > > > mention the CVE  number in the patch [1]. But, is that enough?
> > > > Should the kernel have more info about what patches fixes a specific
> > > > CVE?
> > > >
> > > > Some of the challenges with current process:
> > > > - The info about of about what CVEs have been patched in a kernel is
> > > >   outside the kernel tree / git history.
> > > > - Today, some patches have the CVE info, and many others do not mention
> > > >   anything about CVE number.
> > > > - As mentioned in the kernel documentation [1], not always the CVE
> > > >   number is assigned when the patch(es) go into the kernel tree, so
> > > >   maybe this may require some post merge annotation?
> > >
> > > This is also sometimes relevant when you can fix and embargoed CVE
> > > before embargo lifts because the actual fix doesn't make it obvious
> > > that there is a security issue. Obfuscation is a somewhat useful tool
> > > when fixing security bugs sometimes.  I would rather get the patches
> > > in sooner than have them be properly annotated for the security fixes
> > > they really are.
> >
> > I hoped that git-notes could be used for such additional post-release
> > notes.  But it seems that it never flies well due to various
> > reasons...
>
> I do remember a tree somewhere on github that had a tracking between
> cves and kernel commits.  It was a pain to keep up to date, but the
> author was doing a good job for a number of months.
>
> Can't find it now...
>
> Anyway, the main problem here is that almost all the time, CVEs are
> assigned _after_ the patch is in the kernel tree.  And we can't go back
> in time to change a changelog entry.

Greg,

There is another huge problem - legal complications vs. desire to
upstream fix as fast as possible.

Most probably all HW vendors are tied with legal contracts to provide to
their customers fix to security breach in advance, before making it
publicly available.

It means that putting CVE in changelogs will require from such HW
vendors to delay ALL CVE patches, while current legal situation allows
them to fix without too much noise and inform all relevant parties in
parallel.

>
> Also, what about huge series of patches all to fix one CVE?  What would
> you put down for the single Meltdown commit?
>
> So this is up to those that wish to track these types of things, good
> luck!
>
> And yes, this is my "CVEs are a joke" feelings coming through here,
> sorry if you are someone who has to treat them as something important...
>
> greg k-h
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--/WwmFnJnmDyWGHa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBAgAGBQJbl9UDAAoJEORje4g2clin8xUQAM4KFHZL2YMZPahr3OqLFhKP
SlDwipvsAgxYUstJMHH2oYbYAQIUBlVjjvPslkZ3skVmP4axDHBeukKrpRw+spRb
3gsho4xVI2JIV0DFxKkQ/es3zLXSlAhFYKIB73ppzTPofP47IqPFLVKXDU101/O9
dnxYK+PXDJfw+4Bdj/tt+teB7qBb3swedFx2vw4f28Ug22nnAyBb4S+rFR8p8gt2
zugnUtsZ7C/LQwR72l0iadgphB2wl+k87W+Fgi6/qOzzoYD7xO33ND+veVPZ5796
CPNI9K7HLDaMog+T1Ijx3DOIh1Ndhbs1o0vW++eDnX8jinuAKmUgn1bDF6vLZgQx
gxrJ0HbY6u/SQH3Wu3/WBxZXOTJTwvbfNCKTjnfrdxjoZphmB52RhxZXIraVrt/R
lWaOEnFABSCqYjNbGcTOyjz5lWy6LI0VXWqlIqUpB1uXhWDRHXlGt4rKT0LKQNDM
RwPh2/TVqRhpYvukaLAKk6Sqd+M98MWGMZMM+mkFS8ZoyENcuuoZm60VvU8SB2eY
0Ija9MwWthcOpa1EGV1Kt44uKPAwbcL1xwnjJMv7oPGK2ZRav4dgjZDeR6EmyA54
4l08gtjTmTQOr0mARueCPdYbSGRntWatre2SXYhjcnNh6fKDI0wy9hyJwDNZCFsj
r3Wry4Ykc/NN9t2MGVjb
=orsY
-----END PGP SIGNATURE-----

--/WwmFnJnmDyWGHa4--
