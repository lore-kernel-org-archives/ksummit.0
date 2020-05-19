Return-Path: <SRS0=ltwh=7B=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B553C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue, 19 May 2020 02:42:48 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0DC54207D4
	for <ksummit-discuss@archiver.kernel.org>; Tue, 19 May 2020 02:42:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TyN3fwQY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0DC54207D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 668F7881B7;
	Tue, 19 May 2020 02:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NIXb1Wyh5hgJ; Tue, 19 May 2020 02:42:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91CCD881A0;
	Tue, 19 May 2020 02:42:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5DCB8C0881;
	Tue, 19 May 2020 02:42:46 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 159D6C07FF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 19 May 2020 02:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08AE62046B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 19 May 2020 02:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSFde2zzLl8t
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 19 May 2020 02:42:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 113EF20410
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 19 May 2020 02:42:44 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id m11so13024402qka.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 18 May 2020 19:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=U6Xm3GnoqR0tpClTO7SpHed1i/YnCxeBR83QTeBjH5w=;
 b=TyN3fwQYnU+Dwo8xe0D/vAHeluXcrypp1uA51YR3B0OfOem8rTzbQIza2kpxxt2IcM
 /yEGR4RH/SsUlrEivGxv8Uxv7cMBwNuNdz56Ng9RbV4DYzMaseThSGinSMfsb85+FTEs
 V/5UP8QXY7yZ/akLatVtOmrKMiEoQzadLVPz431Z46z2/2JxGhluxNCDSzbF56pwMbPB
 D+NlN6HtEsqNVjkZBViW/S+A6WU+TdQIm8z8QDMUMdTNJCamfRuvoIv8BFkWRHpNGR3y
 IaxSfHGqd06Ry/Sdgn+i7jKKQnlLehh2lBLVotED4ZJSB+f8hq5LbcSoMLmBPeYGYPy4
 FCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U6Xm3GnoqR0tpClTO7SpHed1i/YnCxeBR83QTeBjH5w=;
 b=TZb3gTPMBoHLLsH6KXvgisLIJmTgvOxX1Oxe+wk0Yp+dJsMq641eOHcF5enwc+uokZ
 Qqad8HOYRWHGKQqWpmbg8HxmfaHzjEiaBVAw1IeVy8yiVegK/zkuSRJNsViAm4G4rltp
 X4SScw1M3CYZGOOmX2rP+8KlyMdOJXi9a2tRTcjh1lryGDQVBO1oi7OFWhUp/5Fz6dD6
 L+oPJjI8FUjMXsmAAyc93VOXHgG+9jSSINzvkM4KY3WnXSfBjts75olrP5SnpjPffjVU
 PvCvB2vZJgyQgDddxuqPjk8m80JRpp1r30k+PqvV7aZOyTeP6m1RCKAHmh+0/kbL2VBi
 fYEw==
X-Gm-Message-State: AOAM5306Gmsy6kO0PKBbgWfjiS/Z2SWK3oXGh8Tg/PPiKjAXySD11rAH
 5XoH5IUh4DeqtFCrsYYOGP7FV3FG6l0=
X-Google-Smtp-Source: ABdhPJxSSS8W3iLnS90DuVUU/Jz9BPbjPv78lK61LgKurZyrLKvj9B4ytczfzFOWnlrkxwp//7xZ+w==
X-Received: by 2002:a37:634f:: with SMTP id x76mr18977189qkb.194.1589856162718; 
 Mon, 18 May 2020 19:42:42 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id g5sm9385835qkl.114.2020.05.18.19.42.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 19:42:42 -0700 (PDT)
To: "Theodore Y. Ts'o" <tytso@mit.edu>, linux-kernel@vger.kernel.org,
 inux-fsdevel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org,
 linux-block@vger.kernel.org, "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
References: <20200515163956.GA2158595@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <ab983c87-b5e5-8060-251d-d57acd35ffe7@gmail.com>
Date: Mon, 18 May 2020 21:42:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200515163956.GA2158595@mit.edu>
Content-Language: en-US
Subject: Re: [Ksummit-discuss] Maintainers / Kernel Summit 2020 planning
	kick-off
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

+ ksummit-discuss@lists.linuxfoundation.org

On 5/15/20 11:39 AM, Theodore Y. Ts'o wrote:
> [ Feel free to forward this to other Linux kernel mailing lists as
>   appropriate -- Ted ]

Hi Ted,

Can you please add ksummit-discuss@lists.linuxfoundation.org to future
related emails?

Thanks,

Frank

> 
> This year, the Maintainers and Kernel Summit will NOT be held in
> Halifax, August 25 -- 28th, as a result of the COVID-19 pandemic.
> Instead, we will be pursuing a virtual conference format for both the
> Maintainers and Kernel Summit, around the last week of August.
> 
> As in previous years, the Maintainers Summit is invite-only, where the
> primary focus will be process issues around Linux Kernel Development.
> It will be limited to 30 invitees and a handful of sponsored
> attendees.
> 
> The Kernel Summit is organized as a track which is run in parallel
> with the other tracks at the Linux Plumbers Conference (LPC), and is
> open to all registered attendees of LPC.
> 
> Linus will be generating a core list of people to be invited to the
> Maintainers Summit.  The top ten people from that list will receive
> invites, and then program committee will use the rest of Linus's list
> as a starting point of people to be considered.  People who suggest
> topics that should be discussed at the Maintainers Summit will also
> be added to the list for consideration.  To make topic suggestions for
> the Maintainers Summit, please send e-mail to the
> ksummit-discuss@lists.linuxfoundation.org list with a subject prefix
> of [MAINTAINERS SUMMIT].
> 
> The other job of the program committee will be to organize the program
> for the Kernel Summit.  The goal of the Kernel Summit track will be to
> provide a forum to discuss specific technical issues that would be
> easier to resolve in person than over e-mail.  The program committee
> will also consider "information sharing" topics if they are clearly of
> interest to the wider development community (i.e., advanced training
> in topics that would be useful to kernel developers).
> 
> To suggest a topic for the Kernel Summit, please do two things.
> First, please tag your e-mail with [TECH TOPIC].  As before, please
> use a separate e-mail for each topic, and send the topic suggestions
> to the ksummit-discuss list.
> 
> Secondly, please create a topic at the Linux Plumbers Conference
> proposal submission site and target it to the Kernel Summit track.
> For your convenience you can use:
> 
> 	https://bit.ly/lpc20-submit
> 
> Please do both steps.  I'll try to notice if someone forgets one or
> the other, but your chances of making sure your proposal gets the
> necessary attention and consideration are maximized by submitting both
> to the mailing list and the web site.
> 
> People who submit topic suggestions before June 15th and which are
> accepted, will be given free admission to the Linux Plumbers
> Conference.
> 
> We will be reserving roughly half of the Kernel Summit slots for
> last-minute discussions that will be scheduled during the week of
> Plumbers, in an "unconference style".  This allows last-minute ideas
> that come up to be given given slots for discussion.
> 
> If you were not subscribed on to the kernel-discuss mailing list from
> last year (or if you had removed yourself after the kernel summit),
> you can subscribe to the discuss list using mailman:
> 
>    https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
> The program committee this year is composed of the following people:
> 
> Greg Kroah-Hartman
> Jens Axboe
> Jon Corbet
> Ted Ts'o
> Thomas Gleixner
> 

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
