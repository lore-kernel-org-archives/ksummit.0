Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 743287FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 11:19:33 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D748F1F9F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 11:19:32 +0000 (UTC)
Date: Sat, 24 May 2014 13:19:28 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140524111927.GA3455@katana>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> A lot of the problems accepting patches into the kernel stem from trying
> to get them reviewed

So true.

> I'm really looking for evidence of actually having read (and
> understood) the patch, so the best review usually comes with a
> sequence of comments, questions and minor nits and a reviewed-by at
> the end.

Yes, this is good (and as much needed as describing the tests done for a
patch by the submitter). Still, trust is an issue here. Even with
comments you described above, if it is from a person you don't know the
review needs to be reviewed. Depending on the reviewer that might take
more time than to do the review on your own. Which pays off if the
person stays. If not, well, then I still see this as something a
maintainer should do, simply to educate people. It just might not help
getting patches reviewed faster.

> review pool, so we need more than the Reviewed-by: tag.  It has been
> suggested that people who submit patches should also be required to
> review patches from other people

Eeks. Enforced reviews are likely to be sloppy IMO. And sloppy reviews
can easily cause more work, just like sloppy documentation.

> conferences and development sprints which do hack time.  Another
> possibility is to publish a subsystem to review list (similar to the
> to do list idea). This at least shows submitters why their patch
> series is languishing and could serve as a call to arms if it gets too
> long.

For those using patchwork, such lists are on the web and referenced in
MAINTAINERS. Submitters don't use it much (yet), according to my
experiences.

The thing I'd like to see way more in the Linux ecosystem:

Paid reviewers/maintainers (selected people, no hiring offers). The
number of developers increases faster than the number of quality
keepers. So, the latter should be given the chance to focus on it, if
they want to.

   Wolfram


--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTgIA/AAoJEBQN5MwUoCm25toP/RxlxxxN9+U8LWE93gldCdFc
dMt5ATg09agczjONhclIo4rHXcIwZAh8Nb1LVtem5IrD32N+CbkMCvhxtzJnTk7N
STam8iths0cefFR8MuVYGiBP+sxwz9wCrVgsxyL8/OwgK3YezdxMfPi3PK+oa40P
3MlNF7JNbx6DEiUEtj1mlO6Qzw/fBWBa1Jx3XE2G67wZp1FlXWrYZrDhuWMnDgn3
w076zDyWTZIGJyF/Sng9AYbRreQL8Dr4LuEtCujikcWmx+bpJVkf+Ejfd5IT/Ghe
bwIqcv8Jw4cgGQSI9BKofR5ZshIv074GjEkjSNyDDqhit8g1/xDuuYFEOapIFsNH
5Bv8iqdUGfsN5V3yPVd/Ztxp8A2ZXKtrnENWFmsaPeT/wGgx71Fu4GzK5+l1rvPr
YTakDBN2Q4aJ7zyMaLeegRwkoo7M/6JxGZwNF1dQT2Uul/5DtMZGjlR3CE47tecy
NedkWQsPHX4uBfL9otfDrrw9unng+FTnWDN7ofJMOUzb0CZBNMnrC/hpjRpEJYjV
so4ETVdu5iAHMpv1Wz0qCe2wXrFsOEpJHrsolezYEvbyPMAQh4/wb6/drTdwmnQp
PFiufvr/k1C+63ZqT3BzWX0ZbDTOog4j09dv/lQERiwj/kwflWaojJohE24ybYWf
7g8Ey17ZivjRZ7i9mhDc
=gXob
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--
