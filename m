Return-Path: <SRS0=i5gH=7Z=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B72C433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 15:48:55 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 137602074B
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 15:48:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="dOYEOtHL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 137602074B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E6B987C05;
	Fri, 12 Jun 2020 15:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-JjEvmYhIsM; Fri, 12 Jun 2020 15:48:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DA0C87B87;
	Fri, 12 Jun 2020 15:48:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 710B8C0178;
	Fri, 12 Jun 2020 15:48:52 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72731C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 15:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 58042883B8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 15:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EtCehTJmoUIp
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 15:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75E7488337
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 15:48:47 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 69so7698829otv.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 08:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EY40X63Q4eOaU45UCcX+7ZB80uuzTCutEOeDF2oF7mM=;
 b=dOYEOtHLopOtTnMsAFTx71CDBarycn0gUzKozyibvO6drrgeptBKLMJ28QSNZey4e3
 FvHa7jl+lOBPSiz3OEcwX7+6sbipejs/OQVrK8hzZ0zIWgOuxqZNYzaDRY58M1mqUGq5
 TdqBg4I4+Wwak8JiUc3JoyXbzx2s/0C89PCpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EY40X63Q4eOaU45UCcX+7ZB80uuzTCutEOeDF2oF7mM=;
 b=E7EUmZGlnnsFYGjG8JCR8QWiXtFAMttz/S6taZqEi9Ysr+SI8QEJQecodMUptPcvXf
 6tHTkQRl3PP/xnAhQz705oN31vjMlyL3AXDfrmyV/dLiadGhmgcJcdNTqDx5y9fx64z/
 dnciiqxGn7IdtiF/glLEzOMOoePMDbAwkCl7U7+b0bZL1axF6f9yiszvgWuJlelAqhfP
 kjAsIhGXt5vmOwi03pRGKI72nejf7+mXI6iucTIxZGDAmFHugt8/qDwF2m5HddzWc/Rh
 xEYlezciC4asV/XNYuyIRSH9oShOeFiyPhN+L6Dfs/wZt6976jso+P92JbYjrxI2wWcp
 PElw==
X-Gm-Message-State: AOAM533pLnHe663cuDCseaIlEOCXv/7w0zC8C4RJqpqdX9CztX/PZBGY
 hFt0UCiBr6YzLm0n47g5f1SvzPsB
X-Google-Smtp-Source: ABdhPJwF3aiEQHCkldMhh8I5ThBHAhX4C/bI6y2o8KmP3EN00v72EWR/bF2CjAYbrZmPAb9BKlI5xQ==
X-Received: by 2002:a9d:1296:: with SMTP id g22mr12016887otg.102.1591976926521; 
 Fri, 12 Jun 2020 08:48:46 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id t8sm1422626oor.42.2020.06.12.08.48.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 08:48:45 -0700 (PDT)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <eba85749-0db4-56f6-d61b-54ad061ef979@linuxfoundation.org>
 <20200612081852.GC5957@pendragon.ideasonboard.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <2f8e4732-329f-d1ac-01bf-dc4cfc3eac49@linuxfoundation.org>
Date: Fri, 12 Jun 2020 09:48:43 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612081852.GC5957@pendragon.ideasonboard.com>
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

On 6/12/20 2:18 AM, Laurent Pinchart wrote:
> H Shuah,
> 
> On Thu, Jun 11, 2020 at 01:44:45PM -0600, Shuah Khan wrote:
>> On 6/11/20 12:28 PM, Joe Perches wrote:
>>> On Thu, 2020-06-11 at 12:03 -0600, Shuah Khan wrote:
>>>> People that know the sub-systems well might not
>>>> have time to document and more importantly keeping the documents
>>>> updated.
>>>
>>> So you somehow expect people that do _not_ know the
>>> sub-system well to produce good and useful documentation?
>>
>> I didn't suggest anything like that. I merely mentioned that
>> lack of bandwidth is a reason for outdated documentation.
> 
> I think it may be more of a priority issue than a bandwidth issue. Most
> subsystems have traditionally not put lots of effort in documenting
> designs and APIs, and very few of them, even today, enforce
> documentation rules.

First of all - thanks for a very detailed email.

+1. Yes priority is probably a bigger reason. We can make time for the
things we care about. In general documentation isn't fun for engineers
and also not as glamorous.

I don't disagree that some area of the kernel have
> little available bandwidth, we have some very small subsystems, or niche
> areas where only a handful of people would be able to understand what's
> going on (and if you ask me, that's a reason to have more documentation,
> not less :-)). We also have large subsystems where policies have been
> put in place over time to get developers to write documentation.

> I'm
> thinking about V4L2 or DRM for instance, where the former has extensive
> documentation of the userspace API, and the latter extensive
> documentation of the in-kernel API. I believe other subsystems could
> follow if maintainers considered lack of documentation to be a blocker
> on patch submission.
> 

Correct. Media subsystem does this very well and can be held up as an
example for good documentation mainly because media maintainers
emphasize and make it a priority. I have been well trained by to start
with documentation when I am doing media work. :)

I follow this for the driver I maintain and kselftest. The latter not
as successfully. It is harder to have a cohesive strategy for subsystem
or an area that is generic and have more people involved, unless
everybody is on board and agree that documentation is important.

> This would however leave some developers in an uncomfortable situation.
> While writing documentation is no fun for most of us, it gets much worse
> for developers who are less fluent in English. Learning how to write
> good documentation is hard enough without having to also learn a new
> language. I think this is a problem that needs to be addressed on its
> own.
> 

Yes. That is also correct. The way I address it depending on bandwidth
is working during the reviews to get get documentation right, when I
consider it very important to understand the patch and be able to
maintain it later.

> Another issue that I also believe is important is where to put the bar
> when it comes to documentation quality. I've reviewed many documentation
> patches where I wasn't completely happy with the proposal (as I'm prone
> to nit-picking during review I'll take blames here). Something that is
> clear to the author of the code won't be to someone who has less
> knowledge in that area, and more often that not patch authors don't
> write documentation from the point of view of the reader. This is
> something that can be learnt though, and I believe the kernel would
> benefit from involving more technical writers who could help reviewing
> documentation submissions and point out inconsistencies. There's a
> matter of budget there though, it may be difficult to attract technical
> writers who would help just for the fun of it.
> 

Right. I find myself in the same place as you. I end up asking for info.
which annoys people at times. I find documenting work is an important
step in the development process. I might be in the minority, however, at
times, as I am writing my commit log explaining what I am doing in a
patch in, I find a better way to fix a problem.

So I find it useful and I also use it as learning tool. When I attempt
document or explain a concept or an area, I get a deeper understanding
of that area. I would counter the argument that new developers can't
document an area, they can and the document can be reviewed by experts.
I have had some level of success adding documentation tasks in the
mentoring program. It does requires experts spending time reviewing to
make sure it is correct.

The larger problem goes back to, documentation isn't glamorous. It
isn't valued at the same level of code. If we collectively agree that
it is, then we can make it happen. We might sending a wrong message
by saying "Code walks ...". I understand what we mean by that we don't
want a long proposal and we would rather see code.

Maybe we can amend it to say "Code with good documentation walks ...".

The documentation in my mind includes:

commit logs
doc area at the top of functions declarations
API documentation

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
