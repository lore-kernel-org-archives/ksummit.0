Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E520271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 05:52:51 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 153BE12D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 05:52:51 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Greg KH <greg@kroah.com>, Guenter Roeck <linux@roeck-us.net>
Date: Fri, 15 Jul 2016 15:52:39 +1000
In-Reply-To: <20160715042938.GA5527@kroah.com>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
Message-ID: <874m7rcus8.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
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

--=-=-=
Content-Type: text/plain

On Fri, Jul 15 2016, Greg KH wrote:

> On Thu, Jul 14, 2016 at 07:56:43PM -0700, Guenter Roeck wrote:
>> Overall, I can not imagine that it is even possible to use quilt trees as basis
>> for development in a company with if active kernel development, even more so
>> if a large number of engineers and/or a number of branches are involved.
>> Sure, the QCOM example may be extreme, but do you really think that writing
>> those 2.5M LOC would have been possible if QCOM had used Quilt trees instead
>> of git ? Using Quilt would for sure have prevented them from writing those
>> 2.5M LOC, but then there would be nothing. That doesn't sound like a feasible
>> alternative either.
>
> It is possible, look at the Red Hat and SuSE kernel development teams.
> Yes, in the end, most of the patches are backports from upstream, but

You are glossing over a key point.  We (or at least I as a SUSE kernel
developer) don't use quilt for development because, like Guenter says,
it would be too clumsy.  I do development upstream if git.  Upstream first.
And I have scripts to help turn the result into something suitable for
quilt, making the use of quilt a pain rather than a nightmare.

I do find quilt useful when backporting a series of patches so that I
can resolve the conflicts on each patch individually and move backwards
and forwards through the list of patches.  I don't think git has an easy
way to store a branch of patches-that-I-need-to-apply and to then give
me one at a time, removing them from the branch.  I could use 'stgit'
for that if necessary, though it is very tempting to write something
that is better integrated with git.

> during new releases they use quilt for all of their work, adding and
> removing and updating patches all the time.

So you are saying quilt is good for release management, and Guenter is
saying it is bad for development.  Maybe you are in agreement.

It probably is quite useful when pulling in a new -stable base.  We
typically have a bunch of patches that we applied before they came out
in -stable, and just removing them has some value ... though
occasionally I do wonder "what happened to that patch..... oh, stable!".

Personally, I would rather do all my kernel development (and non-kernel
development) using git and git only.  Other engineers might have
different opinions.  But we work with what we have.

NeilBrown

>
> There are the usual merge issues with doing that, but for an SoC, I
> don't think that would be all that hard given that almost all patches
> are driver/subsystem-specific and don't touch other places.
>
> It does take a better calibre of developer to do this type of thing,
> that might be a harder thing to deal with at some SoC vendors :)
>
> thanks,
>
> greg k-h
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXiHonAAoJEDnsnt1WYoG5J2IQAKgABzpcPrmEtHvHI6zA1f6L
XgbCBqHWHP9ja/+FTlSpvsHipczMh1B5T1nszHIcLih69oPiDLi7DO+eaPezKG3O
+V0bANGybcUQB6n+qH3ELqozT9i6ucezQ9uXl/8b27hTU4GJmhHpuO4dJ6PzG+3c
PSEYlJq2PYACGOiYlk/iiQZg/p8LF1Bcle+HfFC2m+neXzO2quJQPVpSslICBQNq
Rf+2wSPAE6JaOaDi+nAGYVYendTMGAuUzJez9dqRsLlsPiXjJyslvFCmIxBIX6Ei
at5hJ3hXxqZ+RHAez8fTjggmN9SNGA0FS5ngrUJUj/rdAOMM2cWzsAyVeB42oOXt
v5p7qcsswwfS8zTFlb8/mUJraHxvPcu7TLrdL7XJUIz4erjF9Gj20YxnfKi3trno
Xw50bPGxT2Qag1TLpe92Pc9CqsBm7DF8cPJEsLzV8rqAyc+TJlmze4jc5W5pC2p8
f4Dbn91DobF978gGPCMqmvx21UjO4NnXpaJD1f6KDK0p4SwJsAdd8RlwhhvojMc6
C9ZE0Gf0A8l27KSsdZVW3/K6RH1ZJf9vKtaaUf5O7VfKelV9gOqZCYXAm3iCob3F
pTitVNapj9LL8LeoJWUdzv/Yn0AAZNlTOOR4uV1pBP1dcF3BwIX7teoXWIYJWQKB
UzTK32A5OHJ4p/vrG4/r
=i5z/
-----END PGP SIGNATURE-----
--=-=-=--
