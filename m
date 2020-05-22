Return-Path: <SRS0=y99e=7E=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9918C433DF
	for <ksummit-discuss@archiver.kernel.org>; Fri, 22 May 2020 04:06:27 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BF3420748
	for <ksummit-discuss@archiver.kernel.org>; Fri, 22 May 2020 04:06:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BF3420748
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=cyphar.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE79C86DA1;
	Fri, 22 May 2020 04:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QsL67dhVxKAv; Fri, 22 May 2020 04:06:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E199087565;
	Fri, 22 May 2020 04:06:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2D83C088B;
	Fri, 22 May 2020 04:06:24 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E6BE8C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 04:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD4A38872B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 04:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MT8jgbbkSzcj
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 04:06:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16FF888725
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 04:06:21 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 49StG175c9zQlGt;
 Fri, 22 May 2020 06:06:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id hdY2cTz27GrC; Fri, 22 May 2020 06:06:13 +0200 (CEST)
Date: Fri, 22 May 2020 14:06:06 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200522040606.ec64dvpbldn3ufh3@yavin.dot.cyphar.com>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
 <20200520202401.s22hstao4kzr5uma@wittgenstein>
 <202005201340.ED17EDC@keescook>
MIME-Version: 1.0
In-Reply-To: <202005201340.ED17EDC@keescook>
X-Rspamd-Queue-Id: 72B141731
X-Rspamd-Score: -9.85 / 15.00 / 15.00
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
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
Content-Type: multipart/mixed; boundary="===============6162370432250981644=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============6162370432250981644==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3mrrgtzgvorc2lsd"
Content-Disposition: inline


--3mrrgtzgvorc2lsd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-05-20, Kees Cook <keescook@chromium.org> wrote:
> On Wed, May 20, 2020 at 10:24:01PM +0200, Christian Brauner wrote:
> > On Wed, May 20, 2020 at 12:08:52PM -0700, Linus Torvalds wrote:
> > > On Wed, May 20, 2020 at 12:04 PM Kees Cook <keescook@chromium.org> wr=
ote:
> > > > Perhaps the question is "how deeply does seccomp need to inspect?"
> > > > and maybe it does not get to see anything beyond just the "top leve=
l"
> > > > struct (i.e. struct clone_args) and all pointers within THAT become
> > > > opaque? That certainly simplifies the design.
> > >=20
> > > Exactly. I think that's the most common situation by far. Does anybody
> > > really really need to care at a deep level, and why?
> >=20
> > We mostly don't and making all second-level pointers opaque is ok imho.
>=20
> That'll make things MUCH easier. :)

To be clear, my insistence on the second-level pointers topic is coming
=66rom the view that we should make sure whatever model we use for the
first iteration of deep argument inspection can be expanded to
second-level pointers if we need them. The jump-table proposal I had was
just an example of how we could plan out a design that could be
implemented piece-meal (heck, we don't even need jump-tables in the
first iteration -- so long as we have an idea for how they'd work).

I also hasten to point out that if we make all second-level pointers
opaque then you won't be able to filter clone3() based on ->set_tid.
Now, maybe that's something nobody cares about, but it should be taken
into consideration that one of the handful of "obvious" syscalls will
already not be completely-filterable with second-level pointers being
opaque.

But if that's fine (at least for a first iteration), then I'm also okay
with that.

> > But I think that we need some documented consensus on all that stuff
> > which I stressed in other mails before. I'll hand something in about
> > this, if that's ok than we can hash this out.
>=20
> Aleksa, I know you had an entire presentation[1] on the extensible
> argument syscalls, but was there any text-based design doc that you made?
>=20
> It would be really nice to update Documentation/process/adding-syscalls.r=
st
> with the specifics[2], and to (now) include the "no nested flags"
> requirement. What do you think?

Christian and I wrote a patch for adding-syscalls last year[1], but Jon
felt that it should require greater community consensus before it gets
put into adding-syscalls. But yes, I'm definitely in favour of having
this be a properly-documented aspect of new syscall design.

[1]: https://lore.kernel.org/linux-doc/20191002151437.5367-1-christian.brau=
ner@ubuntu.com/

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--3mrrgtzgvorc2lsd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXsdPqAAKCRCdlLljIbnQ
Eg0bAQCLGXuh2iw3p/4MY1VxLHhCGd3V2795+RZtRhQcOwbf6AEAjOPM5uschdcs
7c5mT6WSz/XO3eFzATfmj6wUY4UH7gc=
=zhD2
-----END PGP SIGNATURE-----

--3mrrgtzgvorc2lsd--

--===============6162370432250981644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============6162370432250981644==--
