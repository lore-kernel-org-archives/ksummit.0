Return-Path: <SRS0=QNS2=FH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,HTML_MESSAGE,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47133C4361A
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 18:52:42 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB85C208A9
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 18:52:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB85C208A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D180E87C34;
	Thu,  3 Dec 2020 18:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12i3Q4Bz3NGJ; Thu,  3 Dec 2020 18:52:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B6B787BE5;
	Thu,  3 Dec 2020 18:52:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 269B4C0FA8;
	Thu,  3 Dec 2020 18:52:39 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EA57CC0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 18:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D8DC187526
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 18:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJreOEgr20qL
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 18:52:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0F0E87521
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 18:52:36 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id b62so2763914otc.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 03 Dec 2020 10:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2TLOpmotlVqLREYnECMTviSlqUaeTSsQt/6L05altO0=;
 b=F7TFSdtebAI2k4IEnSc8M4mnG6j7LHqixA1N6S06mb8pCVH730S5RxED9bILdTU3Yb
 kQIK85aFNo2XwDMtMyhPmipSRWJXFmJsWEKZ29Gf9fC1KUcBddMfwg5WnVKWABTE3OBh
 E/v2NTocX/GpXv2GHx///P+5SxZTaYXmGxhXEhrpQBVOS01ZbLWnlD0fiBAn0Xo3ZfFw
 pcxtZ++mtUTMp35Nv2ilG5SgVEJQTqvHh3coG4kSqgnqDOxnKXhMwBBdZog0ZrrWVUC6
 Zvbap+ROOyj17WCTFvh0elxVwTSgejzvu8y65lb9YxzBNH1N5GsvzOk0+9CAnlS1b9AK
 RheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2TLOpmotlVqLREYnECMTviSlqUaeTSsQt/6L05altO0=;
 b=DBIEKGkl/TeqKIaumOOugZQPPgo+MfB3rWmFj2jjV5osSMBTWffsZPwmWmv/lPCEQl
 yaKpMn2RoImujq2fUoV7Ttcr+dpaATBN6kvQ66NedmO9zV1FfZEa2f0lNHQyH8nifGO9
 skADWLxYPOjrUIoEolExPWXs+Ms/MlccOCl27y+BVgp6DPJIUnyFYc+Atwnkt/DENG5T
 pBsjP/m/3iry45Et3b4VZe8Pley5s61K6R1uojroqykCrOb2NvsH4D/PDu4gQWR6OjOQ
 Jx/OJSkv1Oj0Kf6WImkgVPU3Bg2TiorHqfcBGAJioHUSZ93j4EpNNrG8s1w5YTpbTxHO
 d7yQ==
X-Gm-Message-State: AOAM530nuxFOoELL28O3VPo1zG/EaIJwOAtDOgyp6ntYE6ysdkq5JqMi
 Ssz7J+4esG+9j8RV887XFF9xU1g/rKh/LO6adCI=
X-Google-Smtp-Source: ABdhPJxeJrUKL+TO39Qp/rJE8p6Z/nLetzcnIqNvLs6zbGCgJBzXx2jpLuTlbVuxJ+o9TksBpNogGmggRwhGra6v7nI=
X-Received: by 2002:a9d:5a9:: with SMTP id 38mr469994otd.173.1607021556245;
 Thu, 03 Dec 2020 10:52:36 -0800 (PST)
MIME-Version: 1.0
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
In-Reply-To: <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Thu, 3 Dec 2020 13:52:25 -0500
Message-ID: <CAFhKne9ZSbwrH6-g7og2BBEEDGd6ScDnZTNg3znQLvLDCDfeoA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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
Content-Type: multipart/mixed; boundary="===============0775012725394655299=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============0775012725394655299==
Content-Type: multipart/alternative; boundary="00000000000001a80f05b593dd78"

--00000000000001a80f05b593dd78
Content-Type: text/plain; charset="UTF-8"

It's not so much "clean history" that's the desire. It's "don't leave
landmines for git bisect".

On Thu., Dec. 3, 2020, 08:58 James Bottomley, <
James.Bottomley@hansenpartnership.com> wrote:

