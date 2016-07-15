Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA18271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 06:32:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 289E08E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 06:32:24 +0000 (UTC)
Message-ID: <1468564337.2420.37.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: NeilBrown <neilb@suse.com>, Greg KH <greg@kroah.com>, Guenter Roeck
	<linux@roeck-us.net>
Date: Fri, 15 Jul 2016 15:32:17 +0900
In-Reply-To: <874m7rcus8.fsf@notabene.neil.brown.name>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
	<5788337F.8000500@roeck-us.net> <20160715014103.GA5791@kroah.com>
	<578850EB.3090109@roeck-us.net> <20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-T+4p/rCwL7R3c6j/WQWc"
Mime-Version: 1.0
Cc: Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-T+4p/rCwL7R3c6j/WQWc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
> I do find quilt useful when backporting a series of patches so that I
> can resolve the conflicts on each patch individually and move=20
> backwards and forwards through the list of patches.  I don't think=20
> git has an easy way to store a branch of patches-that-I-need-to-apply=20
> and to then give me one at a time, removing them from the branch.  I=20
> could use 'stgit' for that if necessary, though it is very tempting=20
> to write something that is better integrated with git.

Git cherry and git cherry-pick can do this.  Git cherry-pick can take a
range of patches to apply, so you can select a bunch of patches to
backport or otherwise move all at once.  Git cherry can tell you (to
within an approximation, since it uses matching) what patches are
common between two branches even if they have differing commit ids.

The format is a bit frightening if you're not used to it, which is why
stgit may be a better user experience, but you can do it with basic
git.

James

--=-T+4p/rCwL7R3c6j/WQWc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXiINxAAoJEAVr7HOZEZN43KQP/2Myf5keNAtxgwpxNMFXrjF9
mzg0I2fSz8beJzw00iFImQS7qDSvBP91gtlVKnnpVC4XMLdGjbeAsbUWcZkrKObA
APx9Z+vYH0JXCgQ60LfNzGjL88ab6fznvsUX7q8SOXHy6UJPqkP1Sn5LqFLKXpD3
biGZL62eBtAE5QmPAlFZ7otOqWeUVM9cW6+/zL0w/z8nUQvbcqnwc/p/9dgqr+e5
K/S//Amqak0aIAsXLD0LuEh9L080hHngD6Fe36Oi+uS/82wWaiPbQx0OtNA7DEcC
Fwe29Q6rSJ4qO/3+6HVJvRVQeGuMcrzFtfCKX+iGFTiMV4EcbN1RHOVG6LGxCYdn
qPfvn1oYeItxM5VcEvBLzm+5Qo+JNpYjn2mR1UjIUDVnFsnFJ7HJcM39CEejov4a
dNJUDsHMDCdj9Puqi+vjUbW6f7FyAIJKuyAwzHu6omOgpATp93qbH6Fifei+EenL
GcKGjoJ6kov3xlHQc/XYWjsJLfC2enomurQgYAKmwtn4QiQfm2K10vZ9ptpc70s0
SjXfLQs0iwW5jQbCVAuhSNzNjCtB4FqoNp4zVNGjs+SA6MrPfkCajXH/CYbuhBBy
1PG85yaJfKBpkxmoqyAu/beuSP7JT8bwMTC4PD3BsjsY4DvZYDgp8MEkj9xEuazT
pj/3rVs9Rh2ihfl4oQiV
=JfLo
-----END PGP SIGNATURE-----

--=-T+4p/rCwL7R3c6j/WQWc--
