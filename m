Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2D0DA2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 08:38:30 +0000 (UTC)
Date: Mon, 12 May 2014 10:38:26 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <20140512083825.GB2665@katana>
References: <20140511053037.GQ12708@titan.lakedaemon.net>
	<536FBA0E.5090301@gmail.com> <20140511190752.GC2527@linux.com>
	<20140511192630.GA14115@kroah.com>
	<20140511195011.GD2527@linux.com> <536FDE91.3050708@xs4all.nl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Pd0ReVV5GZGQvF3a"
Content-Disposition: inline
In-Reply-To: <536FDE91.3050708@xs4all.nl>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] hobbyist recruiting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Pd0ReVV5GZGQvF3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > that there really is no central TODO list. Maybe there could be a=20
> > Documentation/NewcomersStartHere-like file that would list for
> > instance the TODO files in drivers/staging? It's nothing big, but
> > would certainly help people find their ways.

To be honest, I think it is something big. Keeping a file up-to-date
which has detailed information from various subsystems is quite some
task. More subsystem specific TODO files might be helpful, iff the
maintainer manages to keep it up to date. From a newbie, I'd expect to
find out how to find all TODO files in a kernel tree ;)

> It certainly wouldn't hurt, but I'm not sure if this will really solve
> much. In general all you have to do is find the subsystem mailinglist
> (or email of the subsystem maintainer) you are interested in and post
> an email offering to help. Generally there are always jobs available
> that need doing.

If you lurk around a mailing list of a subsystem (or read the gmane
archives), you will easily find out about its issues and shortcomings.

> My experience though is that there is a big gap between offering to do
> some work and actually doing that, and at least as large a gap from
> going from posting a single patch to becoming a regular contributor.

+1

> One issue might be that as a 'newbie' the problems you can work on
> initially tend to be simple and often relatively boring ones (code cleanu=
p,
> sparse fixes, etc). Any work on core code often requires substantial
> experience.

For me, I am not so much short of patches, I am short of reviewers. And
that needs some time and good will of a new person to get into it.
Reading old reviews, playing with the subsystem ("why is it done this
way?"), digging through git history to understand the organic growth...

> I guess that this might be why most of the regular contributors started
> out trying to support their own or their company's hardware. Which tends
> to be a project at the right level: challenging yet typically not overly
> difficult, and you learn a lot about the subsystem (software, process and
> people).

Agree. That is why I point people to OpenWRT which has tons of hardware
support which is not mainline. And old routers can quite easily be
obtained. Yet, one must be willing enough to get support of a mostly
outdated HW into the kernel, just for the fun of it.


--Pd0ReVV5GZGQvF3a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTcIiBAAoJEBQN5MwUoCm2HvwP/2r6lpy/UA5VUhACSmFIDqzd
oovbbJoTZuVxkqjxY8kcxL1T3yh359CQdTdIVaeZYhlJmKFb/RDbH2JTkflt+cVI
yPyFll0opmu+XTW/BORZOJRj1Ulbao5lp6bb6YwYR5CiM7Rl3ZvEuWnnyTEcSDfe
RrF3PwOrpWwhVWjWzuiyD2d9gMqtqibhOaewQi63ngSqT+5PZNGWpSxSnYy35786
4O5eu4Tztg/RD640ZZL/dhAyG0RZb2/hQtKQA8pFfAkHIb0bQty5awdeNEkHXd80
wPK2p0AttvR3jtVPX0pGwiPzmH0JmGxoZZfkkOMOqWMbUFg9XxjvsyWSPEL6iXMa
8nT59uhFdBmydzYNhe9I08RLEQQadlyA3vv5Un9fL0e5b0wJLe4+7S6IYe5tcZra
rOtcx7fd83GAzhDJxOPO61BodFeaEEv/ZLn1anOjkL2gHnnVY2qw3SHy4AFlB+A/
LkNRSCVdAcoK0lyZOt0M7NkfT27I0WyYrBlfVaN20dQRUE5qWThRa5RzPoz3gVIa
njxcYbIyavM9lKOrIP15bHpMnxAjwz3uO13YfFFk9OVwU6HLvMYZZSQY6qZf/BUi
RLhbfpfVXwtOSaZ0E88HogsyYpFO2HZNW3k/++VKPe7t0oLCRVUN52uDQLTOqiU5
LxdQ62fNrrrOgO0uKi6T
=m31g
-----END PGP SIGNATURE-----

--Pd0ReVV5GZGQvF3a--
