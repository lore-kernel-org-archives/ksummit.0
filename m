Return-Path: <SRS0=o/nk=AP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECA3CC433E1
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 23:42:02 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5A9821556
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 23:42:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kh0cIo/Z"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5A9821556
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CC0588331;
	Sat,  4 Jul 2020 23:42:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJy7l1t4+oUY; Sat,  4 Jul 2020 23:42:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1DC488328;
	Sat,  4 Jul 2020 23:42:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CB23C088C;
	Sat,  4 Jul 2020 23:42:01 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94816C0733;
 Sat,  4 Jul 2020 23:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D5968832B;
 Sat,  4 Jul 2020 23:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5rhFElfSEWPG; Sat,  4 Jul 2020 23:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A232E88328;
 Sat,  4 Jul 2020 23:41:59 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id rk21so38627632ejb.2;
 Sat, 04 Jul 2020 16:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sWyN/3WNtV7VRIdJ8FuzrwB0Ews8dbEmWLEqUU8aH3Y=;
 b=Kh0cIo/ZsIAxjW9Q//BSRJhntuBYewSUFD5usVcoOci+eW1UJqiUpT7+DYj5/t0dXU
 ptxDt8Kobg2fPoYCw8FZdCueMA9WI4np9bQslZPwKDlSJvdeOaoTsEcj+yzhc+Zj2teo
 tIhalQL4RV7zge44nchGuWcrdhEQ0vc5cOeyv3NBK7utaVLrwWbwHBEJDlNos/YyI2tX
 IypEXDqHEmHZFbz/Bk+8Qkszk5f+onYfU90ufaYONfD3/I9RjlBeLhr+j+KdLLo3jqd8
 fzFzttljI+WklUAHUyJZrP9vwN061KoXidBWAcVAzOcGeG1/IMULDziOIjTOK7idgyeR
 A5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sWyN/3WNtV7VRIdJ8FuzrwB0Ews8dbEmWLEqUU8aH3Y=;
 b=GfoijPblPOiFLaSlod2XJJ+h9BwzvHW8NUlWUmRxZWZKAEmMx39T2638qJ9t+hd3Dz
 kSxz7F9/kWfWo916xKDKFbO4Y8yBtV+Aeq1q1c2uEdhvuj64i3BT38s7aJmsZZIWV2ib
 f6E28gnAFFnMHlAROx3WGxZhmd7fjz2RjI7yXwYV4zlKwlesh71gE6Qf7MnUbggooCsq
 Py99Tns51S1InBcQDghMNw5dG0JIEJwMJ3b2TAz0YXG2z1CuvEpx/BCuZ2oQmikahz7m
 z6bI9ZmpejSISVI7F/hirS3sYnehODcVRm2hysQvKx0ArnpcRzVYe1eSrP7SiK4kc1g/
 rqtA==
X-Gm-Message-State: AOAM530j5g2C276i8W/J66ZSo+70QOpt8nxkArAzEB671BmKxx4zLmDW
 vsLufDz0cuIp8baSoW/4YCvcZUh14eV6JJU2saU=
X-Google-Smtp-Source: ABdhPJwWS0Ma5bRs5z3IeTaszufOAuFwKp2kgb8VjlRm/RwxTJR6CiDakIznepbcBwH7i8b/fobZciNMZO2mDh57nT8=
X-Received: by 2002:a17:906:f88a:: with SMTP id
 lg10mr37142718ejb.317.1593906118215; 
 Sat, 04 Jul 2020 16:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
In-Reply-To: <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
From: Dave Airlie <airlied@gmail.com>
Date: Sun, 5 Jul 2020 09:41:47 +1000
Message-ID: <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

'. Colors to represent a policy requires an indirection. The
>
> how about:
>               Using colors to represent a policy requires an indirection.

I'd totally submit that red/black trees while in no way racist, are a
horrible indirection, as it means nothing if you've never interacted
with gambling culture, (and maybe James Bond movies).

left/right trees make naturally more sense and translate into more
languages, so yes I think removal of color naming is a good thing even
for non-racist reasonings.

Dave.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
