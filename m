Return-Path: <SRS0=7LdI=73=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: **
X-Spam-Status: No, score=2.7 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,HTML_MESSAGE,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E001C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun, 14 Jun 2020 13:24:01 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4DD12068E
	for <ksummit-discuss@archiver.kernel.org>; Sun, 14 Jun 2020 13:24:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="n2YgVD/o"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E4DD12068E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0892D86AAA;
	Sun, 14 Jun 2020 13:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVkClluD1ilA; Sun, 14 Jun 2020 13:23:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B88EA86A7F;
	Sun, 14 Jun 2020 13:23:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F732C0888;
	Sun, 14 Jun 2020 13:23:58 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ED862C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 13:23:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D64AB87E35
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 13:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRWuk19V2xYa
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 13:23:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB95487E30
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 13:23:53 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id 69so11033805otv.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 06:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TndSH7s3F1qlTCoZrJ7LXm/zurWUbJJ5l9ghSKp8NDU=;
 b=n2YgVD/ovbRv8er2q0xEsIB+4Q54WPfVano0Q3qokswbveZ4FwK3BHJzDEjMDdFpTm
 lrJXY+SOaNfHNmEYZrMz0O7W6pu3T/rkMUo/hud5gwQkWNb5NTom+7g+YqWRlgv0IwZb
 NFYoHKywBzByxz4jCOg76+jTrq7eCIYSUOM42e/9nQDxC4T4fS3GdtSot7jExw9mGfO4
 Mi0VLQHEmojWEkldcs10kipnu1zW1GKyxPsKqQX5WF48X2e5Egcm/GbRE9LUt/9B03N0
 9FpLFhmgP2vPDPJ0Q6Wuv0VwJBJRfggK7Lxnu3+3nStZ7JeVyG0ZDAn5UcNNN5/3zEXV
 u/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TndSH7s3F1qlTCoZrJ7LXm/zurWUbJJ5l9ghSKp8NDU=;
 b=soRWbT2FZJ5vP2euaP00Je44UwcNFxAAUVe/LCKt/D6uBZe3Em6rffJPgaJYTezDPy
 nh3bPqq1xFCxB0jEoaJ07uSVKt8bXKiuxdpp63ryl5iAwypBB/6v9xzLG/KN7q/ilvRZ
 hqW9PR+q19S98swbuP79CUR36x3plizzOhCjscdUVrwp44/q/d+DbkXr1OedADSTJVlO
 NLFBgZGM76V2LkAXLq2KdsX3yxoZfjC3LmCoI229qeqXLRLd2F/ry3/rv57yDDpzyH27
 419Q9xOh5XRnhdyKJVF9GbNl8VV4BHsjVCIoNGK+7i7S3J8zIfk7qKa116t0B2PkoIT4
 RRug==
X-Gm-Message-State: AOAM5303HYUsR7RHN0EHYLSo85i+Ck5g3mGqWYfs69UrjWgj26K9kgsI
 AbbXFFS0YT5AZaiaWL/dlxI1yp3RzkH5pRzIoSs=
X-Google-Smtp-Source: ABdhPJzt99/Y4nOEHOaH5AO6U3ClgxZF8L1ogR2/BclvEAndASaRtveqonCFuR8Wfxy5UtOCSLuSiwhAOa1YjBwtKmQ=
X-Received: by 2002:a9d:22aa:: with SMTP id y39mr17537160ota.76.1592141033125; 
 Sun, 14 Jun 2020 06:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
In-Reply-To: <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Sun, 14 Jun 2020 09:23:41 -0400
Message-ID: <CAFhKne9K5KBwHncm5-AWmRuUrtO+iJzTAvGJUEW9d6XXgyr_4w@mail.gmail.com>
To: Joe Perches <joe@perches.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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
Content-Type: multipart/mixed; boundary="===============8435545610206022296=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============8435545610206022296==
Content-Type: multipart/alternative; boundary="000000000000b6398605a80b38e5"

--000000000000b6398605a80b38e5
Content-Type: text/plain; charset="UTF-8"

Also W=1 will enable documentation warnings. We can move that to default if
we want people to take documentation seriously. Last time I tried it added
about 700 warnings to the build and I didn't have the spoons to make a
serious dent in fixing those warnings.

Maybe _that_ would be a good beginner task because it doesn't take much in
depth knowledge of any particular subsystem.

On Sat., Jun. 13, 2020, 12:57 Joe Perches, <joe@perches.com> wrote:

