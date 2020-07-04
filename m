Return-Path: <SRS0=o/nk=AP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82BC4C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 21:19:35 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C3552145D
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 21:19:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lixom-net.20150623.gappssmtp.com header.i=@lixom-net.20150623.gappssmtp.com header.b="xlH2+MLP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C3552145D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9FA987E96;
	Sat,  4 Jul 2020 21:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1amBCyAjtbZT; Sat,  4 Jul 2020 21:19:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32D0E87E0B;
	Sat,  4 Jul 2020 21:19:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 00B2FC088C;
	Sat,  4 Jul 2020 21:19:34 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 24CCEC0733
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat,  4 Jul 2020 21:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 13B9D87587
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat,  4 Jul 2020 21:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RU9PPs_gg1Nh
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat,  4 Jul 2020 21:19:31 +0000 (UTC)
X-Greylist: delayed 00:05:03 by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 74D868757C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat,  4 Jul 2020 21:19:31 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id f23so35693171iof.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 04 Jul 2020 14:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+PlPhdPEZXE1GD8L44azYzT0TFumqmAZNNi4Yg9UzMI=;
 b=xlH2+MLPbpFQoQW6QM3rv6isTJwA1UeMN+daOddsvlfmf+UxY9Q3IWkDp6O1S9Xjf2
 xcYe+B4CqfYATsootFWAeKgAvkkKAcuH0GYSKrr3FBlWGkI1UvWh5XYZrtoLLzeJ/Crs
 t9yFz9ZGFGzTU8+ZXWooSP2KwDVgf2PUjVhff4og80Q3AlWaI/zEWUtX2jMsZ+b+VPqA
 HZEf9lBoLDIpPpq2X4YtnoWnB9uJJP+BJmzCNxZ4kZS0KUYnD1UzGRuibNTFRoXgGMBp
 ltef48pyK+l7DAdHLIjW2RKie1SL74I1a/9Gej3+wCr4oRdnoqp5tJusIThbwBwraoHu
 sZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+PlPhdPEZXE1GD8L44azYzT0TFumqmAZNNi4Yg9UzMI=;
 b=DT83iYX/5/z+LcSNzkWgw+YXheSnsyXCR+ssrvNBJcPmsG+MVMxWln8pMbWrdAXhgq
 ouQtAVTcSBI0QuxR0bW8nv06sZJMkTDC1CXspwqaAuyJCjcuyiZ4Wxfqhv1IqIfsBRKE
 OoFAJfsap5xgtR7u6w0YiAl7h+AfS40HJ4ICW2l7KNPGN6PnqvX37j6ASQDUMl1WJ1AB
 VMbLgs/eZEUBqzzWxn/Azt/GynF8jUDg2W+BhwOzAehlz/ud9McobCmvRFMCZL5g7ZmF
 lrBdWT2VRsGSmJJDqi41ltxkZKdL3Zfqp+zRkdImZVzoAPKIThDPdGzZOr6dSa0WhC7V
 l0KQ==
X-Gm-Message-State: AOAM5316YbBbpE4dD4NpiOetggaVTEpKXy0Q+Q+8yIfb0G7rOwnKGezK
 0qAhKkSq0lUhdtXCi4gs71/u7xAmN1BttiyllgW3ko3AkRk=
X-Google-Smtp-Source: ABdhPJyigj0IhJ7b+Xv7cD3r6+A0IFgDsdmhNzSaAZnQpgz56QW9lkBxb8HgrhHNqtJSG45sc5Tfkq/IIsO5kAcgo/I=
X-Received: by 2002:a92:4184:: with SMTP id
 o126mr21892061ila.278.1593897267501; 
 Sat, 04 Jul 2020 14:14:27 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Olof Johansson <olof@lixom.net>
Date: Sat, 4 Jul 2020 14:14:16 -0700
Message-ID: <CAOesGMi6JoYvi87jrhXuaF6THmoJVzwbOxzGR8VV8JYeKdVOZg@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

On Sat, Jul 4, 2020 at 1:19 PM Dan Williams <dan.j.williams@intel.com> wrote:
>
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

I'm happy to support this, I agree with the general approach as well
as the motivations thereof.

At your discretion, feel free to add:

Signed-off-by: Olof Johansson <olof@lixom.net>

Or Acked-by, or whatever other label you prefer to use to show
agreement and support.


-Olof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
