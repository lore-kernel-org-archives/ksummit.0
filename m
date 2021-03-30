Return-Path: <SRS0=Xthy=I4=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE643C433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 30 Mar 2021 08:41:39 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EB996198A
	for <ksummit-discuss@archiver.kernel.org>; Tue, 30 Mar 2021 08:41:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EB996198A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C413C4043C;
	Tue, 30 Mar 2021 08:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zMfHGo5wO0Qt; Tue, 30 Mar 2021 08:41:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id D603840431;
	Tue, 30 Mar 2021 08:41:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8DF22C000B;
	Tue, 30 Mar 2021 08:41:36 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8ED32C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 08:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70514607BE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 08:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RwLyU4GI3SNB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 08:41:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48D186073A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 08:41:32 +0000 (UTC)
Received: from ip4d14bd53.dynamic.kabel-deutschland.de ([77.20.189.83]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lR9w8-0005Lf-Ss; Tue, 30 Mar 2021 10:41:20 +0200
To: Greg KH <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
 <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
 <87r1jxpol6.fsf@meer.lwn.net> <YGK+M66FWJOMC8ky@kroah.com>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <f32b5e5b-ed6b-cad5-08f6-b7923c621b74@leemhuis.info>
Date: Tue, 30 Mar 2021 10:41:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YGK+M66FWJOMC8ky@kroah.com>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1617093692;a3401da3;
X-HE-SMSGID: 1lR9w8-0005Lf-Ss
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 linux-doc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [1/5] reporting-issues: header and TLDR
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

On 30.03.21 07:59, Greg KH wrote:
> On Mon, Mar 29, 2021 at 04:44:21PM -0600, Jonathan Corbet wrote:
>> Thorsten Leemhuis <linux@leemhuis.info> writes:
>>
>>> FWIW, on another channel someone mentioned the process in the TLDR is
>>> quite complicated when it comes to regressions in stable and longterm
>>> kernels. I looked at the text and it seemed like a valid complaint, esp.
>>> as those regressions are something we really care about.
>>>
>>> To solve this properly I sadly had to shake up the text in this section
>>> completely and rewrite parts of it. Find the result below. I'm quite
>>> happy with it, as it afaics is more straight forward and easier to
>>> understand. And it matches the step-by-step guide better. And the best
>>> thing: it's a bit shorter than the old TLDR.
>>
>> I think this is much improved - concise is good! :)

Yeah, I was kinda unhappy with the old version myself and glad that
something made be revisit this...

>>  I really just have one little comment...

Great!

>>> I'll wait a day or two and then will send it through the regular review
>>> together with a few small other fixes that piled up for the text, just
>>> wanted to add it here for completeness.
>>>
>>> ---
>>> The short guide (aka TL;DR)
>>> ===========================
>>>
>>> Are you facing a regression with vanilla kernels from the same stable or
>>> longterm series? One still supported? Then search the `LKML
>>> <https://lore.kernel.org/lkml/>`_ and the `Linux stable mailing list
>>> <https://lore.kernel.org/stable/>_` archives for matching reports to
>>> join. If you don't find any, install `the latest release from that
>>> series <https://kernel.org/>`_. If it still shows the issue, report it
>>> to the stable mailing list and the stable maintainers.
>>
>> If we really want this to be a short guide that gets people to the
>> answer quickly, we might as well put the addresses to report to right
>> here rather than making people search for them.
> 
> "stable@vger.kernel.org" is good to use here, no need to also cc: any
> individuals for this type of thing.

Ahh, good to know, will change this accordingly. Will also change other
places in the text where this comes up.

Thx for the feedback! Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
