Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA6C433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 19:10:19 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73004206A1
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 19:10:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="0cdTmxTt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73004206A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5523D895D3;
	Thu,  9 Jul 2020 19:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X00k2pxPH-VW; Thu,  9 Jul 2020 19:10:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 671BD895B3;
	Thu,  9 Jul 2020 19:10:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 389A6C08A8;
	Thu,  9 Jul 2020 19:10:18 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 52050C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2F9A82D6BC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3zxszE6uZGo
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:10:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id B81EA2D68C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:10:15 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id w6so3448398ejq.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 09 Jul 2020 12:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B2fOhJGPsa38CdJ0J83JYaoOhOOC+ex2vBW2wQq+k5E=;
 b=0cdTmxTtN7+vfGyH8NbCnBkNvIefYWEOCIlOULHgTocPWhpUR6/lquU1AM7frwbSsP
 m0CPz6J5rTWe7lN8aZ+vVp63vR/vsivRWKjx3LkEwJLq0r34vVWl/m9Q49WhadgZ1F3H
 KU9NRQV59ND/Qi7KauBOq72P8MUjWsoMmusWgGHZGn523v5N35mWFyzdl/56JJuplODT
 pfSdf5u9oVvW5ZQ52mCBlrILAgqlrxb67ULxNsl7TfzTCRiYOgrRahKlqzzros2Yy9J8
 mayfwrw298Z+elPQbmB+JqgiIwz9WvnH+WLqB2wUQdGGppNqt5U5QQyml0TSb4NO+i4p
 9YkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B2fOhJGPsa38CdJ0J83JYaoOhOOC+ex2vBW2wQq+k5E=;
 b=S9d1qBn9MnWL3/jYR5eXjw93m2+Hf7Yo/3mfEwkCIwRkUALkNayZ5MDmishCiO5Sez
 j6kXe7qFlWZtZhSsE/uWAnW/p1hdtmnwV63KACYVUzRNy129M2G8Ymbco6tUKsCyB9x2
 jHczoQhk1IAqPxzJV+JDO2LVkXLuC/Keihl7IF/ikkA1WBb3REWHjIx3T1QZJbwsl78u
 4sQ+/4Rvd44GFqr+vX4xGGqCI+345xts29i65c27Lam8QnVhd34xKUwuammRrU8c64g9
 ceoP5gGoBRaB3HfSjrH/2tgkQPTj0TdRT5jBZq4pNevqWrmphafVMqO6zniqfXMvpQ9Z
 8P6g==
X-Gm-Message-State: AOAM531LFBdvB5H+N0wT5ouo5OKZMrx2NNUG3jA/5LGHZq4yfdmSwVMK
 QVg7sezt8Go55iOimyphO4hzRexPfDHYolghT/GN1w==
X-Google-Smtp-Source: ABdhPJz6e/Qh9nzMGDVNBdMj6Ao1a+kIvsOmRkQ9MF9Gyw0rlCHOGDj0lqFFJNRYxO4ZjpWCIaaHIlImKb6TqKt4bqM=
X-Received: by 2002:a17:906:f98e:: with SMTP id
 li14mr57482107ejb.174.1594321814142; 
 Thu, 09 Jul 2020 12:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <5be5abc9-c2db-1f96-bc29-61cd90d985ab@suse.com>
In-Reply-To: <5be5abc9-c2db-1f96-bc29-61cd90d985ab@suse.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 9 Jul 2020 12:10:03 -0700
Message-ID: <CAPcyv4j_c2FQa=iCFYJtyLTVXjMUFynOJ+2bw=fS3C1YSUk1ZQ@mail.gmail.com>
To: Matthias Brugger <mbrugger@suse.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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

On Thu, Jul 9, 2020 at 2:45 AM Matthias Brugger <mbrugger@suse.com> wrote:
>
>
>
> On 08/07/2020 20:14, Dan Williams wrote:
> > Linux maintains a coding-style and its own idiomatic set of terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
> >
> > Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > Acked-by: Dave Airlie <airlied@redhat.com>
> > Acked-by: SeongJae Park <sjpark@amazon.de>
> > Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> > Acked-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> > Reviewed-by: Mark Brown <broonie@kernel.org>
> > Signed-off-by: Theodore Ts'o <tytso@mit.edu>
> > Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Olof Johansson <olof@lixom.net>
> > Signed-off-by: Jonathan Corbet <corbet@lwn.net>
> > Signed-off-by: Chris Mason <clm@fb.com>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

Got it, thanks Matthias.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
