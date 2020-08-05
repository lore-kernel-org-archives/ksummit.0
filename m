Return-Path: <SRS0=5Bgd=BP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8E9C433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed,  5 Aug 2020 19:30:17 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DA662250E
	for <ksummit-discuss@archiver.kernel.org>; Wed,  5 Aug 2020 19:30:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DA662250E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=denx.de
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B157622785;
	Wed,  5 Aug 2020 19:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5oSfg3FMCbq; Wed,  5 Aug 2020 19:30:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7610F20028;
	Wed,  5 Aug 2020 19:30:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40819C0051;
	Wed,  5 Aug 2020 19:30:12 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BDFA4C004C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 19:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5F65868EF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 19:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUOOTvSh53eF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 19:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E91E286928
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 19:30:08 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 7EDF61C0BD2; Wed,  5 Aug 2020 21:30:01 +0200 (CEST)
Date: Wed, 5 Aug 2020 21:30:01 +0200
From: Pavel Machek <pavel@denx.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20200805193001.nebwdutcek53pnit@duo.ucw.cz>
References: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
 <20200805172629.GA1040@bug>
 <CAMuHMdV20tZSu5gGsjf8h334+0xr1f=N9NvOoxHQGq42GYsj4g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdV20tZSu5gGsjf8h334+0xr1f=N9NvOoxHQGq42GYsj4g@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: linux-arch <linux-arch@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Planning code obsolescence
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3536436367838207768=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============3536436367838207768==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2as7iuittmdh4m5a"
Content-Disposition: inline


--2as7iuittmdh4m5a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2020-08-05 20:50:43, Geert Uytterhoeven wrote:
> Hi Pavel,
>=20
> On Wed, Aug 5, 2020 at 7:26 PM Pavel Machek <pavel@ucw.cz> wrote:
> > > I have submitted the below as a topic for the linux/arch/* MC that Mi=
ke
> > > and I run, but I suppose it also makes sense to discuss it on the
> > > ksummit-discuss mailing list (cross-posted to linux-arch and lkml) as=
 well
> > > even if we don't discuss it at the main ksummit track.
> >
> > > * Latest kernel in which it was known to have worked
> >
> > For some old hardware, I started collecting kernel version, .config and=
 dmesg from
> > successful boots. github.com/pavelmachek, click on "missy".
>=20
> You mean your complete hardware collection doesn't boot v5.8? ;-)

I need to do some pushing, and yes, maybe some more testing.

But I was wondering if someone sees this as useful and wants to
contribute more devices? :-).
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--2as7iuittmdh4m5a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXysIuQAKCRAw5/Bqldv6
8ne8AKCzcy8jflTVvnbaGcu03o4XWep3TgCgiOYXuMl+/WCzPV9BgoTFu+rV6qA=
=rLGV
-----END PGP SIGNATURE-----

--2as7iuittmdh4m5a--

--===============3536436367838207768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============3536436367838207768==--
