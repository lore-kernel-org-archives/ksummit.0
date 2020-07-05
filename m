Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,HTML_MESSAGE,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FBFEC433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 00:12:39 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C69F20826
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 00:12:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fqV/Pu1r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C69F20826
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDA2688353;
	Sun,  5 Jul 2020 00:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCWydhUWC8Ck; Sun,  5 Jul 2020 00:12:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D35B88408;
	Sun,  5 Jul 2020 00:12:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11348C08A5;
	Sun,  5 Jul 2020 00:12:36 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BBCF6C0733;
 Sun,  5 Jul 2020 00:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D20F2014B;
 Sun,  5 Jul 2020 00:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6MqlQjVeaSX; Sun,  5 Jul 2020 00:12:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 38FF320133;
 Sun,  5 Jul 2020 00:12:33 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id k22so18029682oib.0;
 Sat, 04 Jul 2020 17:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LLIUl2koqCGdfwy2KEnjnnykMT90sMz2jgkhlPFYSLA=;
 b=fqV/Pu1rftyPZHPWpiX0JQ2xjEytoM1Q3dairCT12uwwqH3SuM8hyhN3QQGHYyrQoy
 pN+TqjHifQlCk7Dm8a4g5xxf7sOogl0Z8lyILVXLKgn2njpD2t+bRTpDWtgDF4jVpbr/
 ml3UeUxIMmYhjpLCCou7GllmRrXcf4+HA8kTpNuCU2hq3THPTRGszAiaC/J3le+gVbK2
 Ydllj1S2r9BHx+8EEWCwQBoF0XyJLlI2yDBVYUyUK6gbxl65f5sj41C0WNLlSi+8bfRs
 V0/l/0Sr4nmaeAJqY/iWKSUTiC9nAzUbmjgEZ+805CVIbbmftlTfodG5XE7rEeMc6Sc4
 RX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LLIUl2koqCGdfwy2KEnjnnykMT90sMz2jgkhlPFYSLA=;
 b=pWBeFXe8XX9WRblYDZcg5IOv+L1KjS3oka0p0IPgA5SewvsX00q2OhdLRT+SuLcm4l
 BL2r9KMATNvHsZsiKRc3RSE9KZUJyfiQCw75irEmTSxKCVLrcubA5SD7mZAS0FHAF1Yt
 TwXoZ42CJcM4/4MOgrABBWmibpVZbX+e1hT06IbWeztGPcGTqwmQ6Df/FTCqcZ60/gI3
 qCk7qBJCSO35SZp1Ru9CeXIhtJxiMvVIq5+QfHO3YgiSA/VwxvidFYQQgUQU5p6/g4CW
 D0ohHHJViWNOP4yyp8OqKvXo3Gqsv1opEkVYxXi3Z6yilwegKZQGMk3vU4XJN0JQZSTc
 tWTw==
X-Gm-Message-State: AOAM530My3uP3L9pj4HAZ6Uvp/Smdwl135R5Pgh91woUqShSpGPj+7kk
 E1AMDn/JxL8JDtYpE9fUyEU5xAQJPYgo98RoIcQ=
X-Google-Smtp-Source: ABdhPJy14RJpIXaRlxBZY6BDlSVj8dhed2+DYKohyLC5iDCTGirXZgttkh+4LyYwWVnjUR45R5kO0s9OlpTrjbpBTOE=
X-Received: by 2002:a05:6808:88:: with SMTP id
 s8mr15583947oic.101.1593907952413; 
 Sat, 04 Jul 2020 17:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Sat, 4 Jul 2020 20:12:21 -0400
Message-ID: <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
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
Content-Type: multipart/mixed; boundary="===============7271633513328101142=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============7271633513328101142==
Content-Type: multipart/alternative; boundary="0000000000004eef4405a9a69d11"

--0000000000004eef4405a9a69d11
Content-Type: text/plain; charset="UTF-8"

Another suggestion for "slave" replacement should be "device". This is in
the context of the w1 bus which is by far the largest user of the
master/slave terminology in the kernel.

On Sat., Jul. 4, 2020, 16:19 Dan Williams, <dan.j.williams@intel.com> wrote:

