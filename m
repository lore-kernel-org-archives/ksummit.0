Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C7037711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 14:24:33 +0000 (UTC)
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9927D201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 14:24:32 +0000 (UTC)
Received: by mail-ee0-f48.google.com with SMTP id e49so716647eek.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 07:24:31 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Thu, 15 May 2014 16:24:24 +0200
From: Levente Kurusa <levex@linux.com>
To: Teodora Baluta <teobaluta@gmail.com>
Message-ID: <20140515142424.GB2599@linux.com>
References: <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<20140513174350.GB3538@linux.com>
	<7FE219EA-6E0E-4623-B7C0-3FDFD4EEFA92@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline
In-Reply-To: <7FE219EA-6E0E-4623-B7C0-3FDFD4EEFA92@gmail.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>, Kernel Summit Discussion List
	<ksummit-discuss@lists.linuxfoundation.org>,
	Sarah A Sharp <sarah@minilop.net>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

(woo, your mail user agent messed up! :( )
On Tue, May 13, 2014 at 09:14:21PM +0300, Teodora Baluta wrote:
>=20
> On May 13, 2014, at 20:43, Levente Kurusa <levex@linux.com> wrote:
>=20
> Hi,
>=20
> > On Tue, May 13, 2014 at 12:07:43PM -0400, Theodore Ts'o wrote:
> > I'll note this discussion has started mutating to a more general "how
> > do we get more useful bug reports in front of developers", which I
> > think is a good thing.
> >=20
> > However, I'm still not sure how useful it would be to have a tech
> > topic (or a core topic) dedicated to the matter, because we've had
> > discussions about and at the end of the day, what's probably really
> > necessary is to have someone, or a small team, dedicated all or most
> > of their time to:
> >=20
> > a) improving kerneloops.org
> > b) finding interesting patterns in the bulk reported data, and then
> > forwarding that on to developers
> > c) finding ways of automating (b)
>=20
> * One possible way of improving kerneloops is that once an oops happens
>  more than X times then it would be automatically sent to the
>  maintainer.
>=20
> * Adding some more stats specifically for the RCs, so we can get more
>  information during the RC phase of a release.
>  We have essentially the same for Stable and Longterm kernels.
>=20
> (By the way, am I the only receiving frequent 503 Service Unavailable
> errors from the oops.kernel.org site?)
>=20
> I also have the same error code. So another possible subject is adding th=
e infrastructure/web service for sending oops messages. As I understood for=
 Konstantin, the current API is a bit tricky to use so maybe adding a simpl=
e REST API could simplify the pushing process.

I have no idea how the oops.kernel.org API works, sadly. Can you please give
some insight (for instance, where the oops is parsed. in ABRT and such
or in the server?)

>=20
> Maybe one of the problems is not having where to send these bugs easily w=
ith an automated process.=20
>=20
> I am doing an app now so how can I make it worth the time? Should I just =
forget about bugzilla and just implement a server that collects these repor=
ts?
>=20
> If it helps I can just post the link to the repository to the Android app=
 to get an idea how it looks (still in development).
