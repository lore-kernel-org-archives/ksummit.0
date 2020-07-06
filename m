Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C585AC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 11:15:48 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 955E92073E
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 11:15:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uyc7LAqj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 955E92073E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50379874C1;
	Mon,  6 Jul 2020 11:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z3RwZ5W4-OYn; Mon,  6 Jul 2020 11:15:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1440987432;
	Mon,  6 Jul 2020 11:15:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8B95C0893;
	Mon,  6 Jul 2020 11:15:45 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E0389C016F;
 Mon,  6 Jul 2020 11:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D700522225;
 Mon,  6 Jul 2020 11:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id in4UCxrPA26y; Mon,  6 Jul 2020 11:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id DCCB721FA8;
 Mon,  6 Jul 2020 11:15:43 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id a1so41902786ejg.12;
 Mon, 06 Jul 2020 04:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OyfaboQiLD7e60Rt0fpF2g5A7vePJGkRXKorLr5zFEw=;
 b=Uyc7LAqj/fGeUowhfHf3Zh7ykH1nK9ZzLsVFlmMsOwTy/b7WhE2yLMKtIg+UsXdWmw
 Lk5Y/x9fp9gIUmQDoy083MUEGZv0+84b2V44Qe654U9g7apPddmh5xaB+NkiZ6CMD3lw
 RhRZl1KzDxC/vALP2lMU6+JEC/550g02B0HlfZ/yaDkYWn5itmd3KPlZ32oTQuOthgsg
 nDBoKlhR1ek526WlxY6Z+UgUnxD4PVTTJUEwmonngmXV0eeUWWU9HEVs6qKkts3Se8FG
 2I4mUQP93DlWLwoMIHjaZjXObLaCR4cgMdN9zTh/QTM/zXS/e/7QDDQu35b0T4sDJNK6
 yEGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OyfaboQiLD7e60Rt0fpF2g5A7vePJGkRXKorLr5zFEw=;
 b=MsTTw3VuBtdqY3+tADBHpJ4V932bb9RTV/O1HrTMmKdYcMxjdQ+/XRvBbkFisZYLqI
 RbZXSfXsFklIXs1B/lPl/F7Dzkyy/+KrWzDMMJpEQ+KF14Q9PIjCvESMEE5jd82o6dYV
 opoOJ7JPhvGNrm0ZJ1fwOXTInqki1elrlq8LdPoUtCle8mc45coUl8VjNFGYkoPalZgm
 ZGuH35ssmg14GWrknw5ajmm2jCUi9mdBWNDCjdUfu9UsLkLoIb2hMt/5bFu8MOgfgfeI
 BQ4iciKrFU7TCqs1UtAydofvfpSjNvDT3lUnOPWPdusUytcppIp/riaDUDqFjnXOi3m/
 54+Q==
X-Gm-Message-State: AOAM5304vsbQGCDxHOVuwgFrSkKGITr4z1w2FO0pt+CX5pMRk14NXJjt
 fztALe3gJVdgt6Q+p+xZCZM=
X-Google-Smtp-Source: ABdhPJw94tFJtTSl2W6ES4QpwV4udsVsb5UYSoR/ZLQz/kL9wfqqXK1RfjTuif6Y6mo+rSyLBe2w8A==
X-Received: by 2002:a17:906:958f:: with SMTP id
 r15mr31228363ejx.77.1594034142283; 
 Mon, 06 Jul 2020 04:15:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21?
 ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
 by smtp.gmail.com with ESMTPSA id s1sm23168755edy.1.2020.07.06.04.15.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 04:15:41 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>, Matthew Wilcox <willy6545@gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
 <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
 <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
 <202007041804.B5E229E2B6@keescook>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8c0c1050-3beb-86f6-f184-4687acffd61d@gmail.com>
Date: Mon, 6 Jul 2020 13:15:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202007041804.B5E229E2B6@keescook>
Content-Language: en-US
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, expensivestephen@hotmail.com,
 Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
 Inclusive Terminology
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

On 7/5/20 3:10 AM, Kees Cook wrote:
> On Sat, Jul 04, 2020 at 08:10:33PM -0400, Matthew Wilcox wrote:
>> Left-right tree makes no sense. It doesn't distinguish the rbtree from its
>> predecessor the avl tree.  I don't think it's helpful to rename a standard
>> piece of computing terminology unless it's actually hurting us to have it.
>> Obviously if it were called a "master-slave" tree, I would be in favour of
>> renaming it.
> 
> (No one has suggested renaming red/black trees, so I think the
> slippery-slope argument can be set aside here.)
> 
> As for the actual proposal on white/black-list, I've always been annoyed
> by the poor description it provides (and I get to see it A LOT being
> the seccomp maintainer). I welcome allow/deny-list (though the change is
> not new for seccomp -- the man pages were updated last year (thanks
> mkerrisk). :)

Actually, the manual pages are ahead of the game only thanks to
a nice presentation last year @OSS from Stephen Kenigbolo :-).


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