> Recent events have prompted a Linux position statement on inclusive
> terminology. Given that Linux maintains a coding-style and its own
> idiomatic set of terminology here is a proposal to answer the call to
> replace non-inclusive terminology.
>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  Documentation/process/coding-style.rst          |   12 ++++
>  Documentation/process/inclusive-terminology.rst |   64
> +++++++++++++++++++++++
>  Documentation/process/index.rst                 |    1
>  3 files changed, 77 insertions(+)
>  create mode 100644 Documentation/process/inclusive-terminology.rst
>
> diff --git a/Documentation/process/coding-style.rst
> b/Documentation/process/coding-style.rst
> index 2657a55c6f12..4b15ab671089 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable
> names, you have another
>  problem, which is called the function-growth-hormone-imbalance syndrome.
>  See chapter 6 (Functions).
>
> +For symbol names, avoid introducing new usage of the words 'slave' and
> +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
> +'denylist'.
> +
> +Exceptions for introducing new usage is to maintain a userspace ABI, or
> +when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications consider
> +translating specification usage of the terminology to the kernel coding
> +standard where possible. See :ref:`process/inclusive-terminology.rst
> +<inclusiveterminology>` for details.
>
>  5) Typedefs
>  -----------
> diff --git a/Documentation/process/inclusive-terminology.rst
> b/Documentation/process/inclusive-terminology.rst
> new file mode 100644
> index 000000000000..a8eb26690eb4
> --- /dev/null
> +++ b/Documentation/process/inclusive-terminology.rst
> @@ -0,0 +1,64 @@
> +.. _inclusiveterminology:
> +
> +Linux kernel inclusive terminology
> +==================================
> +
> +The Linux kernel is a global software project, and in 2020 there was a
> +global reckoning on race relations that caused many organizations to
> +re-evaluate their policies and practices relative to the inclusion of
> +people of African descent. This document describes why the 'Naming'
> +section in :ref:`process/coding-style.rst <codingstyle>` recommends
> +avoiding usage of 'slave' and 'blacklist' in new additions to the Linux
> +kernel.
> +
> +On the triviality of replacing words
> +====================================
> +
> +The African slave trade was a brutal system of human misery deployed at
> +global scale. Some word choice decisions in a modern software project
> +does next to nothing to compensate for that legacy. So why put any
> +effort into something so trivial in comparison? Because the goal is not
> +to repair, or erase the past. The goal is to maximize availability and
> +efficiency of the global developer community to participate in the Linux
> +kernel development process.
> +
> +Word choice and developer efficiency
> +====================================
> +
> +Why does any software project go through the trouble of developing a
> +document like :ref:`process/coding-style.rst <codingstyle>`? It does so
> +because a common coding style maximizes the efficiency of both
> +maintainers and developers. Developers learn common design patterns and
> +idiomatic expressions while maintainers can spot deviations from those
> +norms. Even non-compliant whitespace is considered a leading indicator
> +to deeper problems in a patchset. Coding style violations are known to
> +take a maintainer "out of the zone" of reviewing code. Maintainers are
> +also sensitive to word choice across specifications and often choose to
> +deploy Linux terminology to replace non-idiomatic word-choice in a
> +specification.
> +
> +Non-inclusive terminology has that same distracting effect which is why
> +it is a style issue for Linux, it injures developer efficiency.
> +
> +Of course it is around this point someone jumps in with an etymological
> +argument about why people should not be offended. Etymological arguments
> +do not scale. The scope and pace of Linux to reach new developers
> +exceeds the ability of historical terminology defenders to describe "no,
> +not that connotation". The revelation of 2020 was that black voices were
> +heard on a global scale and the Linux kernel project has done its small
> +part to answer that call as it wants black voices, among all voices, in
> +its developer community.
> +
> +Really, 'blacklist' too?
> +========================
> +
> +While 'slave' has a direct connection to human suffering the etymology
> +of 'blacklist' is devoid of a historical racial connection. However, one
> +thought exercise is to consider replacing 'blacklist/whitelist' with
> +'redlist/greenlist'. Realize that the replacement only makes sense if
> +you have been socialized with the concepts that 'red/green' implies
> +'stop/go'. Colors to represent a policy requires an indirection. The
> +socialization of 'black/white' to have the connotation of
> +'impermissible/permissible' does not support inclusion.
> +
> +Inclusion == global developer community efficiency.
> diff --git a/Documentation/process/index.rst
> b/Documentation/process/index.rst
> index f07c9250c3ac..ed861f6f8d25 100644
> --- a/Documentation/process/index.rst
> +++ b/Documentation/process/index.rst
> @@ -27,6 +27,7 @@ Below are the essential guides that every developer
> should read.
>     submitting-patches
>     programming-language
>     coding-style
> +   inclusive-terminology
>     maintainer-pgp-guide
>     email-clients
>     kernel-enforcement-statement
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--0000000000004eef4405a9a69d11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Another suggestion for &quot;slave&quot; replacement shou=
ld be &quot;device&quot;. This is in the context of the w1 bus which is by =
far the largest user of the master/slave terminology in the kernel.</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat.,=
 Jul. 4, 2020, 16:19 Dan Williams, &lt;<a href=3D"mailto:dan.j.williams@int=
