Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A072F7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:18:00 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFBDD766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:17:59 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id q4-v6so1106080iob.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:17:59 -0700 (PDT)
Date: Mon, 10 Sep 2018 12:18:37 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180910161837.GA4459@chatter>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm> <20180910154738.GA3712@chatter>
	<CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 10, 2018 at 06:07:35PM +0200, Daniel Vetter wrote:
>Assuming we do indeed switch some parts of the drm process over to
>gitlab (very big assumption here), whom would we need to chat with to
>do that?

Hm... For the purposes of cregit or repository hosting?

>Atm what we're doing with patchwork is automatically add a Link: with
>the https:// patchwork url for that patch. Which then has links to the
>overall series, with CI results and discussions and all that. Plan for
>gitlab is to do something similar, if we start using it for real for
>anything. Would that be good enough?

That shouldn't be necessary in the near future. There is work under way=20
for patchwork to accept message-id based URLs, so using the=20
lkml.kernel.org/r/message-id URLs in commit messages should be enough=20
for cregit to provide a link to the relevant patchwork thread. We will=20
also probably end up integrating lore.kernel.org/patchwork with git in a=20
way that would associate patches with final commit-ids and auto-archive=20
them. It's not going to be 100% accurate for various reasons, but will=20
at lest provide more hooks for projects like cregit to provide extra=20
details about git commits.

-K

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCW5aZXQAKCRC2xBzjVmSZ
bAyYAQDSl901Q5WVCiAhjlNCw0u4ybJ4NDNGUX5CiE+g3gw0SwD+JNayLOllXntJ
wRXZJNTfLgaAG0+JC0iLu/w/9b6nQQ0=
=+pLX
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--
