Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DC28C433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 02:54:34 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C64D320885
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 02:54:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NiDqrpMf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C64D320885
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6212B886C4;
	Sun,  5 Jul 2020 02:54:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LoZxLpp7wLkT; Sun,  5 Jul 2020 02:54:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B800A8867D;
	Sun,  5 Jul 2020 02:54:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 846D3C0888;
	Sun,  5 Jul 2020 02:54:32 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B08A5C0733;
 Sun,  5 Jul 2020 02:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC86086D20;
 Sun,  5 Jul 2020 02:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BkuTgrw-Vfcj; Sun,  5 Jul 2020 02:54:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54C3F86CB3;
 Sun,  5 Jul 2020 02:54:30 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id b15so31653888edy.7;
 Sat, 04 Jul 2020 19:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dvqshmDN/tsxghSmW5OA1k02BKJNMJmYoR6UGK4L9Lg=;
 b=NiDqrpMf/AJsvghlpr+Lt8VZU0ifVzoi9xQN5xZ9wUxz12wjosKVh7dkVnC5Kz+rSv
 fDUhm8HZAeEiZ2dx8QgVZyiHKp3dEeqIGmJyaV1r5cQ9RkGWT1v9XYnZdMbdLWXa3T47
 lBlY6I8D9ySNLODit4mDwh6Vyxsm23NM9aUDMJZ1iXdX+UCI/KQ4WmQLYcBS6GH4qwxx
 AJcW4YV3cQRABe9qVGtqqEs80wfl9JeYpPwOS5EfMJom1CnNjteO7xuafuTFt9rkFAZ/
 BJVLVZcI7VeD8jzQnFDZ0fMYSQ4VTjB+Ihv+K662F0Sk7r1XoQJcoSc7vJFjiX3eFVdB
 y/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dvqshmDN/tsxghSmW5OA1k02BKJNMJmYoR6UGK4L9Lg=;
 b=NjDSjdYtjMMNVYBl6DJ0sNDFJR1kb5HragE+ytjfsFnTT5EyLn2qjZ0aYOb6jlxigj
 8A4ENg2FuylQV4Rz0icMzgwyd5iptehXHCX4JWqSqKJRr1/s7Ibl5DfWDORGkzRplWtO
 J+r5ogrgjnftjNTzA9zC6zepgtT7XTAYMqbuev3AI2oF0PcmuRjb2aFfliAekRxSzemU
 ZM8agHJyiR0CORAl2Y4wP/2JgqaaDiN4JC/PMRM2LKL1J7bJ4BrM1fup7udfZp2M2CKv
 WpwDz/vc79Yxgw7f6mSFN0kkpSum9oS/pJWwnducJlCH9PIV7nHmQO4iarTwkHxBW2CC
 MStg==
X-Gm-Message-State: AOAM532VCjFZ9pGUQCw6hXZ1mK/YWkRfdKV8YxurgVxDsnlGpA0DnbZz
 iZQIAq+HIp9YD4hhjVLi2/oQIkMrgvCmPV7l8fU=
X-Google-Smtp-Source: ABdhPJwsIgz43ZzWE+J2JD/Bh+9Jueukwp1CnUfHkq5hnTEl+gW/egfyKyE+uVLoskAeK4yKwxHQ6juZC9NEdeccJNw=
X-Received: by 2002:a05:6402:796:: with SMTP id
 d22mr50886256edy.78.1593917668742; 
 Sat, 04 Jul 2020 19:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
 <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
 <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
In-Reply-To: <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Sun, 5 Jul 2020 12:54:17 +1000
Message-ID: <CAPM=9txhJvp8dvJA7HWa=dEaTgKCzrNc5evof+z7ZW8+e=cKTQ@mail.gmail.com>
To: Matthew Wilcox <willy6545@gmail.com>
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

On Sun, 5 Jul 2020 at 10:10, Matthew Wilcox <willy6545@gmail.com> wrote:
>
> Erm, red-black trees don't have a derivation from gambling terminology either. The wikipedia article says:
>
> In a 1978 paper, "A Dichromatic Framework for Balanced Trees",[6] Leonidas J. Guibas and Robert Sedgewick derived the red-black tree from the symmetric binary B-tree.[7] The color "red" was chosen because it was the best-looking color produced by the color laser printer available to the authors while working at Xerox PARC.[8] Another response from Guibas states that it was because of the red and black pens available to them to draw the trees.[9]
>
> Left-right tree makes no sense. It doesn't distinguish the rbtree from its predecessor the avl tree.  I don't think it's helpful to rename a standard piece of computing terminology unless it's actually hurting us to have it. Obviously if it were called a "master-slave" tree, I would be in favour of renaming it.

As I said "it means nothing if you've never interacted with gambling
culture," red black in the context of the trees as zero meaning other
than as a name to find it on the internet, Search for that name enough
and you will undoubtedly be getting ads for online roulette sites
within hours, if you have a problem gambling past, this might not be
the desired effect you'd want.

The reasons something was named a particular thing can and will be
different from what a societal context for them means now, and I
believe it's more important to worry about current societal contexts
than legacy historical namings. I'm not seriously suggesting we rename
red-black trees, but if someone who had a problematic gambling
background had issues with them I'd definitely be open for considering
it.

Dave.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
