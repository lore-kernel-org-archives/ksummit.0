Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E211996D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:23:49 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 755C920215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:23:49 +0000 (UTC)
Received: from relay2.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 8E462AD21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:23:47 +0000 (UTC)
Date: Wed, 14 May 2014 09:23:40 +1000
From: NeilBrown <neilb@suse.de>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20140514092340.24ab4c9e@notabene.brown>
In-Reply-To: <s5hvbt9izdm.wl%tiwai@suse.de>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/pnWptBcblR2X6JFCsrEoBDR";
	protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/pnWptBcblR2X6JFCsrEoBDR
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 13 May 2014 15:25:57 +0200 Takashi Iwai <tiwai@suse.de> wrote:

> I think this has been already raised a few times, but I'm still
> dreaming one thing in our git management: having some metadata
> collection / link for each commit.
>=20
> I don't mean for a thing like post-commit sign-off, but rather for
> tracking the information that has been revealed after commit, e.g. a
> regression the commit causes, the later fix commit, or a bugzilla or
> ML link for the further discussion or debugging session.  The
> regression markers would be especially helpful to avoid a pitfall
> through performing bisection.
>=20
> IMO, it would be convenient if such information can be embedded in the
> published git tree, something like (infamous) git-notes.  But, I'd
> like to hear any other options as well.
>=20

+1

A particular practical issue is that when doing a git-bisect there might be=
 a
range of commits that only compile/run if some later commit is applied.
If I'm bisecting in that range, I have to repeatedly apply that commit by
hand.

If would really like it if a new commit could be marked as "a really
important successor to the first parent" so that git could keep the extra
metadata to easily find the parent->child link, and so that "git-bisect"
could be told --always-include-important-children

This linkage would be enough to add anything else as "important successors".

Yes, I know I should send a patch rather than a suggestion.  Sorry.

NeilBrown

--Sig_/pnWptBcblR2X6JFCsrEoBDR
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU3KpfDnsnt1WYoG5AQIg6hAAwAWPOQIbjzWQeKR0eOWfsM/f058SEwPm
zqFmx9AMyzJo39ki4301KwKY0+Zk38H5HkFplF57YpA/WtjOXl3z2UrC8zLNhHiq
WD5ye3w1TKEkJ3JB1U1dNGF+fatTeVaaL41n5tPbTCuwYEHLAMctrQF2T6yk3L3h
MpmownPn3pJ2iFyDKcn2Pupi2nMxAhtoVUcViC8AVoqJkTy0MfMZq4IGp4/WVsqh
NCtcrfGUBKvOdCIzQCsAlhzGoNGMRt33U6sHzOItqSazTabKEv5iWvwxYiJiFnok
G2opVQKtN61vL0YJAgZ85C2BLqdg+7G8uK4sRXGUnghwkIa6/Fn2+3snUq4Uf5Mu
PjZdYe+FS9ScevYmum74IAbq+Gy/dU5fHq2vP8Wy1/5r9rSOsLLVgvfz6Wr37tcN
h0UDSL9Sfmr3dTxwKKtLckgxZDl/Ad4kttbeNuKfwjW54DpdSMZ3JlBt/LHqvMt1
zn5ExfKI3H/uW8Ovw/CsWD6/wjdVAmnLc9WY8taXDW0hUf6l9eSz2h4OUixeBHrT
y6rR+nsRZelrYNqXuy1kz/zEWb4y3p0MvxGmmcY4M9423iRp5h35EQRGV3QzH84j
8o2hEx47HnUJQkq0yuY75vsliX+kYfziAKKdDVD8VBSnBvHfuNWHhpZ+wonlaSH3
CwODknJghT8=
=vZs2
-----END PGP SIGNATURE-----

--Sig_/pnWptBcblR2X6JFCsrEoBDR--
