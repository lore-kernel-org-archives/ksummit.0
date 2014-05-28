Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6BB9BA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 01:11:00 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6FD05201CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 01:10:59 +0000 (UTC)
Date: Wed, 28 May 2014 11:10:49 +1000
From: NeilBrown <neilb@suse.de>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140528111049.0c750ed0@notabene.brown>
In-Reply-To: <alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/k/_JrCXeixeAJ2QYc1U4/ck";
	protocol="application/pgp-signature"
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
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

--Sig_/k/_JrCXeixeAJ2QYc1U4/ck
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 27 May 2014 23:22:16 +0200 (CEST) Jiri Kosina <jkosina@suse.cz> wro=
te:

> On Wed, 28 May 2014, James Bottomley wrote:
>=20
> > > With my distro person hat on, I'd really like to call at least for pu=
shing=20
> > > driver maintainers much harder to be a lot more verbose in their=20
> > > changelogs (if splitting the commits into smaller chunks is not an=20
> > > option). Without that, trying to find out what change might potential=
ly=20
> > > cause what kind of behavior turns into a nightmare.
> > >=20
> > > For an example picked up in a completely in random, look at this one
> > >=20
> > > 	commit 1ba981fd3ad1f91b8bb205ce6aac6aad45f2fa7a
> > > 	Author: James Smart <james.smart@emulex.com>
> > > 	Date:   Thu Feb 20 09:56:45 2014 -0500
> > >=20
> > > 	    [SCSI] lpfc 8.3.45: Incorporated support of a low-latency io path
> >=20
> > Well, I don't disagree, but getting driver writers to supply changelogs
> > is hard. =20
>=20
> I know. But there just a one single force on planet Earth that can make=20
> this happen, and that's maintainer saying "No, you have to do better".
>=20
> > For the ones I understand, I've rewritten (or even composed) quite a fe=
w=20
> > change logs myself because I often don't get anything usable back when =
I=20
> > request a rewrite.
>=20
> Are you implying that Linux is still not in a position to force HW vendor=
=20
> companies to rather invest 30 man-minutes in order to have a proper=20
> changelog and driver merged in Linus' tree compared to receiving bad=20
> public press when they are being rejected (especially for such negligible=
=20
> reason as changelog text)?

Even if they spend the 30 minutes, will the changelog be of any value?
Writing a good changelog is quite an art, and we don't even have something
like checkpatch.pl to highlight to worst offenders.

I came across a patch the other day which had quite a reasonable changelog
comment which suggested the patch was a clean-up - and quite a sensible one.
But the patch was also tagged for -stable, and had a couple of Cc:s which
made me think it was probably a bug-fix and the Cc: people had reported the
bug.  But there was no hint in the changelog what the bug might have been...

I quite often write or re-write changelogs for people who seem unable or
unwilling or unmotivated to do a better job.  I could just keep saying "no"
until they get it right, but when it is a real bugfix or a useful improveme=
nt
I want the  patch and the cost/benefit of pushing for a better changelog
rises sharply.

So I agree that I would love better changelogs and I think it is an importa=
nt
part of the maintainer role to keep changelog quality high just as much as
keeping code quality high.  But every maintainer is in a different situation
and there is a limit to what we can expect of other maintainers.

It is nonetheless good to regularly remind each other that changelog quality
is really important.

Thanks,
NeilBrown


>=20
> > My intolerance for bad changelogs is high in shared code, but for singl=
e=20
> > vendor drivers it's often hard just to get the code and keep it in sync=
,=20
> > so I have a lot lower tolerance.
>=20
> Unfortunately this doesn't make much of a difference for distro vendors=20
> when chasing unknown bugs.
>=20
> Thanks,
>=20


--Sig_/k/_JrCXeixeAJ2QYc1U4/ck
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU4U3mTnsnt1WYoG5AQIOCQ//Yx1wvIaS9qhnj8DZcdXGaN0YAh3MsT9f
kwfdyRFOdORxfFrTQKm4NMJqQxOKo1EK5sweUSCsXBZWMnJFJGSC1BdkX/HcXWyY
F0zgrHXPlIE4Pbej4e3A8H6+9MeNvgWemAMexV5MhXNhgbrgBijYayGeCKmDOtXC
bqaEX7GAM+aXFvMazRdYc+jBgDvum1fdP00m83bG++KipLgSv3PvH58vhFxSNU4D
3pXM2blm6RyGVezJ7iURIfeEQk2d+r/strPkW+rstazo3uagplCqA9oad3qYOsqA
hiHIACceJ8RXf6njB8GmLZRF1XPpe9cyUX39e899PdtlwBovJK15LLFXOBKE6jka
dvhPcax12tbAQ8jNlFqXajZUDWdvtefHAY87n4wRPVv5EIvs1KAVDScn6VgoIGAs
1t7rvpyQ5NTfJ3C9JbyUncllpHO8m+ar8Fx6c7Li1/7QqWCPbUqUHqDCWtfqr9l/
X2T7FZdRgPPv2uxLc8W0uMWToiTDB8cz1v3H/h9OgmZM3CeJgm1QdKSoPX8CdZud
4xHxJv6BZFVKGDx/8KIt5DdXlRM4lvI0kLpz0KT4kowEioIXyM26LTfsH6Km+Il9
JCf0Rcen/J/8RPpE3WtYAgPFBQtNMiDkxc91JijXfWuMr+Oc1AeyfOtbYBGEN2N7
pX6i4xXUXYU=
=mZ09
-----END PGP SIGNATURE-----

--Sig_/k/_JrCXeixeAJ2QYc1U4/ck--
