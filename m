Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5AE2D85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 04:26:24 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF8841F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 04:26:23 +0000 (UTC)
Date: Sun, 25 May 2014 14:17:25 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140525141725.54db587a@canb.auug.org.au>
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/BZS76tva+RcvB7ychF47syo";
	protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/BZS76tva+RcvB7ychF47syo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Sat, 24 May 2014 13:53:45 +0400 James Bottomley <James.Bottomley@HansenP=
artnership.com> wrote:
>
> The latter was supposed
> to be helped by having the Reviewed-by: tag so we gave credit to
> reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
> sword: it is a good way of giving review credits, but I also see patches
> that come in initially with it on (usually the signoff and the
> reviewed-by are from people in the same company) ... it's not
> necessarily a bad thing, but it doesn't add much value to the kernel
> review process, because we're looking for independent reviews.  The
> other thing I find problematic is that some people respond to a patch
> with a Reviewed-by: tag and nothing more.  I'm really looking for
> evidence of actually having read (and understood) the patch, so the best
> review usually comes with a sequence of comments, questions and minor
> nits and a reviewed-by at the end.

Some stats (I know you all love stats :-)):

for next-20140523, no merge commits, origin/master..HEAD^ (exclude
Linus' tree and my Next files commit)

commits: 7717
commits with more than one Signed-off-by: 6291
commits with Reviewed-by: 1369
commits with Tested-by: 354

Not sure what these show ...
--=20
Cheers,
Stephen Rothwell                    sfr@canb.auug.org.au

--Sig_/BZS76tva+RcvB7ychF47syo
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCAAGBQJTgW7bAAoJEMDTa8Ir7ZwVc4oQAJZe2jVneh+np/QPk/gc/qE2
513JIoRqpZBKuLMfLh9xP3CemyLB1iFgBujavrPWXMiA2kUPBBuX2sVaGDn7cSlp
5AyIfRa1t4LsCrdyzvEVc/o28aj3kGZO+ZXi1EyEglATDEBMJ0yxNMNwd6Uc+Mbz
et27bsicmelHDs8jOxsuSs8ibKnq+dw0nx9UGSBwnxdxc/quH+s6W5TUpnvCnpZ+
qcLxYW0h3m4LIbGmbzZCvLT0Zqwk49knAU6cyyVScypZX3hietNbiL7sAXJIaJhw
ER80GAXE3oAedTiPMALB5bXLOa4GFrMOGbm8JaADAfW11P0aO9BzTCst0eFj9gaP
MA2MuQ0uGbItwIxEdpN8599s2QVb7OdNnLEcV9RfhUC4zRUhsGxD6PGWcPHfM26I
vNGRToxs32WuGzBRqxiJ6y4LsvjjaRw4M0vHiIvJIaW0uWOSX8DoXLIrOCgc7B66
ka/4OKpLnhm1xBv7J4b1aSSXtk0AvNUHMWrqYgrDb21mFYpDNE2gyRSjwo2Wrlag
6/707hEx1QmVIQIjDgaMn+9VpCev9YgTu7jWcMl4EzEG8YwMWPPA6soxsT6aKB9P
isnw+hDQF0l0wrbgyX17MNbL7TsvvdDozN/nfi8n3JMUJuArf5hek2FrHJ7Le4eT
NQF5iIhEVjQVg9OGIfxL
=cB3t
-----END PGP SIGNATURE-----

--Sig_/BZS76tva+RcvB7ychF47syo--
