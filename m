Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B24084A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 08:02:33 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 818388C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 08:02:33 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Aug 2017 18:02:23 +1000
In-Reply-To: <CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
	<CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
Message-ID: <87zib6pm5s.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
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

On Thu, Aug 10 2017, Linus Torvalds wrote:

> On Thu, Aug 10, 2017 at 11:21 PM, NeilBrown <neilb@suse.com> wrote:
>>
>> With this pattern, people can still trust an X.Y kernel,
>
> I do *NOT* want people to trust an X.Y kernel.
>
> Quite the opposite.
>
> I want people to realize that the version doesn't matter, and that
> they should feel safe in upgrading. The X and the Y don't matter, and
> they *MUST*NOT*MATTER*.
>
> If they do, the process is completely and utterly broken.
>
> So what people should be able to trust is that they can always upgrade.

What do you mean by "upgrade"?
Can I upgrade from 3.15 to 3.16-rc1?  If not, why not?

NeilBrown


>
> Not the shit that I see *ALL* the time, where you upgrade something,
> and it breaks.
>
> And no, the excuse "but the API was new in X.Y, so it could change in
> X.Y+1" does *not* hold water.
>
> It very much violates that basic principle of trust and makes people
> go "I don't want to upgrade, because it might break something I do".
>
>                     Linus

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAlmNZJAACgkQOeye3VZi
gbmARg//a1J8RfsHTBLj0O9S+1Ov+wWlAUTDPYWkMG7xsq0FcgzQX/p70RZIhdha
p+Qm8Zpg+yOa44t7OUcLS9F/fh+cwT/muOwimtyRlIjp8GkzLU9a94IrNzkf0dnC
M77jAiBO5tgg2rZN2WT95JmQbtat26LPOTc3qERnx445Zht+VgVKk7O3tzQS6Nk8
c3AlPEt0G4eqLS48uH1kYiTCZOkmrXv6nHGRa4QUvDBS7/qYOB/iOH4hFgyFFVxF
DrCzbqPvZaCHX3FFH5En2y6ZOdwtbl4WGliT0clGwE8py3KyyHdO2th8vI/0DsE/
WrM15B/B4j8bvLEs24+hDWRaRm5RKn/GrdC1VdHqAIwAq6831JSE09OZpVhGYAXP
clkg+tGBshz4qMRr0wty4DplcdCiSbGX/S0V2MLhwsk7LqbFFlEE/hfSQznOPSMr
ECx883rqvlczqHXoN6Cl2FlrWoxRcC0C5Ha04oIHF0nZYvVuwTcs88rKIgHz6gUb
eDGMrdutFP7xXOHvfj9LKfAJhzDxacvT6O/OLKo2UR6J/YeXQNrp8BMO87Nzwq7s
vFcFQXiSa07HBpJkafBCXhJZ/gx4TmeCwAyFNx/09C/VvXyM7dssGCJTIG0tVQQN
JI5AHAbuf5c5+ZpyNMBrj4kzfi/0rZZVZaFzzjdBlOfqCCybWy8=
=gRqn
-----END PGP SIGNATURE-----
--=-=-=--
