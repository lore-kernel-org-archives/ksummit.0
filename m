Return-Path: <SRS0=QNS2=FH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50414C63777
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 04:02:41 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B58A221D7A
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 04:02:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B58A221D7A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D2C062040E;
	Thu,  3 Dec 2020 04:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzkTngnK73RZ; Thu,  3 Dec 2020 04:02:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 74764203EE;
	Thu,  3 Dec 2020 04:02:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 357B5C0FA8;
	Thu,  3 Dec 2020 04:02:36 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77520C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 04:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D33187652
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 04:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OHElPktcNclW
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 04:02:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B39A873E6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 04:02:33 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id g20so1434030ejb.1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 02 Dec 2020 20:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FRmp5HqhPLGN2wPmX9L3DuKRGCI0S5P9+p2ESlsHTAM=;
 b=yM+hbwJ36D/TYAUeZ3O30jzREK/jVR9brUei9BDukg0w08FYtWh/Qug2wO456yLgfp
 jvHp+FbGBpkWrruqNUc3XB6SJWEUTLLPyZJ4NoAqIkivZtDl7g84h2I+qh1Tc2UKG31Z
 aYZ+UsaUDuCh2hoTASBZ5lcCOyi3uvnJrRqljImr+pOuXXpuinuHcix1AIcPAxNrguu+
 qesnH7oIXdcSMK8jjQgB/QG0+6UmLu778AuIc4GNUMQwhSt+lywOyZ73AwLIHkV3x07C
 PiPpfKMPOAxajoZuDN0ju+w3mq29U1gpopsr28rpLlVJBLayNGhOktN7I7QmQMJEcviB
 BJQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FRmp5HqhPLGN2wPmX9L3DuKRGCI0S5P9+p2ESlsHTAM=;
 b=Ud76dxxIAkbV6fP7+jSmY0Zw//kebFBK2xBwQSr1sPWPItXz47sqmGv4AtCcF/a3+4
 4PFI5OffRncB0EPghuze4RbNcpVSbHH3uEQAcccuiDOuoaR8LO01FBPzN/Wgc/RaxH7U
 yTMaRIHOu4tGBniUSZnFQ7kdo8CR6ZosxfvnJlOagOICJetYQV+YeR1pjj07GC+Dp7lk
 6usIHnkTjxxB7cdXMse1gFZhNIJ8Rn9zTNWFREdFyXzEBZ3+DwBi719CwCsv0F1askWT
 zZy9s3desYpuRe3xNCg6FtEoFmwKoTMUJSOTzrpWHpPuxy/IbFvq89xqNY+yP6pHfQPX
 155Q==
X-Gm-Message-State: AOAM532AettLbSWufn64NpSTVTjDC97Grui1jnbOiScqickayTL34h+9
 NF/r7APqvto/u6TU3IvI0dVz8YF6rEvi4WWucWiovA==
X-Google-Smtp-Source: ABdhPJz8lTotrwgwkMAe4sN9k99aQ0CNk+3DhdhJIcU2FwxmpkrPaO+HwFYlT1nUoFBGEPS9/e4cQ19zU35f5Fedh28=
X-Received: by 2002:a17:906:518a:: with SMTP id
 y10mr887972ejk.323.1606968151661; 
 Wed, 02 Dec 2020 20:02:31 -0800 (PST)
MIME-Version: 1.0
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
In-Reply-To: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 2 Dec 2020 20:02:27 -0800
Message-ID: <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: LKML <linux-kernel@vger.kernel.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed, Dec 2, 2020 at 3:44 PM Vlastimil Babka <vbabka@suse.cz> wrote:
>
> Hi,
>
> there was a bit of debate on Twitter about this, so I thought I would bring it
> here. Imagine a scenario where patch sits as a commit in -next and there's a bug
> report or fix, possibly by a bot or with some static analysis. The maintainer
> decides to fold it into the original patch, which makes sense for e.g.
> bisectability. But there seem to be no clear rules about attribution in this
> case, which looks like there should be, probably in
> Documentation/maintainer/modifying-patches.rst
>
> The original bug fix might include a From: $author, a Reported-by: (e.g.
> syzbot), Fixes: $next-commit, some tag such as Addresses-Coverity: to credit the
> static analysis tool, and an SoB. After folding, all that's left might be a line
> as "include fix from $author" in the SoB area. This is a loss of
> metadata/attribution just due to folding, and might make contributors unhappy.
> Had they sent the fix after the original commit was mainline and immutable, all
> the info above would "survive" in the form of new commit.
>
> So I think we could decide what the proper format would be, and document it
> properly. I personally wouldn't mind just copy/pasting the whole commit message
> of the fix (with just a short issue description, no need to include stacktraces
> etc if the fix is folded), we could just standardize where, and how to delimit
> it from the main commit message. If it's a report (person or bot) of a bug that
> the main author then fixed, preserve the Reported-by in the same way (making
> clear it's not a Reported-By for the "main thing" addressed by the commit).
>
> In the debate one less verbose alternatve proposed was a SoB with comment
> describing it's for a fix and not whole patch, as some see SoB as the main mark
> of contribution, that can be easily found and counted etc. I'm not so sure about
> it myself, as AFAIK SoB is mainly a DCO thing, and for a maintainer it means
> something else ("passed through my tree") than for a patch author. And this
> approach would still lose the other tags.
>
> Thoughts?

How about a convention to add a Reported-by: and a Link: to the
incremental fixup discussion? It's just polite to credit helpful
feedback, not sure it needs a more formal process.

Along those lines, how is this situation different than the feedback
that helps improve a patch that does not necessarily get credited by
Reviewed-by:? Links to thank you notes in cover letters seems more
appealing than moving more review / fix logs into the main history.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
