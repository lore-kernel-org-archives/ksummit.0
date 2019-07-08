Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2F2CB2468
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:47:24 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B59C48BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:47:23 +0000 (UTC)
Date: Mon, 8 Jul 2019 13:47:21 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190708114721.GB1050@kunai>
References: <20190706142738.GA6893@kunai>
	<20190706165214.GB18182@mtr-leonro.mtl.com>
	<20190706171724.GA12534@kunai>
	<20190708104716.GA20507@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i0/AhcQY5QxfSsSZ"
Content-Disposition: inline
In-Reply-To: <20190708104716.GA20507@quack2.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--i0/AhcQY5QxfSsSZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jan,

> There are two things here: If I review a patch and I'm not confident I did
> a good job for some parts (because I didn't have time or I just don't know
> that part of the kernel), then I should write that to the reply with
> Reviewed-by tag. That's IMHO a good rule but I don't think you can enforce
> it in any way. You can just ask people that do reviews for your subsystem
> if you think they're omitting this.

I agree to this. This is why I intentionally wrote my theses with words
like "should" and "encourage" because I don't believe in "enforcing"
such a thing.

Nonetheless, having a clear statement worked well for commit messages, I
think. We have spread the word how important good commit messages are
and from what I observe they have become better. I wish for a similar
process with reviews. And from my side, it could be as simple as
"checked everything, all good".

> The second thing is that if human doesn't know something, then he/she has
> a tendency to underestimate how much he/she doesn't know (this even has a
> psychological term "cognitive bias"). So the self-evaluation of "how good is
> my review" is always going to be subjective and it is upto maintainer to
> judge what is the value of the review.

I still consider the mere description of what was reviewed in detail and
what not already helpful. I agree that the maintainer still has to
evaluate the review.

> To give an exaple, Ted Tso (ext4 maintainer) tends to just ignore "empty
> Reviewed-by" replies from people that haven't built enough credit in the
> kernel community by actually finding bugs with their reviews...

This is good to know. I will apply some rules for I2C. Yet, it feels
easier if I2C is not some obscure island but part of something.

Thanks,

   Wolfram


--i0/AhcQY5QxfSsSZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0jLUUACgkQFA3kzBSg
KbZvAw/8DRsfOnURMeNOTZc84OuwQQCOmIMQfCkIPbZaVOAjQbzzi0ma+CJpgwBc
kZ4dN8GKkNToiOMq/meKSYu+uLpsG+lKkTmE18dq9NUwsAmgeVExr96s/f2zuWvm
rgDYqOGjwn75ZOb9N/wEl4Ds/chNu6x9+u8rm52U+W6QmEkH/T7g2B8A2jfZf5gq
2t0DpHIe6TYpM4GZTY54m8IzitMo3HKcSHGWRM0zC5EoEnqvKw8MZAI8XN8NyMQf
ooqxdIJdot1nVM8aoSDe51neLh0iLQ8pjyz2MRfsJHgvBZ2N/ZyET9s43ExHJYZS
KvMz+gADuINhmd8IHblNNZGtKL0+k4Dhub/IEILVxLEvMJxMTecK79YnZ4G5eum/
vghd/KVqIJ7VK8JKsZOlVqrQTn+tUh73xm/DTaFU1InS1nuznSY7CmamP5lOhJQH
X0Y+A2PfspyZHNYg+g3HKbT7USb+ZzlfZhhQOIgrgsyZDB51PfxRgC6kzqdK2Lvl
UYUVfVR/TeU6Qq7J6F1bfAaxgK4J+ln73dxbzdFyPorIBoyJr46bYDncfq/ZfYJT
uonSrDWhuWRu19pxyyAWpwBVK43vUNJsrpaQ80lXJMNf0N2PYPHSyFNW0ZWOf0IU
VGqwWkaZ4TKPfRqheRIc4X4WwlM4mr24hvnQAJgjVAWSuJO+X34=
=ClzT
-----END PGP SIGNATURE-----

--i0/AhcQY5QxfSsSZ--
