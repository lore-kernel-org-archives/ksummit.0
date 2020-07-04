Return-Path: <SRS0=o/nk=AP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AE0CC433DF
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 20:45:07 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C2AF208D5
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 20:45:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=canb.auug.org.au header.i=@canb.auug.org.au header.b="qwguiOnR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C2AF208D5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=canb.auug.org.au
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4BB18748B;
	Sat,  4 Jul 2020 20:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qOrz8JSAKUu2; Sat,  4 Jul 2020 20:45:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 155B18747A;
	Sat,  4 Jul 2020 20:45:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CFE65C0888;
	Sat,  4 Jul 2020 20:45:05 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29226C0733;
 Sat,  4 Jul 2020 20:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1ED4888A64;
 Sat,  4 Jul 2020 20:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vHIqPbSBRBvD; Sat,  4 Jul 2020 20:45:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD19788A5F;
 Sat,  4 Jul 2020 20:45:01 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49zkNV6bQpz9sDX;
 Sun,  5 Jul 2020 06:44:58 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1593895499;
 bh=nC1owAD89UbJzjcIBm37JjWlvA4hLfOh5ee4HX+XJoQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qwguiOnRsIULqcqAeY6BODJ7D86Hp/Q8t0GxsIkfrAYeMBhsyInXbvDXs61cv/00B
 9mKuVbeEYuT9HgEeMoRtDKsf5zwXInb78FmraddCqFKzcHAU/17dsGCXND2MQ19pH7
 N4GSihfJN5tWXa4V9kHEb51kaTMbyBAhGDEcIwObnhm6REUf1FdgpRVKxnYL0B0rXb
 lI6DFqSOh2sU0rwLXqWlSDmpwkbFJsBdXIFhQuGfL/AwvyqwORNd43k+GtFzNBUQLz
 qpW9Mp89IFmj0LxenpEVfnm1HZ5uR4tJULKIlSuQmw3HiCGnjFF+lZE3vaRGVyMjOL
 ZAmfs8BIhOLqw==
Date: Sun, 5 Jul 2020 06:44:58 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200705064348.71d4d51f@canb.auug.org.au>
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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
Content-Type: multipart/mixed; boundary="===============0735536827007474860=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============0735536827007474860==
Content-Type: multipart/signed; boundary="Sig_/RQgPZw_YLUFGAPqGSr1.V0d";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/RQgPZw_YLUFGAPqGSr1.V0d
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Dan,

On Sat, 04 Jul 2020 13:02:51 -0700 Dan Williams <dan.j.williams@intel.com> =
wrote:
>
> +Linux kernel inclusive terminology
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The Linux kernel is a global software project, and in 2020 there was a
> +global reckoning on race relations that caused many organizations to
> +re-evaluate their policies and practices relative to the inclusion of
> +people of African descent. This document describes why the 'Naming'

I feel a need to point out that racial issues are wider than just
people of African descent ...  Also, others have pointed out that
slavery is not just restricted to those of African descent.

--=20
Cheers,
Stephen Rothwell

--Sig_/RQgPZw_YLUFGAPqGSr1.V0d
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl8A6koACgkQAVBC80lX
0GwEwwf/f8cTuCgkZbwwm+Ee1lkDQkFjsPWItXAveg1W8+AjMvlgECSc36+RL5hQ
hB0D4Wr/HF0CrfawnPBC5iNSeer/RZyDn4+WTYlVVN0PNgiaJ7yWuazJYXWneNOH
CqYxIIPvUWjZZNULcquX3sUhHo42QainqP5MOiAeiR1mDZDV5i/pnvUlozX0mV1y
eoqHW1H2XZ2BdpIIco8QV7T3LeDkRcLyzY2oG6SWhGnXuztPcdcRwEIzqKZi/v7v
h+dTz3w0CYzjTNQerNrDqCq/tYQJXKdeQ3suJ5YuJlZ+pvLAfZSu64NaKw3Q33al
U26q96JA6IY8I77eWXEJDBAYlxNAZg==
=1+aD
-----END PGP SIGNATURE-----

--Sig_/RQgPZw_YLUFGAPqGSr1.V0d--

--===============0735536827007474860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============0735536827007474860==--