el.com">dan.j.williams@intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Recent events have prompted a Linux position statement on inc=
lusive<br>
terminology. Given that Linux maintains a coding-style and its own<br>
idiomatic set of terminology here is a proposal to answer the call to<br>
replace non-inclusive terminology.<br>
<br>
Cc: Jonathan Corbet &lt;<a href=3D"mailto:corbet@lwn.net" target=3D"_blank"=
 rel=3D"noreferrer">corbet@lwn.net</a>&gt;<br>
Cc: Kees Cook &lt;<a href=3D"mailto:keescook@chromium.org" target=3D"_blank=
" rel=3D"noreferrer">keescook@chromium.org</a>&gt;<br>
Signed-off-by: Chris Mason &lt;clm@fb.clm&gt;<br>
Signed-off-by: Greg Kroah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundat=
ion.org" target=3D"_blank" rel=3D"noreferrer">gregkh@linuxfoundation.org</a=
>&gt;<br>
Signed-off-by: Dan Williams &lt;<a href=3D"mailto:dan.j.williams@intel.com"=
 target=3D"_blank" rel=3D"noreferrer">dan.j.williams@intel.com</a>&gt;<br>
---<br>
=C2=A0Documentation/process/coding-style.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A012 ++++<br>
=C2=A0Documentation/process/inclusive-terminology.rst |=C2=A0 =C2=A064 ++++=
+++++++++++++++++++<br>
=C2=A0Documentation/process/index.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 <br>
=C2=A03 files changed, 77 insertions(+)<br>
=C2=A0create mode 100644 Documentation/process/inclusive-terminology.rst<br=
>
<br>
diff --git a/Documentation/process/coding-style.rst b/Documentation/process=
/coding-style.rst<br>
index 2657a55c6f12..4b15ab671089 100644<br>
--- a/Documentation/process/coding-style.rst<br>
+++ b/Documentation/process/coding-style.rst<br>
@@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names,=
 you have another<br>
=C2=A0problem, which is called the function-growth-hormone-imbalance syndro=
me.<br>
=C2=A0See chapter 6 (Functions).<br>
<br>
+For symbol names, avoid introducing new usage of the words &#39;slave&#39;=
 and<br>
+&#39;blacklist&#39;. Recommended replacements for &#39;slave&#39; are: &#3=
9;secondary&#39;,<br>
+&#39;subordinate&#39;, &#39;replica&#39;, &#39;responder&#39;, &#39;follow=
er&#39;, &#39;proxy&#39;, or<br>
+&#39;performer&#39;.=C2=A0 Recommended replacements for blacklist are: &#3=
9;blocklist&#39; or<br>
+&#39;denylist&#39;.<br>
+<br>
+Exceptions for introducing new usage is to maintain a userspace ABI, or<br=
>
+when updating code for an existing (as of 2020) hardware or protocol<br>
+specification that mandates those terms. For new specifications consider<b=
r>
+translating specification usage of the terminology to the kernel coding<br=
>
+standard where possible. See :ref:`process/inclusive-terminology.rst<br>
+&lt;inclusiveterminology&gt;` for details.<br>
<br>
=C2=A05) Typedefs<br>
=C2=A0-----------<br>
diff --git a/Documentation/process/inclusive-terminology.rst b/Documentatio=
n/process/inclusive-terminology.rst<br>
new file mode 100644<br>
index 000000000000..a8eb26690eb4<br>
--- /dev/null<br>
+++ b/Documentation/process/inclusive-terminology.rst<br>
@@ -0,0 +1,64 @@<br>
+.. _inclusiveterminology:<br>
+<br>
+Linux kernel inclusive terminology<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+<br>
+The Linux kernel is a global software project, and in 2020 there was a<br>
+global reckoning on race relations that caused many organizations to<br>
+re-evaluate their policies and practices relative to the inclusion of<br>
+people of African descent. This document describes why the &#39;Naming&#39=
;<br>
+section in :ref:`process/coding-style.rst &lt;codingstyle&gt;` recommends<=
br>
+avoiding usage of &#39;slave&#39; and &#39;blacklist&#39; in new additions=
 to the Linux<br>
