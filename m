Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3A218FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 23:55:41 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14D0E87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 23:55:41 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Pavel Machek <pavel@ucw.cz>, ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 26 Jun 2017 09:55:30 +1000
In-Reply-To: <20170625104850.GA24717@amd>
References: <20170625104850.GA24717@amd>
Message-ID: <87shinzkp9.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
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

On Sun, Jun 25 2017, Pavel Machek wrote:

> Hi!
>
> Situation around mobile phones is only improving very slowly. We now
> have hardware that is supported in the mainline kernel in useful way
> (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
> missing.
>
> But there are major pieces missing: first is userspace. That's not for
> us to solve. Then there's some kind of hardware abstraction layer;
> kernel currently does NOT provide enough information for userland to
> autoconfigure everything.
>
> There are big questions about kernel / user interface. We have whole
> subsystems missing. They include:
>
> 1) Who is responsible for shutting machine down on low battery, and
> not bringing it up unless safe?

My laptop hibernates when the battery level gets too low. Why should a
phone be any different?  User-space monitoring and policy seems a
suitable answer.
I think the "not bring up unless safe" decision needs to be made in
the boot-loader.  Once Linux boots, it tends to turn everything on,
then the unneeded things back off.  That is no good if all you want to
do is start the battery charging.  Changing this approach would need
a lot of work and buy-in from lots of people.  I doubt it will happen.

>
> 2) How to handle GSM audio?

What is the issue here?  Isn't GSM audio just another audio source/sink
which user-space can send where-ever it likes?

>
> 3) How to handle differences between GSM modems and between GPS
> receivers? Is AT commands/NMEA good enough? What about AGPS upload?

My limited exposure to the different varieties of GSM and GPS protocols
that are supported suggests that this needs to be done in user-space.
There isn't any suitable abstract protocol that we could implement in a
kernel interface.
gpsd handles multiple GPS protocols and meets a lot of needs.  If it
isn't perfect, it can probably be improved.
An equivalent "gsmd" with pluggable back-ends seems like the right
approach.  I think there are several contenders already.

>
> 4) How to handle accelerated RGB LEDs?

This does sound like a kernel issue.   The hardware has limited
programmability so that different patterns and colors are possible.
Maybe we want to enhance the LED trigger mechanism to apply to
colour LEDs.
I guess that we need a concrete proposal so that it can be assessed.

>
> 5) Do we need suspend-to-RAM to handle power management? If so, how
> can we handle automatic sleep an still be compatible with Unix?

My feeling is that until someone proves otherwise, suspend-to-RAM should
be assumed necessary.  It should be possible to get the same power
saving with runtime suspend, but that requires all of user-space to
co-operated, which is like "herding wild cats".

I don't really know what "compatible with Unix" means in this context.

There are really two options:
1/ applications which specific cpu-availability needs explicitly
   after for the CPU to be kept available - i.e. "wake locks"
2/ applications that don't have specific cpu-availabilty needs
   don't use the cpu at all when they don't need it.

The first means we suspend-to-RAM, but have "wake lock" calls
in code.
The second means that all code is very careful not to be wasteful, and
we rely on runtime PM.
Neither are very "Unixy".

Is this a kernel issue at all?  User-space can take either approach, and
struggle with the difficulties.

>
> 6) Do we provide compatibility for old v4l2 apps on complex hardware,
> or do we wait for libv4l to get support? How do we provide information
> such as camera aperture to the userspace?

I cannot comment on this one.

>
> ...and probably many more.
>
> Plus of course, there's a lot of work to be done to get different
> phones supported.


Thanks,
NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAllQTXQACgkQOeye3VZi
gbnJoA/5AQHdU2JOQ7nINdrVUuuauAgyk/UMz0gbQzOVekUQ5Rr4k2aNvLwGAWar
VmkGHCUS7XC0H2CT8haMbVNWsY0vLiwyCNXYwmaaCvemhBZ5R58nBNv1CEwFLbeN
/6dVpk6JJMa7+D+xQ5yZjZwkHVS4MLS0tA/dJtQWabpjT7ijaglvlB5Ecqo7Is6E
kuCYUf3oVsYGJofREPQf84/Vb584PGmuQh9Sk5XHQQ9Db7mR8IM3lHO0Uj+RIRqK
2Bemr7BfqaZxCS2mrrIGkEuyrUDbxj/l5auN/N4QxNLPtC9o+UOrC1sR9QN2ZFsR
NWusDpl63dpftgSvCl/UqcgSPgsSq1LETE4E59+Pcu7T0AiqF5r+lspn6LRP/6Op
ViZbV0kp2lLn7eNGqp3/YdXxrQg/GfqjCXghYxJgqVIz3Fwk2t635kxGvhhZX3mw
zIGbfyke0ygEqMo5ZQxn8vAL+0UrZd34yP6s3vrKMcXXSL/GhJXbdGs86NU7hYoa
QienQHY7PI1FM4L3d9hQdjvlQw1951JRdvWo96STo9OEQOpBfR2pcgV4llmUkUsK
NPRCoVsUMTapMo2yQuThsFmt4qHKxAzvoO7Rx0gXAakTCGMVkZ9jnbZjq8REnSb8
/d8jel6iuJ1Bp3uaetJDf8VVynSJ7isJf3xxBZYYK5g4p2tLeZ8=
=IlEC
-----END PGP SIGNATURE-----
--=-=-=--
