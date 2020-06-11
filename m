Return-Path: <SRS0=9Kf/=7Y=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62162C433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu, 11 Jun 2020 19:44:54 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE68C207ED
	for <ksummit-discuss@archiver.kernel.org>; Thu, 11 Jun 2020 19:44:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="JwTG/Csq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE68C207ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB56188B00;
	Thu, 11 Jun 2020 19:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3797O0+B6Z2o; Thu, 11 Jun 2020 19:44:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E69FE88ADA;
	Thu, 11 Jun 2020 19:44:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B204DC0865;
	Thu, 11 Jun 2020 19:44:51 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A25B5C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 19:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8FF4788B00
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 19:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uaEg9opNn0gC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 19:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5AFBA88ADA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 19:44:48 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id k15so5494094otp.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 12:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uPfPM4DzHlbbrinAHBc/ViUBVx49HnDX8s72suEQnoc=;
 b=JwTG/CsqzKA7bg6sMmBCfiDuTAKMS/K3PAUH9JdVvVPOrNbcYT0s1R4gfIrIsJK6rn
 WmP8c00fnZVf3Yf1gdX4pgKpHbcJj9uzEXARopiJwwqLFWoGmZs/xQ9aKj2Htjtzkmn7
 5JVzyOOrTY1B+W/i4FGl0VnRlFDlr/Ewo5llc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uPfPM4DzHlbbrinAHBc/ViUBVx49HnDX8s72suEQnoc=;
 b=dg7tJgSbgGxmEdgjJRINpLme9vfMa+p+BlxoIF3et6bDuMufmlWqoIG1zV35oyspth
 Xva/VwfDkdHT9F2VaBYCTjE3hYSlstFYJkONd/3CT0DPJnqqLIhQd0sxQg4EOc/+QqvI
 IcpDoCZ/bsiOHPrORb0lBl7Zyx4y0/zeaoq5vFwfp2jhFQwRAGf93kQ3W7iWLuZk9Rvc
 /VdAhALiScCF5jPKc3ltYVQIH7ZFjwBl6EJe9iSd8lN4Zw6dBJ8lqBKatMYKcJdKT6eZ
 RE3enmI+Z86ais3b8Ugqju3KE9IvnANYKW4BHfJv+gXG/yWOpir9/OBGMb9KqS4hA6sb
 SwMA==
X-Gm-Message-State: AOAM532JwjMuH7kN3UasVaJC+scIzjyC+ZQRYrY1C4BPnU/phaXO52WP
 p9ydfrrYJE6TerFkVb/V97kSbv/S
X-Google-Smtp-Source: ABdhPJw0BhSVWaP9NNyofEQzvTeHhbRxYZqKZdjMdC5V4Rv96jPf0u/gYwCpNiXFzQRGBd4N/zqKdQ==
X-Received: by 2002:a9d:615d:: with SMTP id c29mr7868760otk.56.1591904687515; 
 Thu, 11 Jun 2020 12:44:47 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id z13sm866482ooa.28.2020.06.11.12.44.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 12:44:46 -0700 (PDT)
To: Joe Perches <joe@perches.com>, Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <eba85749-0db4-56f6-d61b-54ad061ef979@linuxfoundation.org>
Date: Thu, 11 Jun 2020 13:44:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
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

On 6/11/20 12:28 PM, Joe Perches wrote:
> On Thu, 2020-06-11 at 12:03 -0600, Shuah Khan wrote:
>> People that know the sub-systems well might not
>> have time to document and more importantly keeping the documents
>> updated.
> 
> So you somehow expect people that do _not_ know the
> sub-system well to produce good and useful documentation?
> 
> 

I didn't suggest anything like that. I merely mentioned that
lack of bandwidth is a reason for outdated documentation.

As for solutions, I am hoping one or two viable options will
bubble up as we talk about the issue on this thread and at
the kernel summit.

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
