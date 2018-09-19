Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 420F0CBB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 00:08:31 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7FCD7EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 00:08:30 +0000 (UTC)
Date: Tue, 18 Sep 2018 17:08:25 -0700
From: Mark Brown <broonie@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20180919000825.GZ2471@sirena.org.uk>
References: <20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com> <20180918161200.GL2471@sirena.org.uk>
	<s5ha7oev9q6.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+vcRm3WFmV0Q/ShD"
Content-Disposition: inline
In-Reply-To: <s5ha7oev9q6.wl-tiwai@suse.de>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--+vcRm3WFmV0Q/ShD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 18, 2018 at 10:20:17PM +0200, Takashi Iwai wrote:
> Mark Brown wrote:

> > I used to deal with this by using topic branches heavily and making my
> > -next be an automated merge of those branches, if something went badly I
> > could just throw away the branch.  I stopped for a while because Linus
> > didn't like the number of branches I was creating, though it wasn't a
> > problem with the approach in general.

> I think that the topic branch approach would work well if you merge
> topic branches back to the main branch more often.  That is, each
> topic branch lives only for a relatively short time (e.g. a few
> weeks), and not merging the whole branches in a shot at the end of the
> development cycle.

That approach tends to lead to more merges (as you end up with more of
the small topic branches) and if you don't have any commits actually on
the trunk then the long series of merges is also seen as an antipattern
by some.

> Basically the merge to the main branch "fixates" the developments of
> the given topic, hence other people can start working on the commits
> safely.  Meanwhile the not-yet-merged branches can be still thrown
> away if they are really bad.

For less widely used stuff it can be unfortunately difficult to get the
confidence that things are done :(

--+vcRm3WFmV0Q/ShD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluhk3YACgkQJNaLcl1U
h9DOYgf/ShRSnu+1SRBY1D2kn8eGPQ6kp3e5DCatb0N/QS6hgzDb23tawTQzlFb0
S3VAQGKnCl6D4l2m2KxXtw8AGU8X6jSK7hnCWeP1v4q5uhKbzmxU6PDQm+qkZNhx
4BRvFGojJKlf5lrpWyZ8YISfcUgQYWlsqWXWi2Wu4PQ/ZfrEeaZFXTETOFtcxHS2
RcLHJAbL6kPHqjd0lN+vma9yKlTMTq/L4p1TsIZ1bxaBcHH2yGZr2MKRLz3ofZJU
9SEjcXpGvfPsNcdaT25AudtbtteaFWJiibADedNDHYBuOSoNpYXlpDkQB52D0Won
TIxMxT6DAXdld1xDrMUoD1/qEZT/Xw==
=jKRq
-----END PGP SIGNATURE-----

--+vcRm3WFmV0Q/ShD--
