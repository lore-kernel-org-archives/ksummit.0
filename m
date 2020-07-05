Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,HTML_MESSAGE,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3115C433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 00:10:51 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CBB820870
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 00:10:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QUj/PKjN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6CBB820870
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20D22876AA;
	Sun,  5 Jul 2020 00:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TiwqoHlDLLLc; Sun,  5 Jul 2020 00:10:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A77886A59;
	Sun,  5 Jul 2020 00:10:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49E6DC08A6;
	Sun,  5 Jul 2020 00:10:50 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7C92CC0733;
 Sun,  5 Jul 2020 00:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70D4722658;
 Sun,  5 Jul 2020 00:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0l3eg-1pgcUZ; Sun,  5 Jul 2020 00:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CEC32262E;
 Sun,  5 Jul 2020 00:10:47 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id 95so18484734otw.10;
 Sat, 04 Jul 2020 17:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AAfvD7eVUzykpqTaydQQI48xJpTAV1lbxBxPht4H96U=;
 b=QUj/PKjNgozBmv2sAuPUPnOlMX/emem4MsXvBMPpj7opOz960SIeDY55KmJvUnEdMI
 0DCfxdAo+ZUPGZb5xGL6Pw5A04K14pXnxR+IOJNSEQLA/7+9krrk4ctECZSv3HhoqAt+
 Y8xBAv2qiA7jbXOptaVcmK2c5xtTtAzLl0P8vxy81sKxDee8M3sywC6Q2ss4nvaoIFLr
 gvhIJi8dlNkppW8RFqxn1xNP7HwQu/LZXcV4ClADkbpLhb/5zum9sDtSBTErONNRspGu
 LGimdttxOUYQjAedcAGCuvU8hiHk5FYWZXNYMdqWYMMWVpCPX11YV2hZnglbZE8rF3Ze
 SSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AAfvD7eVUzykpqTaydQQI48xJpTAV1lbxBxPht4H96U=;
 b=Y8WHl5U1CXLDhclEnipNvybpi+CVwdT6pCzDcCA6MLUHTJggTcJ+CW0phSahJnWitc
 Z0oHehA3zkAg/hzDwsi6f9XYARzhxC86d6bBB7H/ckrp0EGFp4ic8Zkbdg0sN6gjrRMe
 o/YtNfTTITzIzsEFaenMq3e+FVkRL6Pwre24cTUdpxamxBxtC5zo5DywCDKikhCgtYTF
 s/Njzx4oInjWXxrgV+G5OHUHDTt9Hx8Pks8FzMjfXuZdDZHomP61tsOoJSOPc5GKHeZS
 30PahneZWz7Yi3EcJRho0O+E+JEFS18/+fFMOx1BA5zQe1/Jk0pRang9I0BNoNjq/5u4
 17MA==
X-Gm-Message-State: AOAM532U9N+DcArFV8eHrxcP7WLkAaaqgn2qfTWVRQr8AFF3ysvScaDr
 8iAD+gSjNtX/nJHsWMtQLX7wYbnHkiphfNvcUhE=
X-Google-Smtp-Source: ABdhPJx4P9xmjxbshaRZ038bQLfWtJruGUTpuYqvvf/NdpzL1WljsizMm2LPGPUMc1qfAJqlQysj/qLd+xMieg17ssg=
X-Received: by 2002:a9d:424:: with SMTP id 33mr19473364otc.76.1593907846387;
 Sat, 04 Jul 2020 17:10:46 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
 <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
In-Reply-To: <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Sat, 4 Jul 2020 20:10:33 -0400
Message-ID: <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
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
Content-Type: multipart/mixed; boundary="===============5092817359549992651=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============5092817359549992651==
Content-Type: multipart/alternative; boundary="000000000000fd19d205a9a696ba"

--000000000000fd19d205a9a696ba
Content-Type: text/plain; charset="UTF-8"

Erm, red-black trees don't have a derivation from gambling terminology
either. The wikipedia article says:

In a 1978 paper, "A Dichromatic Framework for Balanced Trees",[6] Leonidas
J. Guibas and Robert Sedgewick derived the red-black tree from the
symmetric binary B-tree.[7] The color "red" was chosen because it was the
best-looking color produced by the color laser printer available to the
authors while working at Xerox PARC.[8] Another response from Guibas states
that it was because of the red and black pens available to them to draw the
trees.[9]

Left-right tree makes no sense. It doesn't distinguish the rbtree from its
predecessor the avl tree.  I don't think it's helpful to rename a standard
piece of computing terminology unless it's actually hurting us to have it.
Obviously if it were called a "master-slave" tree, I would be in favour of
renaming it.

On Sat., Jul. 4, 2020, 19:42 Dave Airlie, <airlied@gmail.com> wrote:

> '. Colors to represent a policy requires an indirection. The
> >
> > how about:
> >               Using colors to represent a policy requires an indirection.
>
> I'd totally submit that red/black trees while in no way racist, are a
> horrible indirection, as it means nothing if you've never interacted
> with gambling culture, (and maybe James Bond movies).
>
> left/right trees make naturally more sense and translate into more
> languages, so yes I think removal of color naming is a good thing even
> for non-racist reasonings.
>
> Dave.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--000000000000fd19d205a9a696ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Erm, red-black trees don&#39;t have a derivation from gam=
bling terminology either. The wikipedia article says:<div dir=3D"auto"><br>=
</div><div dir=3D"auto">In a 1978 paper, &quot;A Dichromatic Framework for =
Balanced Trees&quot;,[6] Leonidas J. Guibas and Robert Sedgewick derived th=
e red-black tree from the symmetric binary B-tree.[7] The color &quot;red&q=
uot; was chosen because it was the best-looking color produced by the color=
 laser printer available to the authors while working at Xerox PARC.[8] Ano=
ther response from Guibas states that it was because of the red and black p=
ens available to them to draw the trees.[9]<br></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Left-right tree makes no sense. It doesn&#39;t dist=
inguish the rbtree from its predecessor the avl tree.=C2=A0 I don&#39;t thi=
nk it&#39;s helpful to rename a standard piece of computing terminology unl=
ess it&#39;s actually hurting us to have it. Obviously if it were called a =
&quot;master-slave&quot; tree, I would be in favour of renaming it.</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sat., Jul. 4, 2020, 19:42 Dave Airlie, &lt;<a href=3D"mailto:airlied@gmail=
.com">airlied@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">&#39;. Colors to represent a policy requires an indirection. The<br>
&gt;<br>
&gt; how about:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Using colors to =
represent a policy requires an indirection.<br>
<br>
I&#39;d totally submit that red/black trees while in no way racist, are a<b=
r>
horrible indirection, as it means nothing if you&#39;ve never interacted<br=
>
with gambling culture, (and maybe James Bond movies).<br>
<br>
left/right trees make naturally more sense and translate into more<br>
languages, so yes I think removal of color naming is a good thing even<br>
for non-racist reasonings.<br>
<br>
Dave.<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--000000000000fd19d205a9a696ba--

--===============5092817359549992651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============5092817359549992651==--