+kernel.<br>
+<br>
+On the triviality of replacing words<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+<br>
+The African slave trade was a brutal system of human misery deployed at<br=
>
+global scale. Some word choice decisions in a modern software project<br>
+does next to nothing to compensate for that legacy. So why put any<br>
+effort into something so trivial in comparison? Because the goal is not<br=
>
+to repair, or erase the past. The goal is to maximize availability and<br>
+efficiency of the global developer community to participate in the Linux<b=
r>
+kernel development process.<br>
+<br>
+Word choice and developer efficiency<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+<br>
+Why does any software project go through the trouble of developing a<br>
+document like :ref:`process/coding-style.rst &lt;codingstyle&gt;`? It does=
 so<br>
+because a common coding style maximizes the efficiency of both<br>
+maintainers and developers. Developers learn common design patterns and<br=
>
+idiomatic expressions while maintainers can spot deviations from those<br>
+norms. Even non-compliant whitespace is considered a leading indicator<br>
+to deeper problems in a patchset. Coding style violations are known to<br>
+take a maintainer &quot;out of the zone&quot; of reviewing code. Maintaine=
rs are<br>
+also sensitive to word choice across specifications and often choose to<br=
>
+deploy Linux terminology to replace non-idiomatic word-choice in a<br>
+specification.<br>
+<br>
+Non-inclusive terminology has that same distracting effect which is why<br=
>
+it is a style issue for Linux, it injures developer efficiency.<br>
+<br>
+Of course it is around this point someone jumps in with an etymological<br=
>
+argument about why people should not be offended. Etymological arguments<b=
r>
+do not scale. The scope and pace of Linux to reach new developers<br>
+exceeds the ability of historical terminology defenders to describe &quot;=
no,<br>
+not that connotation&quot;. The revelation of 2020 was that black voices w=
ere<br>
+heard on a global scale and the Linux kernel project has done its small<br=
>
+part to answer that call as it wants black voices, among all voices, in<br=
>
+its developer community.<br>
+<br>
+Really, &#39;blacklist&#39; too?<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<b=
r>
+<br>
+While &#39;slave&#39; has a direct connection to human suffering the etymo=
logy<br>
+of &#39;blacklist&#39; is devoid of a historical racial connection. Howeve=
r, one<br>
+thought exercise is to consider replacing &#39;blacklist/whitelist&#39; wi=
th<br>
+&#39;redlist/greenlist&#39;. Realize that the replacement only makes sense=
 if<br>
+you have been socialized with the concepts that &#39;red/green&#39; implie=
s<br>
+&#39;stop/go&#39;. Colors to represent a policy requires an indirection. T=
he<br>
+socialization of &#39;black/white&#39; to have the connotation of<br>
+&#39;impermissible/permissible&#39; does not support inclusion.<br>
+<br>
+Inclusion =3D=3D global developer community efficiency.<br>
diff --git a/Documentation/process/index.rst b/Documentation/process/index.=
rst<br>
index f07c9250c3ac..ed861f6f8d25 100644<br>
--- a/Documentation/process/index.rst<br>
+++ b/Documentation/process/index.rst<br>
@@ -27,6 +27,7 @@ Below are the essential guides that every developer shoul=
d read.<br>
=C2=A0 =C2=A0 submitting-patches<br>
=C2=A0 =C2=A0 programming-language<br>
=C2=A0 =C2=A0 coding-style<br>
+=C2=A0 =C2=A0inclusive-terminology<br>
=C2=A0 =C2=A0 maintainer-pgp-guide<br>
=C2=A0 =C2=A0 email-clients<br>
=C2=A0 =C2=A0 kernel-enforcement-statement<br>
<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--0000000000004eef4405a9a69d11--

--===============7271633513328101142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============7271633513328101142==--
