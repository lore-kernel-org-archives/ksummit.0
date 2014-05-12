Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A7DD2AE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:35:24 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26CE12036A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:35:24 +0000 (UTC)
Date: Mon, 12 May 2014 19:35:20 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140512173520.GA9499@katana>
References: <20140502164438.GA1423@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
In-Reply-To: <20140502164438.GA1423@jtriplet-mobl1>
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--DocE+STaALJfprDB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> - Tiny in RAM versus tiny on storage.
> - How much the kernel has grown over time.
> - How size regressions happen and how to avoid them
> - Size measurement, bloat-o-meter, allnoconfig, and other tools

Besides the discussions about keeping the kernel size small by
deselecting features, I believe we have a few options left to reduce the
size just by rethinking how data is arranged. I have just started to
research 'strings' in the kernel and am already seeing patterns which
look like low hanging fruits to me. (Unsurprisingly, given the amount of
copy&paste code.) Take the OOM message removal as one example, such
things can be fixed and prevented. Although my focus is 'strings'
currently, I am sure the lessons learned can be of generic interest. So
to say: keep the bloat on a level that is really needed for a new
feature.

I proposed to present my results at LinuxCon anyhow, so that would fit.

Disclaimer: Yes, I work more on drivers than core code :)


--DocE+STaALJfprDB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTcQZXAAoJEBQN5MwUoCm2gN4P/3EJKN4CHKQ3hJZSBQp/n67p
yV2zHaMgIJvorKbD4ks77zS11Df9KkMjuYDaAwOMiWIFCTvinZNBbvuKYA+WIgTu
QM0Tx8I5X6YprV51ucMhKZ33Kxm0xR/xQz9/p9IVyW0krBcxXwl3SNlbGXkuLwp9
7eL6GolmvRS9yxUbCS6j/OcY6dVoL/L5NtqIUy1ro2JJHpd3ZOvDdNXcVRvIav1/
AMfMoguN5zM3oIq+gGr8NjfrsYO6k/hFDTttB5r+Vs7GD6MYhYK7v9Am2bIyL+jy
jFCpfQNPUK++aUkB+okWNA+3gtHzjkk+VXfalInYCfWx1FhfYthF9WAZftDJCFcl
jduQRmSpHlkUgkoCMe997GJVgIkedOYaWd8MUJPGXkdwDuDgO9+mEwoAOo8SkN8e
kAJfGKzHg+X+j33RPfjcBLjRWlcGRDtsXyeNA0Rp/NMHczbdmiWZMOFlsPk6WbDg
oa4eTYfpJdRx0TxWMH6imiW607jjb39FAcpSEU4dPWCiQTGuXth6M+XO4IuyP1cG
273B08y0rbMSYvdOTSN5V1U4W6cY7Rw9YJmT9ypLiW8QkiPjs7/aRcVm8KKmd8XB
OVhrzLns/5aPjjx4gBgeYFSbD1g8JSOaRKebxMR2LrNvYgHahmc8Sud/HU9hJ9EF
nnZWU53B6z6IP6h8oJd1
=MaJr
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--
