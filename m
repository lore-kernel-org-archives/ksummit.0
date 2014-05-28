Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A21AF9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:39:19 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 41677201A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:39:19 +0000 (UTC)
Date: Wed, 28 May 2014 17:39:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140528163902.GA5099@sirena.org.uk>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
In-Reply-To: <CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 28, 2014 at 04:39:15PM +0200, Daniel Vetter wrote:

> My approach has been to insist on an in-patch revision log which gets
> included in the commit. And that for any changes and bugs spotted the
> reviewer/commenter must be acknowleged. See e.g.
> d978ef14456a38034f6c0e for a very nice example of that. But that's
> also a good example for no tag to acknowledge all the work that went
> into this review/patch, since I've done the final review myself and
> only put my sob onto the patch.

This does mean that the final changelogs that get included in the kernel
get very large and noisy and is relying on the submitters doing a good
job paying attention to review comments in the first place, recording
exactly what changed and so on.  They are sometimes useful but normally
I'm finding very little value in the changelogs in the first place,
generally it doesn't really matter what the problems were in any
previous versions.

--huq684BweRXVnRxX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJThhEcAAoJELSic+t+oim9fzwQAIRj67Af4d/sYdIRc51a+oIO
ycQNgUAxm3dqq4Ik76SdY9v3fUw204ztUTHSJ2Ju2KYFSBSkOZxYAhkS/UONkf93
esn8tvp66azXmcSLXQULrUoX9puTRvkTiki067E1NaeZhByYMhCwrmBarbXQOELP
PnzCCgPmwyomTauj2ssLJnwXcmP7G2AEOqenlWqLXekeAvt5ipEiOg8o04eaEcIf
+3tx26z82y/IiCrfnIwiJaL410GL+CkmieayawXHLzXi5SmK96Y04ip5721DcVDP
fETFV6vj6Hq13J3BeOt+YY7bEgju+Y+GIUwY8tY/YeCpdFisU/AiNVNFxfwEtUL7
EC46I4Kt1eoQ+FlmwNRC32RKrJkz8BNhQ3c3C8Rwa4trHK04CiP7wDgl0qnkWI09
twlLTHVlRTF6Wq2cSizNP3g14LtcbRTE/MfH+HuckjM5eACs5MVpq+IJdX1P6LBy
KzNOB22RotKr8mMYVSyTJD/OTvE7CYsIn8QtcukgWYzhlFt+eSo6n0eFk7FFmXKT
+stSiZmFE++Vc7AEpq7PEA7P7Kel8gteGxtcTTkdrJIKFyFIqIFJC3y6KNRDHeBR
HxOxRxXDs9ytICa54XA9iKd4duTCkUODWlSB5kNm6a6axyB4XeklNgervq5KKtSr
rNNfoQw2YnL46XA2v8V5
=aAQg
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--
