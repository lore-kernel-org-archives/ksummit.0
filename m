Return-Path: <SRS0=9Kf/=7Y=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49729C433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu, 11 Jun 2020 18:03:31 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD67020838
	for <ksummit-discuss@archiver.kernel.org>; Thu, 11 Jun 2020 18:03:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Tb4qXnR1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD67020838
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE77320493;
	Thu, 11 Jun 2020 18:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8C192+zpawI; Thu, 11 Jun 2020 18:03:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C5C21203BE;
	Thu, 11 Jun 2020 18:03:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 908E8C0865;
	Thu, 11 Jun 2020 18:03:26 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0DEBC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 18:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A846A88705
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 18:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tr3exLkWacji
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 18:03:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E65F0886EC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 18:03:23 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a137so6241595oii.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 11:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JycxGLE6SJCJ4XeYlrlthMxV5MU5nKoxAEQe24XeKBw=;
 b=Tb4qXnR1AzJIIaEGK5SzXs89Q7m+nuQuhu+jkl8hbsRLODkSFIX/N1He9EpTZGDvhu
 ysitR9mta3cjaZZVMceysNeG+4WoL9qJki6bf/lBuyirdkmzCCDWxANnv4if5ovI3oGo
 DizjxzVPsaugQPYGWJQx0vex6aKDoTXHAMmYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JycxGLE6SJCJ4XeYlrlthMxV5MU5nKoxAEQe24XeKBw=;
 b=BbUjA6aSjNC4T/cSIiGNSkGQ+cD0TEB/EOp+fhQO67W6DBD3lVd+7asZjJOq5IgU1E
 jxYQFbhR6ycSPNubRu6IU1dstqWYV/4n0Z4rcWFjGCV/m3KyJWSZjYGbR+BWWTENolwL
 Erion3/3BngSey5F0JweBUHfHABzZKoCaICRpz9XKazJSHjMyrszcgiceXLAnkhlYCT9
 0BEojDpnjVDh0uVZ35Xq9mTfJR0NBrqNHfpR3fFgCDw6KsXNsxPPVtzES4IS1EyKmHyb
 /YhWfmVdmeo6hTGLTxjNEyqxUc8g9b6+u5KHpVSTRpXlhOkmMiF8wezyqNpTMCXXI3Vs
 XUfg==
X-Gm-Message-State: AOAM531LLoKrj9/lse+tocMYdCG+O79bj0MZvZqHspyTEp68MK5LdPwI
 pH8G7vISQh1BtdXFT1Xzgfkg1zuc
X-Google-Smtp-Source: ABdhPJzlhGPXGIFcJAIPagZJiC/Hy330fuSHPClVTiIRh2p2tF+3i9NKUBFbF79tZggFX4mdWZoY+Q==
X-Received: by 2002:aca:7554:: with SMTP id q81mr7202681oic.61.1591898603066; 
 Thu, 11 Jun 2020 11:03:23 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id g51sm808861otg.17.2020.06.11.11.03.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 11:03:22 -0700 (PDT)
To: Linus Walleij <linus.walleij@linaro.org>, Jonathan Corbet <corbet@lwn.net>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
Date: Thu, 11 Jun 2020 12:03:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 6/11/20 8:48 AM, Linus Walleij wrote:
> On Tue, Jun 9, 2020 at 10:54 PM Jonathan Corbet <corbet@lwn.net> wrote:
> 
>> What are the next steps for kernel documentation?  What would we really
>> like our docs to look like, and how might we find the resources to get
>> them to that point?
> 
> We have a whole slew of quite basic introductory materials to the very
> fundamental kernel data structures that are scattered all over the planet
> and in the LWN kernel archive. All in often slightly dated variants.
> Examples:
> https://www.kernel.org/doc/gorman/html/understand/understand006.html
> http://vger.kernel.org/~davem/skb_data.html
> 
> I suppose technical writers could benefit from a global TODO list with
> this kind of subjects such as "document the basic arch interface",
> "document what an skb is", "document how the page directory works".
> 

I totally agree. A solid TODO list is necessary to channel efforts.

> Right now it is a mixture of read the code, "everybody knows how that
> works" and random sources on the Internet, which isn't very helpful
> to newcomers.
> 

Also true. I New comers are intimidated to ask questions in the first
place and they might not get responses. It boils down to bandwidth
more often than not. People that know the sub-systems well might not
have time to document and more importantly keeping the documents
updated.

> I second Vetters point to tie this documentation in tightly with the code
> implementing it even pretty substantial text chunks IMO, the idea can be
> attributed to Donald Knuth's book on literate programming from 1984,
> and while he was a bit enthusiastic the idea isn't bad at all.
> 

It definitely helps to that. I do see lots of calls without no comments
and usage information. For this to work, we have to give feedback during
the review process. This is necessary for commit logs as well.

I am interested in this topic as I help new developers and I often hear
the same concern that there aren't resources for them to learn and
understand kernel subsystems.

I have been reaching out to new contributors to kernel for the last
6 releases starting with Linux 5.1 asking

"What suggestions do you have for improving the materials and guidance
available to new contributors?"

The feedback always is request for updated information in kernel
documentation and online resources. I will be glad to share detailed
feedback if there is interest.

Addressing the need in providing kernel documentation could address
the need.

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
