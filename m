Return-Path: <jann@thejh.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA8458D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 17:41:04 +0000 (UTC)
Received: from thejh.net (thejh.net [37.221.195.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E8F3285
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 17:41:04 +0000 (UTC)
Date: Mon, 11 Jul 2016 19:33:29 +0200
From: Jann Horn <jann@thejh.net>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160711173329.GA8240@pc.thejh.net>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 10, 2016 at 09:28:53PM -0700, Andy Lutomirski wrote:
> Are there useful things to discuss in person about hardening? [...]

I think that an interesting question to discuss might be whether, and
if so, how, it makes sense to add restrictions to namespaces.

Namespaces, as a concept, aren't very scary when you keep in mind that
they only grant privileges to otherwise unprivileged users when they
interact with things inside their namespaces. However, in their
implementation, they are somewhat scary because they expose code to
unprivileged users that was written as code only root could reach. As
an example, have a look at NCC Group's netfilter bugs (and netfilter
in general; iirc, the filter parsing code has exponential complexity
without process death checks, which afaik shouldn't happen in any
code normal users can reach).

User namespaces alone are pretty simple. I don't know everything
about mount namespaces, but I think they also don't expose big masses
of kernel code, and IPC, PID and UTS namespaces are pretty simple.

I think that network namespaces, compared to other namespace types,
expose a lot of code. Grepping for CAP_SYS_ADMIN with
`egrep -R '(ns_capable|netlink_net_capable).*CAP_NET_ADMIN'`
returns a bunch of things, including netlink stuff, netfilter,
sysctls, AF_KEY stuff, bridges, routing, socket repair, ARP and
tunnel devices. At the same time, they are one of the lesser-used
namespace types: Containers need them, but sandboxes don't really
need them for much apart from making abstract unix sockets and
networking in general inaccessible.

For this reason, I'm wondering whether it might make sense to create
a new global capability set that specifies which capabilities should
be inherited on namespace entry / namespace access from outside
instead of being set unconditionally, and then let distros and/or
system administrators use that to e.g. restrict CAP_NET_ADMIN. =20


But I'm not sure whether I'd want to fly over to the US to attend
the summit, and I'm not sure whether a discussion on this would
benefit from happening in person.

--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXg9hpAAoJED4KNFJOeCOoEvYQAKRKlvJwQHA5R2HAst7UOpNK
14RmcDeXmAT1DxAUs1dcgmoNsAIoyHnE3gkIGJ46zYU7a5uRWKOoY5DkM23dcZlG
sLRSqbC87VcWK15m7s4mosOXqxaj3xGur3aNe62kzUAzjpcRO/uVMMkuO/o0erao
Tsg0XYbg13RQUpZ9udNivvWtnTcpT2WpGSRvI3Zs4v9SG+hjpYshCh9IcdS5eLHP
MxornJ4cNCZ2GyNnEJmNt703X/ZoYraUdl0bqjG940ndGT3kR8638vdFK7QGSckM
fy+yVmPN84Z6G6e7TVM+y5zLB8IxTOppvKT0E4lOXZSd0PKJTOhnRpJpaQH/nGQu
s8eN6jvbYDd75vETqYX4ttjhQ40OYhJcvgM/R4WSwoNfLDeo2uE1qyRevG8XOqdt
c6pmkRbJCsxtIF00cR/z9GNVGBniROzEL+YAL20gjg0gY1dvIdJ/je60xMtYjKXo
nFo2Vhy2ozL1Xcz4ivyBkMgyKKw8tgSv2FXYgd7yvwPU0NZv4dnoDPZOWAO5/WWg
pGxWI98tD+CnyHrSSyqxqw/HfMg3vg3aoME3cpvdfaQwgtXIsxVXDohlKWFwzcRJ
ANay3Z+bY+osbbK+/MYeTmVnd93brXwFA0HV2vTf1U682doSeA/WcoaQbmXGLeCq
nlpOD1VtvYkTabD1Zmet
=P1xQ
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--
