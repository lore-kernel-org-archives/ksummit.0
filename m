Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5FE1486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 09:29:58 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 489BB15F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 09:29:58 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Fri, 15 Jul 2016 19:29:47 +1000
In-Reply-To: <20160715073650.GB39664@dtor-ws>
References: <20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<1468564337.2420.37.camel@HansenPartnership.com>
	<871t2vcrle.fsf@notabene.neil.brown.name>
	<20160715073650.GB39664@dtor-ws>
Message-ID: <87shvbb65w.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15 2016, Dmitry Torokhov wrote:

> On Fri, Jul 15, 2016 at 05:01:33PM +1000, NeilBrown wrote:
>> On Fri, Jul 15 2016, James Bottomley wrote:
>>=20
>> > On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
>> >> I do find quilt useful when backporting a series of patches so that I
>> >> can resolve the conflicts on each patch individually and move=20
>> >> backwards and forwards through the list of patches.  I don't think=20
>> >> git has an easy way to store a branch of patches-that-I-need-to-apply=
=20
>> >> and to then give me one at a time, removing them from the branch.  I=
=20
>> >> could use 'stgit' for that if necessary, though it is very tempting=20
>> >> to write something that is better integrated with git.
>> >
>> > Git cherry and git cherry-pick can do this.  Git cherry-pick can take a
>> > range of patches to apply, so you can select a bunch of patches to
>> > backport or otherwise move all at once.  Git cherry can tell you (to
>> > within an approximation, since it uses matching) what patches are
>> > common between two branches even if they have differing commit ids.
>> >
>> > The format is a bit frightening if you're not used to it, which is why
>> > stgit may be a better user experience, but you can do it with basic
>> > git.
>>=20
>> I wasn't aware of "git cherry".  It certainly could be useful, but based
>> on the man page it would get confused by modifications made to resolve
>> conflicts.
>> If "get cherry-pick" auto-added an "upstream HASHID" line to the comment=
, and
>
> "git cherry-pick -x <commit>" does this.

 From the man page
     This is done only for cherry picks without conflicts.
 making it fairly useless for my use-case.

 Thanks anyway,
 NeilBrown


>
>> if "git cherry" used that to understand that two commits where "the
>> same", then it would be a lot closer.
>
> That would be nice.
>
>>=20
>> Then a command, maybe "git cherry-pick" with no args, which did the
>> equivalent of:=20
>>   git cherry-pick `git cherry | head -n1`
>>=20
>> would almost work for "quilt push", and the "git rerere" thing (which I
>> almost understand) would mean that "git reset --hard HEAD^" would work
>> for "git pop" (or "git cherry-pop").
>>=20
>> I'd probably want some way to record the upstream and limit commits for
>> a particular session.  e.g.
>>    git cherry start XX YY
>>=20
>> then "git cherry-pick" and "git cherry-pop" would DoTheRightThing.
>> Maybe.
>>=20
>
> Thanks.
>
> --=20
> Dmitry

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXiK0MAAoJEDnsnt1WYoG536IP/iiPwrmDq1EUS7oQvhLQw1ZK
zAlNFzAUgZXqqWvfrIy9qcVKcyQGglM4EQBVf4wp4s7NMi4xGdxafXpdT6+RsQ0y
zpKLYYJHyBeN4S3xQWHujKDLAVVkp8GRi1XoAUUmnPraexJBqlTmBFxrjAyW6g0F
mwBJAQz+w7EvpqKf5RdibqurU/XhXHglqcG44s6AcwhvxuwevP4ztjJKLcbXdwpt
YI9XlO37Zk8mvOHaVTGGskbeS5fgxfW29mofpTzvs0RoXkzNVh4g6MqzdxyZkNBM
IBUfH2WHKPrkSyU1yAB1HtuhiZP6GFAb9PmMSRkCIMCSpQWVvQpkp+pDEJUZn1My
CGZoSlYe9QbgXbVU3UEcRFfkPDZyvp8y3uOBKmmgkj5GpkC8EvhtUoOWOolAyuRQ
srQau6y/h4/kz2DlCaakJ44H0V7XQRQnUcHgSCnVVmQ0KshTLG75VnrOTZUJ1A9h
IgtGi8a+kBdbm4phlJ1c5ROfWrHpOIsYLgMLX51iZLfVUW595qSWj0xSwUmDQmSt
Y4ExYmX+Uv6gPsKZ7C02fZ6Qpl1gRIehq/ptwtUcmZKrG6aZUOKT8JSGp7ezR0iJ
ml2SoSMyDEcA+fv1/jdb12f60D36iUQyGL7Ct80NrLvytLaem9/nL+AJrWT7oC4T
9O6BUiZPteD2xk43nZza
=Tqkn
-----END PGP SIGNATURE-----
--=-=-=--