> >=20
> > QR encoded oops might be a means towards that end, but there might be
> > other things that could be done as well.
> >=20
> > If someone were to *do* all of this work, then reporting on it and
> > then asking for suggestions about how this service could be improved,
> > might make a great tech topic.
> >=20
> > But in the absence of that, can folks suggest ways that this doesn't
> > turn into a "I know, let's put a bell on the cat!" sort of discussion
> > that doesn't lead to anything useful?
>=20
>=20
> Here are a few topics I think are worth discussing at the summit with
> regards to this topic:
>=20
> * How to disseminate bug reports?
>   Have comaintainers looking at bugzilla and oops.kernel.org?
>  For some time now, I have been trying to do some cleanup, i.e.
>  fix some bugs there, but since I lack the capabilities to close bugs
>  it still remains to others. I would, though, be very pleased to
>  clean up bugzilla, if I got the capabilities.
>=20
> * QR code in general.
>   Is it actually worth it? I mean as it currently stands the QR code
>  takes quite a bit of the screen and takes place over some (possibly
>  valuable) information. This is because it is currently in the
>  topleft corner. There was a suggestion to move it to the center, but
>  I think that would as well take some information away from someone
>  who wants to find out the information themselves.
>=20
>   If we accept the QR encoding stuff to the kernel, then that will
>  most likely mean that kerneloops will receive more (probably
>  valuable) information. I think that this is a good thing, since as
>  Greg mentioned we will better now which subsystems struggle. Maybe
>  adding a bugzilla entry as well seems reasonable and maybe if we do
>  clean up bugzilla, maintainers will eventually look at it and the
>  bugzilla thing will become viable.
>=20
>   Automatically adding a bugzilla might make sense as well once a
>  certain oops hits the 'X-times-happenned' level. That way
>  maintainers wouldn't be overflown with new bugs by mail.
>=20
> * Should maintainers be sent digests of the oopses from
>  oops.kernel.org and the bugs from bugzilla?
>   Okay, I know that most maintainers get mails from the bugzilla each
>  time a new bug is filed, but I guess a digest would be better. It
>  wouldn't overflow a maintainer's mailbox nor it would be
>  automatically added to the maintainer's spam folder.
>  A feature like this already exists in bugzilla, in the 'Reports'
>  menu, but it does not send any mails, so I guess that could be
>  automatized.
>=20
> Another suggestion is to add the possibility of analyzing bugs on the ser=
ver side: like it was said previously on this thread, keeping an eye on the=
 feeds that repeat more than X times. Or see which subsystem have most issu=
es.=20

I am not sure what you mean by 'analyze'. Can you please elaborate?
The current oops.kernel.org does display some information on the top
guilty drivers and modules. It's right on the front page.

>=20
> After all, if the commitee decides that this topic is viable, I would
> be happy to participate.
>=20
> I would be happy to continue working on this and leading the discussion i=
f there is enough interest in discussing use of QR code in this process as =
we *do* have the prototype and the people (Levente and me) if there is supp=
ort (infrastructure, feedback, etc. ) in adding this upstream.=20

I guess the discussion at the KS won't be mostly about QR codes, but
rather how could we get more information on the OOPSes and how to
disseminate them. Obviously, QR codes can play a huge part in this if
we manage to make them as least demanding as possible. Again, I'd like
to express my opinion on forcing the user to download an app just to
parse an oops is less than ideal. I still strongly support going for
a URL and a baseXX encoded approach. Obviously, there are problems
with this way as well, but this is the way where we lose the least
amount of users IMHO. :-)

Regarding your comment that base64 adds 33% overhead. If we manage to
shrink the size of the OOPS, i.e. remove registers, and some other
stuff, then that may compensate for the overhead b64 adds. There
is a subthread that discusses this.

Thanks,
    Levente Kurusa

--Fba/0zbH8Xs+Fj9o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTdM4YAAoJELBqK2lO9dZBhKQH/Rm+jLgWrOvfZyl2gExSIVIe
XwRNA17sjEhrpsNQqAcm6tT55eLAmaE8sHt93tK9iJi48PNZGqs9aAISJWDmphIj
Rd21/t/VI7X9wtiRUAlYNAp2t/BqJDmQDRNdTRa2hQRu5cSMS6czMCW2TpB7btRM
xpN9pcber81vvv9EXGmPs5kgpbcHuzh+DvqXnf2VeMPOdl9eqFpKAa6gG7b0d2Cy
nLEd+Lw2O6itriVlKBF2Dy1IluyjeSR634PQ8VV98B/GUshxHDF/u0YsZKNgHXpm
Xf2hpbqPRI0Suf8eenb/nb4WADR2W9RJD5naW/G8F4E6TL4iSUnkIw1kxmZpnkk=
=29Jp
-----END PGP SIGNATURE-----

--Fba/0zbH8Xs+Fj9o--