> On Thu, 2020-12-03 at 00:43 +0100, Vlastimil Babka wrote:
> > Hi,
> >
> > there was a bit of debate on Twitter about this, so I thought I would
> > bring it here. Imagine a scenario where patch sits as a commit in
> > -next and there's a bug report or fix, possibly by a bot or with some
> > static analysis. The maintainer decides to fold it into the original
> > patch, which makes sense for e.g. bisectability. But there seem to be
> > no clear rules about attribution in this case, which looks like there
> > should be, probably in
> > Documentation/maintainer/modifying-patches.rst
> >
> > The original bug fix might include a From: $author, a Reported-by:
> > (e.g. syzbot), Fixes: $next-commit, some tag such as Addresses-
> > Coverity: to credit the static analysis tool, and an SoB. After
> > folding, all that's left might be a line as "include fix from
> > $author" in the SoB area. This is a loss of metadata/attribution just
> > due to folding, and might make contributors unhappy. Had they sent
> > the fix after the original commit was mainline and immutable, all
> > the info above would "survive" in the form of new commit.
>
> It has been the case since forever that discussion which improves an
> uncommitted patch is only captured in email (which now may be preserved
> in a link tag).  Patch updates that come in after the patch is
> committed get their own commit.  We've tried to move people away from
> counting commits as an indicator of upstream eminence, but it's still a
> fact of life that this is what matters to a lot of open source
> community managers.  The tension we have is between liking a clean
> commit in the tree as opposed to a sequence of commits tracking the
> evolution of the patch and this community manager desire to track
> patches.
>
> So there are two embedded questions here: firstly, should we be as
> wedded to clean history as we are, because showing the evolution would
> simply solve this?  Secondly, if we are agreed on clean history, how
> can we make engagement via email as important as engagement via commit
> for the community managers so the Link tag is enough?  I've got to say
> I think trying to add tags to recognize patch evolution is a mistake
> and we instead investigate one of the two proposals above.
>
> James
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--00000000000001a80f05b593dd78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It&#39;s not so much &quot;clean history&quot; that&#39;s=
 the desire. It&#39;s &quot;don&#39;t leave landmines for git bisect&quot;.=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu., Dec. 3, 2020, 08:58 James Bottomley, &lt;<a href=3D"mailto:James.B=
ottomley@hansenpartnership.com">James.Bottomley@hansenpartnership.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, 2020-12-03 at 00:=
43 +0100, Vlastimil Babka wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; there was a bit of debate on Twitter about this, so I thought I would<=
br>
&gt; bring it here. Imagine a scenario where patch sits as a commit in<br>
&gt; -next and there&#39;s a bug report or fix, possibly by a bot or with s=
ome<br>
&gt; static analysis. The maintainer decides to fold it into the original<b=
r>
&gt; patch, which makes sense for e.g. bisectability. But there seem to be<=
br>
&gt; no clear rules about attribution in this case, which looks like there<=
br>
&gt; should be, probably in<br>
&gt; Documentation/maintainer/modifying-patches.rst<br>
&gt; <br>
&gt; The original bug fix might include a From: $author, a Reported-by:<br>
&gt; (e.g. syzbot), Fixes: $next-commit, some tag such as Addresses-<br>
&gt; Coverity: to credit the static analysis tool, and an SoB. After<br>
&gt; folding, all that&#39;s left might be a line as &quot;include fix from=
<br>
&gt; $author&quot; in the SoB area. This is a loss of metadata/attribution =
just<br>
&gt; due to folding, and might make contributors unhappy. Had they sent<br>
&gt; the fix after the original commit was mainline and immutable, all<br>
&gt; the info above would &quot;survive&quot; in the form of new commit.<br=
>
<br>
It has been the case since forever that discussion which improves an<br>
uncommitted patch is only captured in email (which now may be preserved<br>
in a link tag).=C2=A0 Patch updates that come in after the patch is<br>
committed get their own commit.=C2=A0 We&#39;ve tried to move people away f=
rom<br>
counting commits as an indicator of upstream eminence, but it&#39;s still a=
<br>
fact of life that this is what matters to a lot of open source<br>
community managers.=C2=A0 The tension we have is between liking a clean<br>
commit in the tree as opposed to a sequence of commits tracking the<br>
evolution of the patch and this community manager desire to track<br>
patches.<br>
<br>
So there are two embedded questions here: firstly, should we be as<br>
wedded to clean history as we are, because showing the evolution would<br>
simply solve this?=C2=A0 Secondly, if we are agreed on clean history, how<b=
r>
can we make engagement via email as important as engagement via commit<br>
for the community managers so the Link tag is enough?=C2=A0 I&#39;ve got to=
 say<br>
I think trying to add tags to recognize patch evolution is a mistake<br>
and we instead investigate one of the two proposals above.<br>
<br>
James<br>
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

--00000000000001a80f05b593dd78--

--===============0775012725394655299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============0775012725394655299==--