> On Sat, 2020-06-13 at 18:42 +0200, Julia Lawall wrote:
> > I tried collecting information about missing or incorrectly formatted
> > function documentation using Coccinelle.  Here is an example of the
> > output:
> >
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
> extra names mod, f_isr, h_src_arg
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
> missing name isr_cb
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
> missing name module
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
> missing name src_arg
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
> return comment but no return value
> > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr:
> extra names mod
> > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr:
> missing name module
> > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr:
> return comment but no return value
> > drivers/net/ethernet/freescale/fman/fman.c:2355 fman_get_revision:
> return comment but no return value
> > drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: extra names
> dev
> > drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: missing name
> fm_dev
> > drivers/net/ethernet/freescale/fman/fman.c:2527 fman_has_errata_a050385:
> no comment for fman_has_errata_a050385
>
> just fyi: scripts/kernel-doc already does:
>
> $ ./scripts/kernel-doc drivers/net/ethernet/freescale/fman/fman.c >
> /dev/null
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function
> parameter or member 'module' not described in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function
> parameter or member 'isr_cb' not described in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function
> parameter or member 'src_arg' not described in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function
> parameter 'mod' description in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function
> parameter 'f_isr' description in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function
> parameter 'h_src_arg' description in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Function
> parameter or member 'module' not described in 'fman_unregister_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Excess function
> parameter 'mod' description in 'fman_unregister_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function
> parameter or member 'fman' not described in 'fman_get_revision'
> drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function
> parameter or member 'rev_info' not described in 'fman_get_revision'
> drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Function
> parameter or member 'fm_dev' not described in 'fman_bind'
> drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Excess function
> parameter 'dev' description in 'fman_bind'
>
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--000000000000b6398605a80b38e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Also W=3D1 will enable documentation warnings. We can mov=
e that to default if we want people to take documentation seriously. Last t=
ime I tried it added about 700 warnings to the build and I didn&#39;t have =
the spoons to make a serious dent in fixing those warnings.<div dir=3D"auto=
"><br></div><div dir=3D"auto">Maybe _that_ would be a good beginner task be=
cause it doesn&#39;t take much in depth knowledge of any particular subsyst=
em.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Sat., Jun. 13, 2020, 12:57 Joe Perches, &lt;<a href=3D"mailto:j=
oe@perches.com">joe@perches.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Sat, 2020-06-13 at 18:42 +0200, Julia Lawall wrote:<br>
&gt; I tried collecting information about missing or incorrectly formatted<=
br>
&gt; function documentation using Coccinelle.=C2=A0 Here is an example of t=
he<br>
&gt; output:<br>
&gt; <br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: ex=
tra names mod, f_isr, h_src_arg<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: mi=
ssing name isr_cb<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: mi=
ssing name module<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: mi=
ssing name src_arg<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: re=
turn comment but no return value<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: =
extra names mod<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: =
missing name module<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: =
return comment but no return value<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2355 fman_get_revision: ret=
urn comment but no return value<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: extra names=
 dev<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: missing nam=
e fm_dev<br>
&gt; drivers/net/ethernet/freescale/fman/fman.c:2527 fman_has_errata_a05038=
5: no comment for fman_has_errata_a050385<br>
<br>
just fyi: scripts/kernel-doc already does:<br>
<br>
$ ./scripts/kernel-doc drivers/net/ethernet/freescale/fman/fman.c &gt; /dev=
/null<br>
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function paramete=
r or member &#39;module&#39; not described in &#39;fman_register_intr&#39;<=
br>
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function paramete=
r or member &#39;isr_cb&#39; not described in &#39;fman_register_intr&#39;<=
br>
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function paramete=
r or member &#39;src_arg&#39; not described in &#39;fman_register_intr&#39;=
<br>
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function p=
arameter &#39;mod&#39; description in &#39;fman_register_intr&#39;<br>
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function p=
arameter &#39;f_isr&#39; description in &#39;fman_register_intr&#39;<br>
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function p=
arameter &#39;h_src_arg&#39; description in &#39;fman_register_intr&#39;<br=
>
drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Function paramete=
r or member &#39;module&#39; not described in &#39;fman_unregister_intr&#39=
;<br>
drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Excess function p=
arameter &#39;mod&#39; description in &#39;fman_unregister_intr&#39;<br>
drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function paramete=
r or member &#39;fman&#39; not described in &#39;fman_get_revision&#39;<br>
drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function paramete=
r or member &#39;rev_info&#39; not described in &#39;fman_get_revision&#39;=
<br>
drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Function paramete=
r or member &#39;fm_dev&#39; not described in &#39;fman_bind&#39;<br>
drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Excess function p=
arameter &#39;dev&#39; description in &#39;fman_bind&#39;<br>
<br>
<br>
<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--000000000000b6398605a80b38e5--

--===============8435545610206022296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============8435545610206022296==--
