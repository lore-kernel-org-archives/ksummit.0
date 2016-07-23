Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EAE274D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 02:29:44 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 873C926C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 02:29:44 +0000 (UTC)
Date: Sat, 23 Jul 2016 04:29:38 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Message-ID: <20160723022938.GA18499@earth>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<5791931E.5030402@roeck-us.net>
	<9f443b24-9c6b-f50a-3c36-a919507864fe@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
In-Reply-To: <9f443b24-9c6b-f50a-3c36-a919507864fe@kernel.org>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dmitry <dbaryshkov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Jul 22, 2016 at 09:31:15PM +0200, Jonathan Cameron wrote:
> >> Someone power supply related? (Guenter, any suggestions?)
> > Not really, other than the power subsystem maintainers. Question
> > here might be if it would make sense to register battery charger
> > drivers as hardware monitoring devices - with the new hwmon API
> > that should be quite straightforward.
> Anyone want to nominate themselves from that area?

Sorry, travelling to USA is not something I can financially afford
until I have found an employer. Since [0] I basically maintained
the power supply subsystem alone, so Dmitry and David are probably
not the best candidates either.

If he's there, Krzysztof Kozlowski (added to CC) may be a good candidate,
though.

[0] https://lkml.org/lkml/2014/7/16/621

-- Sebastian

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXktaNAAoJENju1/PIO/qa+AMP/RR3SPCUG+WNCtmuXkKpO4mq
mnFMQd5MGMbLhHfugSQblrBnR+xpfW5L08stiUmmCxSZ6lIxpajX6T2bu1y6JOKn
O2pVOt8vxoR1rIuA7T5TV/XHByzzOFii787Jaw43CeWWhndmOE0xiZGxI1Worlbd
L8cEeaviZb55CdoiyDuoSpkEGYz/k0JAa7EQD268fZRQLdPx5UIy+MykMKkP8Cn0
xdDb7ACkD3V+gOYUU5YHvglxstNHJJP9JXDo1Vr/zQmh6zLNS7++gCuFGPiDyuvx
ghsjPPCazjobMjJWKjA7ohGt7pevqVGJBXvhKChVYctKmO9I2SmhS7i4IERi1y5x
qv2tHuCVgmUF2t1wHdsg2f6Q2nuyyvolgJHiKFKHeFuyhP4FQUfx+Yrg7U/oXYfR
7KqzaY6LYK4hgsqOjK+k041O0RjSGSJF8YMFpa/eOPoTuD3TpjKNcJz2G74m7ZHJ
kmKHBMISig846Qo77FwWSTMyPFA8GZAsQelvaWdsesB//Lpx8WOA2b8CA3z2zam+
taGdnkdJIi4JaSKxLiDqTtXa6YW8bzARjLiFqQCmdF42pjKURPBy9g07WdTLlbOm
M4AHSK2wSHZUibKFCZCU4svolG18T3wK8is2X22HFZhpulsRJxqWXgOiXCAJFZ6K
W8sGFEqzNk2YpSqfbBbj
=PaAp
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--
